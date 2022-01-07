; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dtree.c_read_index_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dtree.c_read_index_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.metapage = type { i32 }
%struct.inode = type { i32 }

@PSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.metapage* (%struct.inode*, i64)* @read_index_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.metapage* @read_index_page(%struct.inode* %0, i64 %1) #0 {
  %3 = alloca %struct.metapage*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @xtLookup(%struct.inode* %10, i64 %11, i32 1, i32* %8, i64* %7, i32* %9, i32 1)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i64, i64* %7, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %2
  store %struct.metapage* null, %struct.metapage** %3, align 8
  br label %24

19:                                               ; preds = %15
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i32, i32* @PSIZE, align 4
  %23 = call %struct.metapage* @read_metapage(%struct.inode* %20, i64 %21, i32 %22, i32 1)
  store %struct.metapage* %23, %struct.metapage** %3, align 8
  br label %24

24:                                               ; preds = %19, %18
  %25 = load %struct.metapage*, %struct.metapage** %3, align 8
  ret %struct.metapage* %25
}

declare dso_local i32 @xtLookup(%struct.inode*, i64, i32, i32*, i64*, i32*, i32) #1

declare dso_local %struct.metapage* @read_metapage(%struct.inode*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
