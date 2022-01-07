; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_select.c_do_pollfd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_select.c_do_pollfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.file = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.file*, %struct.TYPE_6__*)* }

@POLLNVAL = common dso_local global i32 0, align 4
@DEFAULT_POLLMASK = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pollfd*, %struct.TYPE_6__*)* @do_pollfd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_pollfd(%struct.pollfd* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.pollfd*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  store %struct.pollfd* %0, %struct.pollfd** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.pollfd*, %struct.pollfd** %3, align 8
  %10 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %69

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.file* @fget_light(i32 %15, i32* %7)
  store %struct.file* %16, %struct.file** %8, align 8
  %17 = load i32, i32* @POLLNVAL, align 4
  store i32 %17, i32* %5, align 4
  %18 = load %struct.file*, %struct.file** %8, align 8
  %19 = icmp ne %struct.file* %18, null
  br i1 %19, label %20, label %68

20:                                               ; preds = %14
  %21 = load i32, i32* @DEFAULT_POLLMASK, align 4
  store i32 %21, i32* %5, align 4
  %22 = load %struct.file*, %struct.file** %8, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = icmp ne %struct.TYPE_5__* %24, null
  br i1 %25, label %26, label %55

26:                                               ; preds = %20
  %27 = load %struct.file*, %struct.file** %8, align 8
  %28 = getelementptr inbounds %struct.file, %struct.file* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32 (%struct.file*, %struct.TYPE_6__*)*, i32 (%struct.file*, %struct.TYPE_6__*)** %30, align 8
  %32 = icmp ne i32 (%struct.file*, %struct.TYPE_6__*)* %31, null
  br i1 %32, label %33, label %55

33:                                               ; preds = %26
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = icmp ne %struct.TYPE_6__* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load %struct.pollfd*, %struct.pollfd** %3, align 8
  %38 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @POLLERR, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @POLLHUP, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %36, %33
  %47 = load %struct.file*, %struct.file** %8, align 8
  %48 = getelementptr inbounds %struct.file, %struct.file* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32 (%struct.file*, %struct.TYPE_6__*)*, i32 (%struct.file*, %struct.TYPE_6__*)** %50, align 8
  %52 = load %struct.file*, %struct.file** %8, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %54 = call i32 %51(%struct.file* %52, %struct.TYPE_6__* %53)
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %46, %26, %20
  %56 = load %struct.pollfd*, %struct.pollfd** %3, align 8
  %57 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @POLLERR, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @POLLHUP, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* %5, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %5, align 4
  %65 = load %struct.file*, %struct.file** %8, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @fput_light(%struct.file* %65, i32 %66)
  br label %68

68:                                               ; preds = %55, %14
  br label %69

69:                                               ; preds = %68, %2
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.pollfd*, %struct.pollfd** %3, align 8
  %72 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local %struct.file* @fget_light(i32, i32*) #1

declare dso_local i32 @fput_light(%struct.file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
