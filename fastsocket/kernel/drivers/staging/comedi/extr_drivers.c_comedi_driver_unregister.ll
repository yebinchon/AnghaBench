; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_drivers.c_comedi_driver_unregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_drivers.c_comedi_driver_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_driver = type { %struct.comedi_driver* }
%struct.comedi_device_file_info = type { %struct.comedi_device* }
%struct.comedi_device = type { i32, i64, %struct.comedi_driver*, i64 }

@COMEDI_NUM_BOARD_MINORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"BUG! detaching device with use_count=%d\0A\00", align 1
@comedi_drivers = common dso_local global %struct.comedi_driver* null, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @comedi_driver_unregister(%struct.comedi_driver* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comedi_driver*, align 8
  %4 = alloca %struct.comedi_driver*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device_file_info*, align 8
  %7 = alloca %struct.comedi_device*, align 8
  store %struct.comedi_driver* %0, %struct.comedi_driver** %3, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %52, %1
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @COMEDI_NUM_BOARD_MINORS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %55

12:                                               ; preds = %8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.comedi_device_file_info* @comedi_get_device_file_info(i32 %13)
  store %struct.comedi_device_file_info* %14, %struct.comedi_device_file_info** %6, align 8
  %15 = load %struct.comedi_device_file_info*, %struct.comedi_device_file_info** %6, align 8
  %16 = icmp eq %struct.comedi_device_file_info* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %52

18:                                               ; preds = %12
  %19 = load %struct.comedi_device_file_info*, %struct.comedi_device_file_info** %6, align 8
  %20 = getelementptr inbounds %struct.comedi_device_file_info, %struct.comedi_device_file_info* %19, i32 0, i32 0
  %21 = load %struct.comedi_device*, %struct.comedi_device** %20, align 8
  store %struct.comedi_device* %21, %struct.comedi_device** %7, align 8
  %22 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %23 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %18
  %30 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 2
  %32 = load %struct.comedi_driver*, %struct.comedi_driver** %31, align 8
  %33 = load %struct.comedi_driver*, %struct.comedi_driver** %3, align 8
  %34 = icmp eq %struct.comedi_driver* %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %29
  %36 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %37 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %42 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %43)
  br label %45

45:                                               ; preds = %40, %35
  %46 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %47 = call i32 @comedi_device_detach(%struct.comedi_device* %46)
  br label %48

48:                                               ; preds = %45, %29, %18
  %49 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %50 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  br label %52

52:                                               ; preds = %48, %17
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %8

55:                                               ; preds = %8
  %56 = load %struct.comedi_driver*, %struct.comedi_driver** @comedi_drivers, align 8
  %57 = load %struct.comedi_driver*, %struct.comedi_driver** %3, align 8
  %58 = icmp eq %struct.comedi_driver* %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load %struct.comedi_driver*, %struct.comedi_driver** %3, align 8
  %61 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %60, i32 0, i32 0
  %62 = load %struct.comedi_driver*, %struct.comedi_driver** %61, align 8
  store %struct.comedi_driver* %62, %struct.comedi_driver** @comedi_drivers, align 8
  store i32 0, i32* %2, align 4
  br label %90

63:                                               ; preds = %55
  %64 = load %struct.comedi_driver*, %struct.comedi_driver** @comedi_drivers, align 8
  store %struct.comedi_driver* %64, %struct.comedi_driver** %4, align 8
  br label %65

65:                                               ; preds = %83, %63
  %66 = load %struct.comedi_driver*, %struct.comedi_driver** %4, align 8
  %67 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %66, i32 0, i32 0
  %68 = load %struct.comedi_driver*, %struct.comedi_driver** %67, align 8
  %69 = icmp ne %struct.comedi_driver* %68, null
  br i1 %69, label %70, label %87

70:                                               ; preds = %65
  %71 = load %struct.comedi_driver*, %struct.comedi_driver** %4, align 8
  %72 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %71, i32 0, i32 0
  %73 = load %struct.comedi_driver*, %struct.comedi_driver** %72, align 8
  %74 = load %struct.comedi_driver*, %struct.comedi_driver** %3, align 8
  %75 = icmp eq %struct.comedi_driver* %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load %struct.comedi_driver*, %struct.comedi_driver** %3, align 8
  %78 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %77, i32 0, i32 0
  %79 = load %struct.comedi_driver*, %struct.comedi_driver** %78, align 8
  %80 = load %struct.comedi_driver*, %struct.comedi_driver** %4, align 8
  %81 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %80, i32 0, i32 0
  store %struct.comedi_driver* %79, %struct.comedi_driver** %81, align 8
  store i32 0, i32* %2, align 4
  br label %90

82:                                               ; preds = %70
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.comedi_driver*, %struct.comedi_driver** %4, align 8
  %85 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %84, i32 0, i32 0
  %86 = load %struct.comedi_driver*, %struct.comedi_driver** %85, align 8
  store %struct.comedi_driver* %86, %struct.comedi_driver** %4, align 8
  br label %65

87:                                               ; preds = %65
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %87, %76, %59
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.comedi_device_file_info* @comedi_get_device_file_info(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @printk(i8*, i64) #1

declare dso_local i32 @comedi_device_detach(%struct.comedi_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
