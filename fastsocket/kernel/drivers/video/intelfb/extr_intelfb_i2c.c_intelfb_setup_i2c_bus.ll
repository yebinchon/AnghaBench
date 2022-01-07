; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/intelfb/extr_intelfb_i2c.c_intelfb_setup_i2c_bus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/intelfb/extr_intelfb_i2c.c_intelfb_setup_i2c_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intelfb_info = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.intelfb_i2c_chan = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.intelfb_info*, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_6__, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_8__ = type { i32, i32, %struct.intelfb_i2c_chan*, i32, i32, i32 (%struct.intelfb_i2c_chan*, i32)*, i32 (%struct.intelfb_i2c_chan*, i32)* }

@.str = private unnamed_addr constant [11 x i8] c"intelfb %s\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@intelfb_gpio_getsda = common dso_local global i32 0, align 4
@intelfb_gpio_getscl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"I2C bus %s registered.\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to register I2C bus %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intelfb_info*, %struct.intelfb_i2c_chan*, i32, i8*, i32)* @intelfb_setup_i2c_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intelfb_setup_i2c_bus(%struct.intelfb_info* %0, %struct.intelfb_i2c_chan* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.intelfb_info*, align 8
  %7 = alloca %struct.intelfb_i2c_chan*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intelfb_info* %0, %struct.intelfb_info** %6, align 8
  store %struct.intelfb_i2c_chan* %1, %struct.intelfb_i2c_chan** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.intelfb_info*, %struct.intelfb_info** %6, align 8
  %13 = load %struct.intelfb_i2c_chan*, %struct.intelfb_i2c_chan** %7, align 8
  %14 = getelementptr inbounds %struct.intelfb_i2c_chan, %struct.intelfb_i2c_chan* %13, i32 0, i32 2
  store %struct.intelfb_info* %12, %struct.intelfb_info** %14, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.intelfb_i2c_chan*, %struct.intelfb_i2c_chan** %7, align 8
  %17 = getelementptr inbounds %struct.intelfb_i2c_chan, %struct.intelfb_i2c_chan* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = load %struct.intelfb_i2c_chan*, %struct.intelfb_i2c_chan** %7, align 8
  %19 = getelementptr inbounds %struct.intelfb_i2c_chan, %struct.intelfb_i2c_chan* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 @snprintf(i32 %21, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.intelfb_i2c_chan*, %struct.intelfb_i2c_chan** %7, align 8
  %26 = getelementptr inbounds %struct.intelfb_i2c_chan, %struct.intelfb_i2c_chan* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load i32, i32* @THIS_MODULE, align 4
  %29 = load %struct.intelfb_i2c_chan*, %struct.intelfb_i2c_chan** %7, align 8
  %30 = getelementptr inbounds %struct.intelfb_i2c_chan, %struct.intelfb_i2c_chan* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 3
  store i32 %28, i32* %31, align 8
  %32 = load %struct.intelfb_i2c_chan*, %struct.intelfb_i2c_chan** %7, align 8
  %33 = getelementptr inbounds %struct.intelfb_i2c_chan, %struct.intelfb_i2c_chan* %32, i32 0, i32 1
  %34 = load %struct.intelfb_i2c_chan*, %struct.intelfb_i2c_chan** %7, align 8
  %35 = getelementptr inbounds %struct.intelfb_i2c_chan, %struct.intelfb_i2c_chan* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %36, align 8
  %37 = load %struct.intelfb_i2c_chan*, %struct.intelfb_i2c_chan** %7, align 8
  %38 = getelementptr inbounds %struct.intelfb_i2c_chan, %struct.intelfb_i2c_chan* %37, i32 0, i32 2
  %39 = load %struct.intelfb_info*, %struct.intelfb_info** %38, align 8
  %40 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load %struct.intelfb_i2c_chan*, %struct.intelfb_i2c_chan** %7, align 8
  %44 = getelementptr inbounds %struct.intelfb_i2c_chan, %struct.intelfb_i2c_chan* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i32* %42, i32** %46, align 8
  %47 = load %struct.intelfb_i2c_chan*, %struct.intelfb_i2c_chan** %7, align 8
  %48 = getelementptr inbounds %struct.intelfb_i2c_chan, %struct.intelfb_i2c_chan* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 6
  store i32 (%struct.intelfb_i2c_chan*, i32)* @intelfb_gpio_setsda, i32 (%struct.intelfb_i2c_chan*, i32)** %49, align 8
  %50 = load %struct.intelfb_i2c_chan*, %struct.intelfb_i2c_chan** %7, align 8
  %51 = getelementptr inbounds %struct.intelfb_i2c_chan, %struct.intelfb_i2c_chan* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 5
  store i32 (%struct.intelfb_i2c_chan*, i32)* @intelfb_gpio_setscl, i32 (%struct.intelfb_i2c_chan*, i32)** %52, align 8
  %53 = load i32, i32* @intelfb_gpio_getsda, align 4
  %54 = load %struct.intelfb_i2c_chan*, %struct.intelfb_i2c_chan** %7, align 8
  %55 = getelementptr inbounds %struct.intelfb_i2c_chan, %struct.intelfb_i2c_chan* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 4
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* @intelfb_gpio_getscl, align 4
  %58 = load %struct.intelfb_i2c_chan*, %struct.intelfb_i2c_chan** %7, align 8
  %59 = getelementptr inbounds %struct.intelfb_i2c_chan, %struct.intelfb_i2c_chan* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 3
  store i32 %57, i32* %60, align 8
  %61 = load %struct.intelfb_i2c_chan*, %struct.intelfb_i2c_chan** %7, align 8
  %62 = getelementptr inbounds %struct.intelfb_i2c_chan, %struct.intelfb_i2c_chan* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  store i32 40, i32* %63, align 8
  %64 = load %struct.intelfb_i2c_chan*, %struct.intelfb_i2c_chan** %7, align 8
  %65 = getelementptr inbounds %struct.intelfb_i2c_chan, %struct.intelfb_i2c_chan* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  store i32 20, i32* %66, align 4
  %67 = load %struct.intelfb_i2c_chan*, %struct.intelfb_i2c_chan** %7, align 8
  %68 = load %struct.intelfb_i2c_chan*, %struct.intelfb_i2c_chan** %7, align 8
  %69 = getelementptr inbounds %struct.intelfb_i2c_chan, %struct.intelfb_i2c_chan* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 2
  store %struct.intelfb_i2c_chan* %67, %struct.intelfb_i2c_chan** %70, align 8
  %71 = load %struct.intelfb_i2c_chan*, %struct.intelfb_i2c_chan** %7, align 8
  %72 = getelementptr inbounds %struct.intelfb_i2c_chan, %struct.intelfb_i2c_chan* %71, i32 0, i32 0
  %73 = load %struct.intelfb_i2c_chan*, %struct.intelfb_i2c_chan** %7, align 8
  %74 = call i32 @i2c_set_adapdata(%struct.TYPE_9__* %72, %struct.intelfb_i2c_chan* %73)
  %75 = load %struct.intelfb_i2c_chan*, %struct.intelfb_i2c_chan** %7, align 8
  %76 = call i32 @intelfb_gpio_setsda(%struct.intelfb_i2c_chan* %75, i32 1)
  %77 = load %struct.intelfb_i2c_chan*, %struct.intelfb_i2c_chan** %7, align 8
  %78 = call i32 @intelfb_gpio_setscl(%struct.intelfb_i2c_chan* %77, i32 1)
  %79 = call i32 @udelay(i32 20)
  %80 = load %struct.intelfb_i2c_chan*, %struct.intelfb_i2c_chan** %7, align 8
  %81 = getelementptr inbounds %struct.intelfb_i2c_chan, %struct.intelfb_i2c_chan* %80, i32 0, i32 0
  %82 = call i32 @i2c_bit_add_bus(%struct.TYPE_9__* %81)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %5
  %86 = load i8*, i8** %9, align 8
  %87 = call i32 @DBG_MSG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %86)
  br label %91

88:                                               ; preds = %5
  %89 = load i8*, i8** %9, align 8
  %90 = call i32 @WRN_MSG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %89)
  br label %91

91:                                               ; preds = %88, %85
  %92 = load i32, i32* %11, align 4
  ret i32 %92
}

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @intelfb_gpio_setsda(%struct.intelfb_i2c_chan*, i32) #1

declare dso_local i32 @intelfb_gpio_setscl(%struct.intelfb_i2c_chan*, i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_9__*, %struct.intelfb_i2c_chan*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @i2c_bit_add_bus(%struct.TYPE_9__*) #1

declare dso_local i32 @DBG_MSG(i8*, i8*) #1

declare dso_local i32 @WRN_MSG(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
