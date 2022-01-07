; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/otg/extr_twl4030-usb.c_twl4030_usb_ldo_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/otg/extr_twl4030-usb.c_twl4030_usb_ldo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl4030_usb = type { i32*, i32*, i32*, i32 }

@TWL4030_MODULE_PM_MASTER = common dso_local global i32 0, align 4
@PROTECT_KEY = common dso_local global i32 0, align 4
@TWL4030_MODULE_PM_RECEIVER = common dso_local global i32 0, align 4
@VUSB_DEDICATED2 = common dso_local global i32 0, align 4
@VUSB_DEDICATED1 = common dso_local global i32 0, align 4
@VUSB3V1_DEV_GRP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"usb3v1\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@VUSB3V1_TYPE = common dso_local global i32 0, align 4
@VUSB1V5_DEV_GRP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"usb1v5\00", align 1
@VUSB1V5_TYPE = common dso_local global i32 0, align 4
@VUSB1V8_DEV_GRP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"usb1v8\00", align 1
@VUSB1V8_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twl4030_usb*)* @twl4030_usb_ldo_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_usb_ldo_init(%struct.twl4030_usb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.twl4030_usb*, align 8
  store %struct.twl4030_usb* %0, %struct.twl4030_usb** %3, align 8
  %4 = load i32, i32* @TWL4030_MODULE_PM_MASTER, align 4
  %5 = load i32, i32* @PROTECT_KEY, align 4
  %6 = call i32 @twl4030_i2c_write_u8(i32 %4, i32 192, i32 %5)
  %7 = load i32, i32* @TWL4030_MODULE_PM_MASTER, align 4
  %8 = load i32, i32* @PROTECT_KEY, align 4
  %9 = call i32 @twl4030_i2c_write_u8(i32 %7, i32 12, i32 %8)
  %10 = load i32, i32* @TWL4030_MODULE_PM_RECEIVER, align 4
  %11 = load i32, i32* @VUSB_DEDICATED2, align 4
  %12 = call i32 @twl4030_i2c_write_u8(i32 %10, i32 0, i32 %11)
  %13 = load i32, i32* @TWL4030_MODULE_PM_RECEIVER, align 4
  %14 = load i32, i32* @VUSB_DEDICATED1, align 4
  %15 = call i32 @twl4030_i2c_write_u8(i32 %13, i32 20, i32 %14)
  %16 = load i32, i32* @TWL4030_MODULE_PM_RECEIVER, align 4
  %17 = load i32, i32* @VUSB3V1_DEV_GRP, align 4
  %18 = call i32 @twl4030_i2c_write_u8(i32 %16, i32 0, i32 %17)
  %19 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %20 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i8* @regulator_get(i32 %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %23 = bitcast i8* %22 to i32*
  %24 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %25 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %24, i32 0, i32 0
  store i32* %23, i32** %25, align 8
  %26 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %27 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i64 @IS_ERR(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %97

34:                                               ; preds = %1
  %35 = load i32, i32* @TWL4030_MODULE_PM_RECEIVER, align 4
  %36 = load i32, i32* @VUSB3V1_TYPE, align 4
  %37 = call i32 @twl4030_i2c_write_u8(i32 %35, i32 0, i32 %36)
  %38 = load i32, i32* @TWL4030_MODULE_PM_RECEIVER, align 4
  %39 = load i32, i32* @VUSB1V5_DEV_GRP, align 4
  %40 = call i32 @twl4030_i2c_write_u8(i32 %38, i32 0, i32 %39)
  %41 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %42 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i8* @regulator_get(i32 %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %45 = bitcast i8* %44 to i32*
  %46 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %47 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %46, i32 0, i32 1
  store i32* %45, i32** %47, align 8
  %48 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %49 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = call i64 @IS_ERR(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %34
  br label %88

54:                                               ; preds = %34
  %55 = load i32, i32* @TWL4030_MODULE_PM_RECEIVER, align 4
  %56 = load i32, i32* @VUSB1V5_TYPE, align 4
  %57 = call i32 @twl4030_i2c_write_u8(i32 %55, i32 0, i32 %56)
  %58 = load i32, i32* @TWL4030_MODULE_PM_RECEIVER, align 4
  %59 = load i32, i32* @VUSB1V8_DEV_GRP, align 4
  %60 = call i32 @twl4030_i2c_write_u8(i32 %58, i32 0, i32 %59)
  %61 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %62 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i8* @regulator_get(i32 %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %65 = bitcast i8* %64 to i32*
  %66 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %67 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %66, i32 0, i32 2
  store i32* %65, i32** %67, align 8
  %68 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %69 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = call i64 @IS_ERR(i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %54
  br label %81

74:                                               ; preds = %54
  %75 = load i32, i32* @TWL4030_MODULE_PM_RECEIVER, align 4
  %76 = load i32, i32* @VUSB1V8_TYPE, align 4
  %77 = call i32 @twl4030_i2c_write_u8(i32 %75, i32 0, i32 %76)
  %78 = load i32, i32* @TWL4030_MODULE_PM_MASTER, align 4
  %79 = load i32, i32* @PROTECT_KEY, align 4
  %80 = call i32 @twl4030_i2c_write_u8(i32 %78, i32 0, i32 %79)
  store i32 0, i32* %2, align 4
  br label %97

81:                                               ; preds = %73
  %82 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %83 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @regulator_put(i32* %84)
  %86 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %87 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %86, i32 0, i32 1
  store i32* null, i32** %87, align 8
  br label %88

88:                                               ; preds = %81, %53
  %89 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %90 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @regulator_put(i32* %91)
  %93 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %94 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %93, i32 0, i32 0
  store i32* null, i32** %94, align 8
  %95 = load i32, i32* @ENODEV, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %88, %74, %31
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @twl4030_i2c_write_u8(i32, i32, i32) #1

declare dso_local i8* @regulator_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @regulator_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
