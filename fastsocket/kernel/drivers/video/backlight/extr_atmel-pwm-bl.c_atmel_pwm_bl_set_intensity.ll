; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_atmel-pwm-bl.c_atmel_pwm_bl_set_intensity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_atmel-pwm-bl.c_atmel_pwm_bl_set_intensity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i64 }
%struct.atmel_pwm_bl = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i64 }

@FB_BLANK_UNBLANK = common dso_local global i64 0, align 8
@PWM_CUPD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @atmel_pwm_bl_set_intensity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_pwm_bl_set_intensity(%struct.backlight_device* %0) #0 {
  %2 = alloca %struct.backlight_device*, align 8
  %3 = alloca %struct.atmel_pwm_bl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %2, align 8
  %6 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %7 = call %struct.atmel_pwm_bl* @bl_get_data(%struct.backlight_device* %6)
  store %struct.atmel_pwm_bl* %7, %struct.atmel_pwm_bl** %3, align 8
  %8 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %9 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %13 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @FB_BLANK_UNBLANK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %18, %1
  %20 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %21 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @FB_BLANK_UNBLANK, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %26, %19
  %28 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %3, align 8
  %29 = getelementptr inbounds %struct.atmel_pwm_bl, %struct.atmel_pwm_bl* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %27
  %35 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %3, align 8
  %36 = getelementptr inbounds %struct.atmel_pwm_bl, %struct.atmel_pwm_bl* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %39, %40
  store i32 %41, i32* %5, align 4
  br label %50

42:                                               ; preds = %27
  %43 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %3, align 8
  %44 = getelementptr inbounds %struct.atmel_pwm_bl, %struct.atmel_pwm_bl* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %4, align 4
  %49 = sub nsw i32 %47, %48
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %42, %34
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %3, align 8
  %53 = getelementptr inbounds %struct.atmel_pwm_bl, %struct.atmel_pwm_bl* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp sgt i32 %51, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %50
  %59 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %3, align 8
  %60 = getelementptr inbounds %struct.atmel_pwm_bl, %struct.atmel_pwm_bl* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %58, %50
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %3, align 8
  %67 = getelementptr inbounds %struct.atmel_pwm_bl, %struct.atmel_pwm_bl* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %65, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %64
  %73 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %3, align 8
  %74 = getelementptr inbounds %struct.atmel_pwm_bl, %struct.atmel_pwm_bl* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %72, %64
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %106, label %81

81:                                               ; preds = %78
  %82 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %3, align 8
  %83 = getelementptr inbounds %struct.atmel_pwm_bl, %struct.atmel_pwm_bl* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, -1
  br i1 %85, label %86, label %97

86:                                               ; preds = %81
  %87 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %3, align 8
  %88 = getelementptr inbounds %struct.atmel_pwm_bl, %struct.atmel_pwm_bl* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %3, align 8
  %91 = getelementptr inbounds %struct.atmel_pwm_bl, %struct.atmel_pwm_bl* %90, i32 0, i32 1
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = xor i32 0, %94
  %96 = call i32 @gpio_set_value(i32 %89, i32 %95)
  br label %97

97:                                               ; preds = %86, %81
  %98 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %3, align 8
  %99 = getelementptr inbounds %struct.atmel_pwm_bl, %struct.atmel_pwm_bl* %98, i32 0, i32 2
  %100 = load i32, i32* @PWM_CUPD, align 4
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @pwm_channel_writel(i32* %99, i32 %100, i32 %101)
  %103 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %3, align 8
  %104 = getelementptr inbounds %struct.atmel_pwm_bl, %struct.atmel_pwm_bl* %103, i32 0, i32 2
  %105 = call i32 @pwm_channel_disable(i32* %104)
  br label %131

106:                                              ; preds = %78
  %107 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %3, align 8
  %108 = getelementptr inbounds %struct.atmel_pwm_bl, %struct.atmel_pwm_bl* %107, i32 0, i32 2
  %109 = call i32 @pwm_channel_enable(i32* %108)
  %110 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %3, align 8
  %111 = getelementptr inbounds %struct.atmel_pwm_bl, %struct.atmel_pwm_bl* %110, i32 0, i32 2
  %112 = load i32, i32* @PWM_CUPD, align 4
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @pwm_channel_writel(i32* %111, i32 %112, i32 %113)
  %115 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %3, align 8
  %116 = getelementptr inbounds %struct.atmel_pwm_bl, %struct.atmel_pwm_bl* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, -1
  br i1 %118, label %119, label %130

119:                                              ; preds = %106
  %120 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %3, align 8
  %121 = getelementptr inbounds %struct.atmel_pwm_bl, %struct.atmel_pwm_bl* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %3, align 8
  %124 = getelementptr inbounds %struct.atmel_pwm_bl, %struct.atmel_pwm_bl* %123, i32 0, i32 1
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = xor i32 1, %127
  %129 = call i32 @gpio_set_value(i32 %122, i32 %128)
  br label %130

130:                                              ; preds = %119, %106
  br label %131

131:                                              ; preds = %130, %97
  ret i32 0
}

declare dso_local %struct.atmel_pwm_bl* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @pwm_channel_writel(i32*, i32, i32) #1

declare dso_local i32 @pwm_channel_disable(i32*) #1

declare dso_local i32 @pwm_channel_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
