; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_radeon_backlight.c_radeonfb_bl_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_radeon_backlight.c_radeonfb_bl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeonfb_info = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.backlight_device*, i32 }
%struct.backlight_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i64 }
%struct.radeon_bl_privdata = type { i32, %struct.radeonfb_info* }

@MT_LCD = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"radeonfb: Memory allocation failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"radeonbl%d\00", align 1
@radeon_bl_data = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"radeonfb: Backlight registration failed\0A\00", align 1
@CHIP_FAMILY_RV200 = common dso_local global i64 0, align 8
@CHIP_FAMILY_RV250 = common dso_local global i64 0, align 8
@CHIP_FAMILY_RV280 = common dso_local global i64 0, align 8
@CHIP_FAMILY_RV350 = common dso_local global i64 0, align 8
@FB_BACKLIGHT_MAX = common dso_local global i32 0, align 4
@MAX_RADEON_LEVEL = common dso_local global i32 0, align 4
@FB_BACKLIGHT_LEVELS = common dso_local global i64 0, align 8
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"radeonfb: Backlight initialized (%s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeonfb_bl_init(%struct.radeonfb_info* %0) #0 {
  %2 = alloca %struct.radeonfb_info*, align 8
  %3 = alloca %struct.backlight_device*, align 8
  %4 = alloca %struct.radeon_bl_privdata*, align 8
  %5 = alloca [12 x i8], align 1
  store %struct.radeonfb_info* %0, %struct.radeonfb_info** %2, align 8
  %6 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %7 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MT_LCD, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %116

12:                                               ; preds = %1
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.radeon_bl_privdata* @kmalloc(i32 16, i32 %13)
  store %struct.radeon_bl_privdata* %14, %struct.radeon_bl_privdata** %4, align 8
  %15 = load %struct.radeon_bl_privdata*, %struct.radeon_bl_privdata** %4, align 8
  %16 = icmp ne %struct.radeon_bl_privdata* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %113

19:                                               ; preds = %12
  %20 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  %21 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %22 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @snprintf(i8* %20, i32 12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  %28 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %29 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.radeon_bl_privdata*, %struct.radeon_bl_privdata** %4, align 8
  %34 = call %struct.backlight_device* @backlight_device_register(i8* %27, i32 %32, %struct.radeon_bl_privdata* %33, i32* @radeon_bl_data)
  store %struct.backlight_device* %34, %struct.backlight_device** %3, align 8
  %35 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %36 = call i64 @IS_ERR(%struct.backlight_device* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %19
  %39 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %40 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store %struct.backlight_device* null, %struct.backlight_device** %42, align 8
  %43 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %113

44:                                               ; preds = %19
  %45 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %46 = load %struct.radeon_bl_privdata*, %struct.radeon_bl_privdata** %4, align 8
  %47 = getelementptr inbounds %struct.radeon_bl_privdata, %struct.radeon_bl_privdata* %46, i32 0, i32 1
  store %struct.radeonfb_info* %45, %struct.radeonfb_info** %47, align 8
  %48 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %49 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @CHIP_FAMILY_RV200, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %71

53:                                               ; preds = %44
  %54 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %55 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @CHIP_FAMILY_RV250, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %53
  %60 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %61 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @CHIP_FAMILY_RV280, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %67 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @CHIP_FAMILY_RV350, align 8
  %70 = icmp ne i64 %68, %69
  br label %71

71:                                               ; preds = %65, %59, %53, %44
  %72 = phi i1 [ false, %59 ], [ false, %53 ], [ false, %44 ], [ %70, %65 ]
  %73 = zext i1 %72 to i32
  %74 = load %struct.radeon_bl_privdata*, %struct.radeon_bl_privdata** %4, align 8
  %75 = getelementptr inbounds %struct.radeon_bl_privdata, %struct.radeon_bl_privdata* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %77 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %78 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %77, i32 0, i32 2
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store %struct.backlight_device* %76, %struct.backlight_device** %80, align 8
  %81 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %82 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %81, i32 0, i32 2
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load i32, i32* @FB_BACKLIGHT_MAX, align 4
  %85 = mul nsw i32 63, %84
  %86 = load i32, i32* @MAX_RADEON_LEVEL, align 4
  %87 = sdiv i32 %85, %86
  %88 = load i32, i32* @FB_BACKLIGHT_MAX, align 4
  %89 = mul nsw i32 217, %88
  %90 = load i32, i32* @MAX_RADEON_LEVEL, align 4
  %91 = sdiv i32 %89, %90
  %92 = call i32 @fb_bl_default_curve(%struct.TYPE_4__* %83, i32 0, i32 %87, i32 %91)
  %93 = load i64, i64* @FB_BACKLIGHT_LEVELS, align 8
  %94 = sub nsw i64 %93, 1
  %95 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %96 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  store i64 %94, i64* %97, align 8
  %98 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %99 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %103 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 2
  store i64 %101, i64* %104, align 8
  %105 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %106 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %107 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  store i32 %105, i32* %108, align 8
  %109 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %110 = call i32 @backlight_update_status(%struct.backlight_device* %109)
  %111 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  %112 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %111)
  br label %116

113:                                              ; preds = %38, %17
  %114 = load %struct.radeon_bl_privdata*, %struct.radeon_bl_privdata** %4, align 8
  %115 = call i32 @kfree(%struct.radeon_bl_privdata* %114)
  br label %116

116:                                              ; preds = %113, %71, %11
  ret void
}

declare dso_local %struct.radeon_bl_privdata* @kmalloc(i32, i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.backlight_device* @backlight_device_register(i8*, i32, %struct.radeon_bl_privdata*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.backlight_device*) #1

declare dso_local i32 @fb_bl_default_curve(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @backlight_update_status(%struct.backlight_device*) #1

declare dso_local i32 @kfree(%struct.radeon_bl_privdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
