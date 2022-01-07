; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_da903x_bl.c_da903x_backlight_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_da903x_bl.c_da903x_backlight_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { i32 }
%struct.da903x_backlight_data = type { i32, i32, %struct.device* }
%struct.device = type { i32 }

@DA9034_WLED_CONTROL1 = common dso_local global i32 0, align 4
@DA9034_WLED_CONTROL2 = common dso_local global i32 0, align 4
@DA9034_WLED_BOOST_EN = common dso_local global i32 0, align 4
@DA9030_WLED_CP_EN = common dso_local global i32 0, align 4
@DA9030_WLED_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*, i32)* @da903x_backlight_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da903x_backlight_set(%struct.backlight_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.backlight_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.da903x_backlight_data*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %11 = call %struct.da903x_backlight_data* @bl_get_data(%struct.backlight_device* %10)
  store %struct.da903x_backlight_data* %11, %struct.da903x_backlight_data** %6, align 8
  %12 = load %struct.da903x_backlight_data*, %struct.da903x_backlight_data** %6, align 8
  %13 = getelementptr inbounds %struct.da903x_backlight_data, %struct.da903x_backlight_data* %12, i32 0, i32 2
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %7, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.da903x_backlight_data*, %struct.da903x_backlight_data** %6, align 8
  %16 = getelementptr inbounds %struct.da903x_backlight_data, %struct.da903x_backlight_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %70 [
    i32 128, label %18
    i32 129, label %54
  ]

18:                                               ; preds = %2
  %19 = load %struct.device*, %struct.device** %7, align 8
  %20 = load i32, i32* @DA9034_WLED_CONTROL1, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @da903x_update(%struct.device* %19, i32 %20, i32 %21, i32 127)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %3, align 4
  br label %79

27:                                               ; preds = %18
  %28 = load %struct.da903x_backlight_data*, %struct.da903x_backlight_data** %6, align 8
  %29 = getelementptr inbounds %struct.da903x_backlight_data, %struct.da903x_backlight_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load %struct.device*, %struct.device** %7, align 8
  %37 = load i32, i32* @DA9034_WLED_CONTROL2, align 4
  %38 = load i32, i32* @DA9034_WLED_BOOST_EN, align 4
  %39 = call i32 @da903x_clr_bits(%struct.device* %36, i32 %37, i32 %38)
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %35, %32, %27
  %41 = load %struct.da903x_backlight_data*, %struct.da903x_backlight_data** %6, align 8
  %42 = getelementptr inbounds %struct.da903x_backlight_data, %struct.da903x_backlight_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load %struct.device*, %struct.device** %7, align 8
  %50 = load i32, i32* @DA9034_WLED_CONTROL2, align 4
  %51 = load i32, i32* @DA9034_WLED_BOOST_EN, align 4
  %52 = call i32 @da903x_set_bits(%struct.device* %49, i32 %50, i32 %51)
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %48, %45, %40
  br label %70

54:                                               ; preds = %2
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @DA9030_WLED_TRIM(i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @DA9030_WLED_CP_EN, align 4
  br label %62

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %59
  %63 = phi i32 [ %60, %59 ], [ 0, %61 ]
  %64 = load i32, i32* %8, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %8, align 4
  %66 = load %struct.device*, %struct.device** %7, align 8
  %67 = load i32, i32* @DA9030_WLED_CONTROL, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @da903x_write(%struct.device* %66, i32 %67, i32 %68)
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %2, %62, %53
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %3, align 4
  br label %79

75:                                               ; preds = %70
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.da903x_backlight_data*, %struct.da903x_backlight_data** %6, align 8
  %78 = getelementptr inbounds %struct.da903x_backlight_data, %struct.da903x_backlight_data* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %75, %73, %25
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.da903x_backlight_data* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @da903x_update(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @da903x_clr_bits(%struct.device*, i32, i32) #1

declare dso_local i32 @da903x_set_bits(%struct.device*, i32, i32) #1

declare dso_local i32 @DA9030_WLED_TRIM(i32) #1

declare dso_local i32 @da903x_write(%struct.device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
