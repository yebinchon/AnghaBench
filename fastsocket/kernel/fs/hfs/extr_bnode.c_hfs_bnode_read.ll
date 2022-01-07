; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_bnode.c_hfs_bnode_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_bnode.c_hfs_bnode_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfs_bnode = type { %struct.page**, i64 }
%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfs_bnode_read(%struct.hfs_bnode* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hfs_bnode*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  store %struct.hfs_bnode* %0, %struct.hfs_bnode** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %11 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %14, %12
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %7, align 4
  %17 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %18 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %17, i32 0, i32 0
  %19 = load %struct.page**, %struct.page*** %18, align 8
  %20 = getelementptr inbounds %struct.page*, %struct.page** %19, i64 0
  %21 = load %struct.page*, %struct.page** %20, align 8
  store %struct.page* %21, %struct.page** %9, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.page*, %struct.page** %9, align 8
  %24 = call i64 @kmap(%struct.page* %23)
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @memcpy(i8* %22, i64 %27, i32 %28)
  %30 = load %struct.page*, %struct.page** %9, align 8
  %31 = call i32 @kunmap(%struct.page* %30)
  ret void
}

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i64 @kmap(%struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
