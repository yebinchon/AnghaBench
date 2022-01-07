; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_dma-debug.c_driver_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_dma-debug.c_driver_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_driver = type { i64 }
%struct.device = type { %struct.device_driver* }

@current_driver_name = common dso_local global i32* null, align 8
@current_driver = common dso_local global %struct.device_driver* null, align 8
@driver_name_lock = common dso_local global i32 0, align 4
@NAME_MAX_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @driver_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @driver_filter(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device_driver*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load i32*, i32** @current_driver_name, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @likely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %74

16:                                               ; preds = %1
  %17 = load %struct.device_driver*, %struct.device_driver** @current_driver, align 8
  %18 = icmp ne %struct.device_driver* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = icmp ne %struct.device* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load %struct.device*, %struct.device** %3, align 8
  %24 = getelementptr inbounds %struct.device, %struct.device* %23, i32 0, i32 0
  %25 = load %struct.device_driver*, %struct.device_driver** %24, align 8
  %26 = load %struct.device_driver*, %struct.device_driver** @current_driver, align 8
  %27 = icmp eq %struct.device_driver* %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 1, i32* %2, align 4
  br label %74

29:                                               ; preds = %22, %19, %16
  %30 = load %struct.device*, %struct.device** %3, align 8
  %31 = icmp ne %struct.device* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %74

33:                                               ; preds = %29
  %34 = load %struct.device_driver*, %struct.device_driver** @current_driver, align 8
  %35 = icmp ne %struct.device_driver* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = load i32*, i32** @current_driver_name, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36, %33
  store i32 0, i32* %2, align 4
  br label %74

42:                                               ; preds = %36
  %43 = load %struct.device*, %struct.device** %3, align 8
  %44 = getelementptr inbounds %struct.device, %struct.device* %43, i32 0, i32 0
  %45 = load %struct.device_driver*, %struct.device_driver** %44, align 8
  %46 = call %struct.device_driver* @get_driver(%struct.device_driver* %45)
  store %struct.device_driver* %46, %struct.device_driver** %4, align 8
  %47 = load %struct.device_driver*, %struct.device_driver** %4, align 8
  %48 = icmp ne %struct.device_driver* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %74

50:                                               ; preds = %42
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @read_lock_irqsave(i32* @driver_name_lock, i64 %51)
  store i32 0, i32* %6, align 4
  %53 = load %struct.device_driver*, %struct.device_driver** %4, align 8
  %54 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %50
  %58 = load i32*, i32** @current_driver_name, align 8
  %59 = load %struct.device_driver*, %struct.device_driver** %4, align 8
  %60 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @NAME_MAX_LEN, align 8
  %63 = sub nsw i64 %62, 1
  %64 = call i64 @strncmp(i32* %58, i64 %61, i64 %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = load %struct.device_driver*, %struct.device_driver** %4, align 8
  store %struct.device_driver* %67, %struct.device_driver** @current_driver, align 8
  store i32 1, i32* %6, align 4
  br label %68

68:                                               ; preds = %66, %57, %50
  %69 = load i64, i64* %5, align 8
  %70 = call i32 @read_unlock_irqrestore(i32* @driver_name_lock, i64 %69)
  %71 = load %struct.device_driver*, %struct.device_driver** %4, align 8
  %72 = call i32 @put_driver(%struct.device_driver* %71)
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %68, %49, %41, %32, %28, %15
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.device_driver* @get_driver(%struct.device_driver*) #1

declare dso_local i32 @read_lock_irqsave(i32*, i64) #1

declare dso_local i64 @strncmp(i32*, i64, i64) #1

declare dso_local i32 @read_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @put_driver(%struct.device_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
