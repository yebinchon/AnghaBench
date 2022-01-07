; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_atmel-pwm-bl.c_atmel_pwm_bl_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_atmel-pwm-bl.c_atmel_pwm_bl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.atmel_pwm_bl_platform_data* }
%struct.atmel_pwm_bl_platform_data = type { i64, i64, i64, i64, i32, i32, i32 }
%struct.backlight_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.atmel_pwm_bl = type { i32, i32, %struct.backlight_device*, %struct.atmel_pwm_bl_platform_data*, %struct.platform_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"gpio_atmel_pwm_bl\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"atmel-pwm-bl\00", align 1
@atmel_pwm_bl_ops = common dso_local global i32 0, align 4
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @atmel_pwm_bl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_pwm_bl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.atmel_pwm_bl_platform_data*, align 8
  %5 = alloca %struct.backlight_device*, align 8
  %6 = alloca %struct.atmel_pwm_bl*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.atmel_pwm_bl* @kzalloc(i32 32, i32 %8)
  store %struct.atmel_pwm_bl* %9, %struct.atmel_pwm_bl** %6, align 8
  %10 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %6, align 8
  %11 = icmp ne %struct.atmel_pwm_bl* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %171

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %6, align 8
  %18 = getelementptr inbounds %struct.atmel_pwm_bl, %struct.atmel_pwm_bl* %17, i32 0, i32 4
  store %struct.platform_device* %16, %struct.platform_device** %18, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.atmel_pwm_bl_platform_data*, %struct.atmel_pwm_bl_platform_data** %21, align 8
  store %struct.atmel_pwm_bl_platform_data* %22, %struct.atmel_pwm_bl_platform_data** %4, align 8
  %23 = load %struct.atmel_pwm_bl_platform_data*, %struct.atmel_pwm_bl_platform_data** %4, align 8
  %24 = icmp ne %struct.atmel_pwm_bl_platform_data* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %15
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %167

28:                                               ; preds = %15
  %29 = load %struct.atmel_pwm_bl_platform_data*, %struct.atmel_pwm_bl_platform_data** %4, align 8
  %30 = getelementptr inbounds %struct.atmel_pwm_bl_platform_data, %struct.atmel_pwm_bl_platform_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.atmel_pwm_bl_platform_data*, %struct.atmel_pwm_bl_platform_data** %4, align 8
  %33 = getelementptr inbounds %struct.atmel_pwm_bl_platform_data, %struct.atmel_pwm_bl_platform_data* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %31, %34
  br i1 %35, label %49, label %36

36:                                               ; preds = %28
  %37 = load %struct.atmel_pwm_bl_platform_data*, %struct.atmel_pwm_bl_platform_data** %4, align 8
  %38 = getelementptr inbounds %struct.atmel_pwm_bl_platform_data, %struct.atmel_pwm_bl_platform_data* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.atmel_pwm_bl_platform_data*, %struct.atmel_pwm_bl_platform_data** %4, align 8
  %41 = getelementptr inbounds %struct.atmel_pwm_bl_platform_data, %struct.atmel_pwm_bl_platform_data* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %39, %42
  br i1 %43, label %49, label %44

44:                                               ; preds = %36
  %45 = load %struct.atmel_pwm_bl_platform_data*, %struct.atmel_pwm_bl_platform_data** %4, align 8
  %46 = getelementptr inbounds %struct.atmel_pwm_bl_platform_data, %struct.atmel_pwm_bl_platform_data* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44, %36, %28
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  br label %167

52:                                               ; preds = %44
  %53 = load %struct.atmel_pwm_bl_platform_data*, %struct.atmel_pwm_bl_platform_data** %4, align 8
  %54 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %6, align 8
  %55 = getelementptr inbounds %struct.atmel_pwm_bl, %struct.atmel_pwm_bl* %54, i32 0, i32 3
  store %struct.atmel_pwm_bl_platform_data* %53, %struct.atmel_pwm_bl_platform_data** %55, align 8
  %56 = load %struct.atmel_pwm_bl_platform_data*, %struct.atmel_pwm_bl_platform_data** %4, align 8
  %57 = getelementptr inbounds %struct.atmel_pwm_bl_platform_data, %struct.atmel_pwm_bl_platform_data* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %6, align 8
  %60 = getelementptr inbounds %struct.atmel_pwm_bl, %struct.atmel_pwm_bl* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.atmel_pwm_bl_platform_data*, %struct.atmel_pwm_bl_platform_data** %4, align 8
  %62 = getelementptr inbounds %struct.atmel_pwm_bl_platform_data, %struct.atmel_pwm_bl_platform_data* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %6, align 8
  %65 = getelementptr inbounds %struct.atmel_pwm_bl, %struct.atmel_pwm_bl* %64, i32 0, i32 1
  %66 = call i32 @pwm_channel_alloc(i32 %63, i32* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %52
  br label %167

70:                                               ; preds = %52
  %71 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %6, align 8
  %72 = getelementptr inbounds %struct.atmel_pwm_bl, %struct.atmel_pwm_bl* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, -1
  br i1 %74, label %75, label %98

75:                                               ; preds = %70
  %76 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %6, align 8
  %77 = getelementptr inbounds %struct.atmel_pwm_bl, %struct.atmel_pwm_bl* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @gpio_request(i32 %78, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  %83 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %6, align 8
  %84 = getelementptr inbounds %struct.atmel_pwm_bl, %struct.atmel_pwm_bl* %83, i32 0, i32 0
  store i32 -1, i32* %84, align 8
  br label %163

85:                                               ; preds = %75
  %86 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %6, align 8
  %87 = getelementptr inbounds %struct.atmel_pwm_bl, %struct.atmel_pwm_bl* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.atmel_pwm_bl_platform_data*, %struct.atmel_pwm_bl_platform_data** %4, align 8
  %90 = getelementptr inbounds %struct.atmel_pwm_bl_platform_data, %struct.atmel_pwm_bl_platform_data* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = xor i32 0, %91
  %93 = call i32 @gpio_direction_output(i32 %88, i32 %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %85
  br label %152

97:                                               ; preds = %85
  br label %98

98:                                               ; preds = %97, %70
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 0
  %101 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %6, align 8
  %102 = call %struct.backlight_device* @backlight_device_register(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_4__* %100, %struct.atmel_pwm_bl* %101, i32* @atmel_pwm_bl_ops)
  store %struct.backlight_device* %102, %struct.backlight_device** %5, align 8
  %103 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %104 = call i64 @IS_ERR(%struct.backlight_device* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %98
  %107 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %108 = call i32 @PTR_ERR(%struct.backlight_device* %107)
  store i32 %108, i32* %7, align 4
  br label %152

109:                                              ; preds = %98
  %110 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %111 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %6, align 8
  %112 = getelementptr inbounds %struct.atmel_pwm_bl, %struct.atmel_pwm_bl* %111, i32 0, i32 2
  store %struct.backlight_device* %110, %struct.backlight_device** %112, align 8
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %6, align 8
  %115 = call i32 @platform_set_drvdata(%struct.platform_device* %113, %struct.atmel_pwm_bl* %114)
  %116 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %117 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %118 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 2
  store i32 %116, i32* %119, align 4
  %120 = load %struct.atmel_pwm_bl_platform_data*, %struct.atmel_pwm_bl_platform_data** %4, align 8
  %121 = getelementptr inbounds %struct.atmel_pwm_bl_platform_data, %struct.atmel_pwm_bl_platform_data* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.atmel_pwm_bl_platform_data*, %struct.atmel_pwm_bl_platform_data** %4, align 8
  %124 = getelementptr inbounds %struct.atmel_pwm_bl_platform_data, %struct.atmel_pwm_bl_platform_data* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = sub nsw i64 %122, %125
  %127 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %128 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  store i64 %126, i64* %129, align 8
  %130 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %131 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = sdiv i64 %133, 2
  %135 = trunc i64 %134 to i32
  %136 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %137 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 1
  store i32 %135, i32* %138, align 8
  %139 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %6, align 8
  %140 = call i32 @atmel_pwm_bl_init_pwm(%struct.atmel_pwm_bl* %139)
  store i32 %140, i32* %7, align 4
  %141 = load i32, i32* %7, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %109
  br label %147

144:                                              ; preds = %109
  %145 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %146 = call i32 @atmel_pwm_bl_set_intensity(%struct.backlight_device* %145)
  store i32 0, i32* %2, align 4
  br label %171

147:                                              ; preds = %143
  %148 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %149 = call i32 @platform_set_drvdata(%struct.platform_device* %148, %struct.atmel_pwm_bl* null)
  %150 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %151 = call i32 @backlight_device_unregister(%struct.backlight_device* %150)
  br label %152

152:                                              ; preds = %147, %106, %96
  %153 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %6, align 8
  %154 = getelementptr inbounds %struct.atmel_pwm_bl, %struct.atmel_pwm_bl* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %155, -1
  br i1 %156, label %157, label %162

157:                                              ; preds = %152
  %158 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %6, align 8
  %159 = getelementptr inbounds %struct.atmel_pwm_bl, %struct.atmel_pwm_bl* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @gpio_free(i32 %160)
  br label %162

162:                                              ; preds = %157, %152
  br label %163

163:                                              ; preds = %162, %82
  %164 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %6, align 8
  %165 = getelementptr inbounds %struct.atmel_pwm_bl, %struct.atmel_pwm_bl* %164, i32 0, i32 1
  %166 = call i32 @pwm_channel_free(i32* %165)
  br label %167

167:                                              ; preds = %163, %69, %49, %25
  %168 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %6, align 8
  %169 = call i32 @kfree(%struct.atmel_pwm_bl* %168)
  %170 = load i32, i32* %7, align 4
  store i32 %170, i32* %2, align 4
  br label %171

171:                                              ; preds = %167, %144, %12
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local %struct.atmel_pwm_bl* @kzalloc(i32, i32) #1

declare dso_local i32 @pwm_channel_alloc(i32, i32*) #1

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local %struct.backlight_device* @backlight_device_register(i8*, %struct.TYPE_4__*, %struct.atmel_pwm_bl*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.backlight_device*) #1

declare dso_local i32 @PTR_ERR(%struct.backlight_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.atmel_pwm_bl*) #1

declare dso_local i32 @atmel_pwm_bl_init_pwm(%struct.atmel_pwm_bl*) #1

declare dso_local i32 @atmel_pwm_bl_set_intensity(%struct.backlight_device*) #1

declare dso_local i32 @backlight_device_unregister(%struct.backlight_device*) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @pwm_channel_free(i32*) #1

declare dso_local i32 @kfree(%struct.atmel_pwm_bl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
