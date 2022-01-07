; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_convert_fuse_file_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_convert_fuse_file_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_file_lock = type { i32, i32, i32, i32 }
%struct.file_lock = type { i32, i32, i32, i32 }

@OFFSET_MAX = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fuse_file_lock*, %struct.file_lock*)* @convert_fuse_file_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_fuse_file_lock(%struct.fuse_file_lock* %0, %struct.file_lock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fuse_file_lock*, align 8
  %5 = alloca %struct.file_lock*, align 8
  store %struct.fuse_file_lock* %0, %struct.fuse_file_lock** %4, align 8
  store %struct.file_lock* %1, %struct.file_lock** %5, align 8
  %6 = load %struct.fuse_file_lock*, %struct.fuse_file_lock** %4, align 8
  %7 = getelementptr inbounds %struct.fuse_file_lock, %struct.fuse_file_lock* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %49 [
    i32 129, label %9
    i32 130, label %10
    i32 128, label %10
  ]

9:                                                ; preds = %2
  br label %52

10:                                               ; preds = %2, %2
  %11 = load %struct.fuse_file_lock*, %struct.fuse_file_lock** %4, align 8
  %12 = getelementptr inbounds %struct.fuse_file_lock, %struct.fuse_file_lock* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @OFFSET_MAX, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %30, label %16

16:                                               ; preds = %10
  %17 = load %struct.fuse_file_lock*, %struct.fuse_file_lock** %4, align 8
  %18 = getelementptr inbounds %struct.fuse_file_lock, %struct.fuse_file_lock* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @OFFSET_MAX, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %30, label %22

22:                                               ; preds = %16
  %23 = load %struct.fuse_file_lock*, %struct.fuse_file_lock** %4, align 8
  %24 = getelementptr inbounds %struct.fuse_file_lock, %struct.fuse_file_lock* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.fuse_file_lock*, %struct.fuse_file_lock** %4, align 8
  %27 = getelementptr inbounds %struct.fuse_file_lock, %struct.fuse_file_lock* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %22, %16, %10
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %58

33:                                               ; preds = %22
  %34 = load %struct.fuse_file_lock*, %struct.fuse_file_lock** %4, align 8
  %35 = getelementptr inbounds %struct.fuse_file_lock, %struct.fuse_file_lock* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %38 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load %struct.fuse_file_lock*, %struct.fuse_file_lock** %4, align 8
  %40 = getelementptr inbounds %struct.fuse_file_lock, %struct.fuse_file_lock* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %43 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.fuse_file_lock*, %struct.fuse_file_lock** %4, align 8
  %45 = getelementptr inbounds %struct.fuse_file_lock, %struct.fuse_file_lock* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %48 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %52

49:                                               ; preds = %2
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %58

52:                                               ; preds = %33, %9
  %53 = load %struct.fuse_file_lock*, %struct.fuse_file_lock** %4, align 8
  %54 = getelementptr inbounds %struct.fuse_file_lock, %struct.fuse_file_lock* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %57 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %52, %49, %30
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
