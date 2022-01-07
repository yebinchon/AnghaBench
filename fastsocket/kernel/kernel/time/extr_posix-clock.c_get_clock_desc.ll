; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_posix-clock.c_get_clock_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_posix-clock.c_get_clock_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_clock_desc = type { i64, %struct.file* }
%struct.file = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@posix_clock_open = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.posix_clock_desc*)* @get_clock_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_clock_desc(i32 %0, %struct.posix_clock_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.posix_clock_desc*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.posix_clock_desc* %1, %struct.posix_clock_desc** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @CLOCKID_TO_FD(i32 %8)
  %10 = call %struct.file* @fget(i32 %9)
  store %struct.file* %10, %struct.file** %6, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.file*, %struct.file** %6, align 8
  %14 = icmp ne %struct.file* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %57

17:                                               ; preds = %2
  %18 = load %struct.file*, %struct.file** %6, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @posix_clock_open, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %17
  %26 = load %struct.file*, %struct.file** %6, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %17
  br label %49

31:                                               ; preds = %25
  %32 = load %struct.file*, %struct.file** %6, align 8
  %33 = load %struct.posix_clock_desc*, %struct.posix_clock_desc** %5, align 8
  %34 = getelementptr inbounds %struct.posix_clock_desc, %struct.posix_clock_desc* %33, i32 0, i32 1
  store %struct.file* %32, %struct.file** %34, align 8
  %35 = load %struct.file*, %struct.file** %6, align 8
  %36 = call i64 @get_posix_clock(%struct.file* %35)
  %37 = load %struct.posix_clock_desc*, %struct.posix_clock_desc** %5, align 8
  %38 = getelementptr inbounds %struct.posix_clock_desc, %struct.posix_clock_desc* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.posix_clock_desc*, %struct.posix_clock_desc** %5, align 8
  %40 = getelementptr inbounds %struct.posix_clock_desc, %struct.posix_clock_desc* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  br label %47

44:                                               ; preds = %31
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  br label %47

47:                                               ; preds = %44, %43
  %48 = phi i32 [ 0, %43 ], [ %46, %44 ]
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %47, %30
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load %struct.file*, %struct.file** %6, align 8
  %54 = call i32 @fput(%struct.file* %53)
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %15
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.file* @fget(i32) #1

declare dso_local i32 @CLOCKID_TO_FD(i32) #1

declare dso_local i64 @get_posix_clock(%struct.file*) #1

declare dso_local i32 @fput(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
