; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_wm831x_bl.c_wm831x_backlight_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_wm831x_bl.c_wm831x_backlight_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.wm831x_pdata* }
%struct.wm831x_pdata = type { %struct.wm831x_backlight_pdata* }
%struct.wm831x_backlight_pdata = type { i64, i32 }
%struct.wm831x = type { i32 }
%struct.wm831x_backlight_data = type { i32, i64, %struct.wm831x* }
%struct.backlight_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"No platform data supplied\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WM831X_ISINK_MAX_ISEL = common dso_local global i32 0, align 4
@wm831x_isinkv_values = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Invalid max_uA: %duA\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Maximum current is %duA not %duA as requested\0A\00", align 1
@WM831X_CURRENT_SINK_1 = common dso_local global i32 0, align 4
@WM831X_CURRENT_SINK_2 = common dso_local global i32 0, align 4
@WM831X_DC4_FBSRC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"Invalid ISINK %d\0A\00", align 1
@WM831X_DC4_CONTROL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"wm831x\00", align 1
@wm831x_backlight_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"failed to register backlight\0A\00", align 1
@WM831X_DCDC_ENABLE = common dso_local global i32 0, align 4
@WM831X_DC4_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm831x_backlight_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_backlight_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.wm831x*, align 8
  %5 = alloca %struct.wm831x_pdata*, align 8
  %6 = alloca %struct.wm831x_backlight_pdata*, align 8
  %7 = alloca %struct.wm831x_backlight_data*, align 8
  %8 = alloca %struct.backlight_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = call %struct.wm831x* @dev_get_drvdata(%struct.TYPE_8__* %17)
  store %struct.wm831x* %18, %struct.wm831x** %4, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %23, align 8
  %25 = icmp ne %struct.wm831x_pdata* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %1
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %31, align 8
  store %struct.wm831x_pdata* %32, %struct.wm831x_pdata** %5, align 8
  %33 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %5, align 8
  %34 = getelementptr inbounds %struct.wm831x_pdata, %struct.wm831x_pdata* %33, i32 0, i32 0
  %35 = load %struct.wm831x_backlight_pdata*, %struct.wm831x_backlight_pdata** %34, align 8
  store %struct.wm831x_backlight_pdata* %35, %struct.wm831x_backlight_pdata** %6, align 8
  br label %37

36:                                               ; preds = %1
  store %struct.wm831x_backlight_pdata* null, %struct.wm831x_backlight_pdata** %6, align 8
  br label %37

37:                                               ; preds = %36, %26
  %38 = load %struct.wm831x_backlight_pdata*, %struct.wm831x_backlight_pdata** %6, align 8
  %39 = icmp ne %struct.wm831x_backlight_pdata* %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %189

46:                                               ; preds = %37
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %63, %46
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @WM831X_ISINK_MAX_ISEL, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = load i64*, i64** @wm831x_isinkv_values, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.wm831x_backlight_pdata*, %struct.wm831x_backlight_pdata** %6, align 8
  %58 = getelementptr inbounds %struct.wm831x_backlight_pdata, %struct.wm831x_backlight_pdata* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  br label %66

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %10, align 4
  br label %47

66:                                               ; preds = %61, %47
  %67 = load i32, i32* %10, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = load %struct.wm831x_backlight_pdata*, %struct.wm831x_backlight_pdata** %6, align 8
  %73 = getelementptr inbounds %struct.wm831x_backlight_pdata, %struct.wm831x_backlight_pdata* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %71, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %74)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %189

78:                                               ; preds = %66
  %79 = load i32, i32* %10, align 4
  %80 = sub nsw i32 %79, 1
  store i32 %80, i32* %11, align 4
  %81 = load %struct.wm831x_backlight_pdata*, %struct.wm831x_backlight_pdata** %6, align 8
  %82 = getelementptr inbounds %struct.wm831x_backlight_pdata, %struct.wm831x_backlight_pdata* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64*, i64** @wm831x_isinkv_values, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %83, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %78
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 0
  %93 = load i64*, i64** @wm831x_isinkv_values, align 8
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.wm831x_backlight_pdata*, %struct.wm831x_backlight_pdata** %6, align 8
  %99 = getelementptr inbounds %struct.wm831x_backlight_pdata, %struct.wm831x_backlight_pdata* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @dev_warn(%struct.TYPE_7__* %92, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %97, i64 %100)
  br label %102

102:                                              ; preds = %90, %78
  %103 = load %struct.wm831x_backlight_pdata*, %struct.wm831x_backlight_pdata** %6, align 8
  %104 = getelementptr inbounds %struct.wm831x_backlight_pdata, %struct.wm831x_backlight_pdata* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  switch i32 %105, label %111 [
    i32 1, label %106
    i32 2, label %108
  ]

106:                                              ; preds = %102
  %107 = load i32, i32* @WM831X_CURRENT_SINK_1, align 4
  store i32 %107, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %120

108:                                              ; preds = %102
  %109 = load i32, i32* @WM831X_CURRENT_SINK_2, align 4
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* @WM831X_DC4_FBSRC, align 4
  store i32 %110, i32* %13, align 4
  br label %120

111:                                              ; preds = %102
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 0
  %114 = load %struct.wm831x_backlight_pdata*, %struct.wm831x_backlight_pdata** %6, align 8
  %115 = getelementptr inbounds %struct.wm831x_backlight_pdata, %struct.wm831x_backlight_pdata* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %113, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %2, align 4
  br label %189

120:                                              ; preds = %108, %106
  %121 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %122 = call i32 @wm831x_reg_unlock(%struct.wm831x* %121)
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %9, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = load i32, i32* %9, align 4
  store i32 %126, i32* %2, align 4
  br label %189

127:                                              ; preds = %120
  %128 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %129 = load i32, i32* @WM831X_DC4_CONTROL, align 4
  %130 = load i32, i32* @WM831X_DC4_FBSRC, align 4
  %131 = load i32, i32* %13, align 4
  %132 = call i32 @wm831x_set_bits(%struct.wm831x* %128, i32 %129, i32 %130, i32 %131)
  store i32 %132, i32* %9, align 4
  %133 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %134 = call i32 @wm831x_reg_lock(%struct.wm831x* %133)
  %135 = load i32, i32* %9, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %127
  %138 = load i32, i32* %9, align 4
  store i32 %138, i32* %2, align 4
  br label %189

139:                                              ; preds = %127
  %140 = load i32, i32* @GFP_KERNEL, align 4
  %141 = call %struct.wm831x_backlight_data* @kzalloc(i32 24, i32 %140)
  store %struct.wm831x_backlight_data* %141, %struct.wm831x_backlight_data** %7, align 8
  %142 = load %struct.wm831x_backlight_data*, %struct.wm831x_backlight_data** %7, align 8
  %143 = icmp eq %struct.wm831x_backlight_data* %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = load i32, i32* @ENOMEM, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %2, align 4
  br label %189

147:                                              ; preds = %139
  %148 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %149 = load %struct.wm831x_backlight_data*, %struct.wm831x_backlight_data** %7, align 8
  %150 = getelementptr inbounds %struct.wm831x_backlight_data, %struct.wm831x_backlight_data* %149, i32 0, i32 2
  store %struct.wm831x* %148, %struct.wm831x** %150, align 8
  %151 = load %struct.wm831x_backlight_data*, %struct.wm831x_backlight_data** %7, align 8
  %152 = getelementptr inbounds %struct.wm831x_backlight_data, %struct.wm831x_backlight_data* %151, i32 0, i32 1
  store i64 0, i64* %152, align 8
  %153 = load i32, i32* %12, align 4
  %154 = load %struct.wm831x_backlight_data*, %struct.wm831x_backlight_data** %7, align 8
  %155 = getelementptr inbounds %struct.wm831x_backlight_data, %struct.wm831x_backlight_data* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  %156 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %157 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %156, i32 0, i32 0
  %158 = load %struct.wm831x_backlight_data*, %struct.wm831x_backlight_data** %7, align 8
  %159 = call %struct.backlight_device* @backlight_device_register(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_7__* %157, %struct.wm831x_backlight_data* %158, i32* @wm831x_backlight_ops)
  store %struct.backlight_device* %159, %struct.backlight_device** %8, align 8
  %160 = load %struct.backlight_device*, %struct.backlight_device** %8, align 8
  %161 = call i64 @IS_ERR(%struct.backlight_device* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %147
  %164 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %165 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %164, i32 0, i32 0
  %166 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %165, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %167 = load %struct.wm831x_backlight_data*, %struct.wm831x_backlight_data** %7, align 8
  %168 = call i32 @kfree(%struct.wm831x_backlight_data* %167)
  %169 = load %struct.backlight_device*, %struct.backlight_device** %8, align 8
  %170 = call i32 @PTR_ERR(%struct.backlight_device* %169)
  store i32 %170, i32* %2, align 4
  br label %189

171:                                              ; preds = %147
  %172 = load i32, i32* %11, align 4
  %173 = load %struct.backlight_device*, %struct.backlight_device** %8, align 8
  %174 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  store i32 %172, i32* %175, align 4
  %176 = load i32, i32* %11, align 4
  %177 = load %struct.backlight_device*, %struct.backlight_device** %8, align 8
  %178 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 1
  store i32 %176, i32* %179, align 4
  %180 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %181 = load %struct.backlight_device*, %struct.backlight_device** %8, align 8
  %182 = call i32 @platform_set_drvdata(%struct.platform_device* %180, %struct.backlight_device* %181)
  %183 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %184 = load i32, i32* @WM831X_DCDC_ENABLE, align 4
  %185 = load i32, i32* @WM831X_DC4_ENA, align 4
  %186 = call i32 @wm831x_set_bits(%struct.wm831x* %183, i32 %184, i32 %185, i32 0)
  %187 = load %struct.backlight_device*, %struct.backlight_device** %8, align 8
  %188 = call i32 @backlight_update_status(%struct.backlight_device* %187)
  store i32 0, i32* %2, align 4
  br label %189

189:                                              ; preds = %171, %163, %144, %137, %125, %111, %69, %40
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local %struct.wm831x* @dev_get_drvdata(%struct.TYPE_8__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local i32 @dev_warn(%struct.TYPE_7__*, i8*, i64, i64) #1

declare dso_local i32 @wm831x_reg_unlock(%struct.wm831x*) #1

declare dso_local i32 @wm831x_set_bits(%struct.wm831x*, i32, i32, i32) #1

declare dso_local i32 @wm831x_reg_lock(%struct.wm831x*) #1

declare dso_local %struct.wm831x_backlight_data* @kzalloc(i32, i32) #1

declare dso_local %struct.backlight_device* @backlight_device_register(i8*, %struct.TYPE_7__*, %struct.wm831x_backlight_data*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.backlight_device*) #1

declare dso_local i32 @kfree(%struct.wm831x_backlight_data*) #1

declare dso_local i32 @PTR_ERR(%struct.backlight_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.backlight_device*) #1

declare dso_local i32 @backlight_update_status(%struct.backlight_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
