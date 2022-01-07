; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_imap.c_diIAGRead.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_imap.c_diIAGRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inomap = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.metapage = type { i32 }
%struct.TYPE_2__ = type { i32 }

@PSIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inomap*, i32, %struct.metapage**)* @diIAGRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diIAGRead(%struct.inomap* %0, i32 %1, %struct.metapage** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inomap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.metapage**, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  store %struct.inomap* %0, %struct.inomap** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.metapage** %2, %struct.metapage*** %7, align 8
  %10 = load %struct.inomap*, %struct.inomap** %5, align 8
  %11 = getelementptr inbounds %struct.inomap, %struct.inomap* %10, i32 0, i32 0
  %12 = load %struct.inode*, %struct.inode** %11, align 8
  store %struct.inode* %12, %struct.inode** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.inode*, %struct.inode** %8, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_2__* @JFS_SBI(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @IAGTOLBLK(i32 %13, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.inode*, %struct.inode** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @PSIZE, align 4
  %24 = call %struct.metapage* @read_metapage(%struct.inode* %21, i32 %22, i32 %23, i32 0)
  %25 = load %struct.metapage**, %struct.metapage*** %7, align 8
  store %struct.metapage* %24, %struct.metapage** %25, align 8
  %26 = load %struct.metapage**, %struct.metapage*** %7, align 8
  %27 = load %struct.metapage*, %struct.metapage** %26, align 8
  %28 = icmp eq %struct.metapage* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %33

32:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @IAGTOLBLK(i32, i32) #1

declare dso_local %struct.TYPE_2__* @JFS_SBI(i32) #1

declare dso_local %struct.metapage* @read_metapage(%struct.inode*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
