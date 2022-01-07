; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/nvidia/extr_nv_i2c.c_nvidia_setup_i2c_bus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/nvidia/extr_nv_i2c.c_nvidia_setup_i2c_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvidia_i2c_chan = type { %struct.TYPE_10__*, %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_7__, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { i32, %struct.nvidia_i2c_chan*, i32, i32, i32, i32 (%struct.nvidia_i2c_chan*, i32)*, i32 (%struct.nvidia_i2c_chan*, i32)* }

@THIS_MODULE = common dso_local global i32 0, align 4
@nvidia_gpio_getsda = common dso_local global i32 0, align 4
@nvidia_gpio_getscl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"I2C bus %s registered.\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to register I2C bus %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvidia_i2c_chan*, i8*, i32)* @nvidia_setup_i2c_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvidia_setup_i2c_bus(%struct.nvidia_i2c_chan* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.nvidia_i2c_chan*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nvidia_i2c_chan* %0, %struct.nvidia_i2c_chan** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.nvidia_i2c_chan*, %struct.nvidia_i2c_chan** %4, align 8
  %9 = getelementptr inbounds %struct.nvidia_i2c_chan, %struct.nvidia_i2c_chan* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @strcpy(i32 %11, i8* %12)
  %14 = load i32, i32* @THIS_MODULE, align 4
  %15 = load %struct.nvidia_i2c_chan*, %struct.nvidia_i2c_chan** %4, align 8
  %16 = getelementptr inbounds %struct.nvidia_i2c_chan, %struct.nvidia_i2c_chan* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 3
  store i32 %14, i32* %17, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.nvidia_i2c_chan*, %struct.nvidia_i2c_chan** %4, align 8
  %20 = getelementptr inbounds %struct.nvidia_i2c_chan, %struct.nvidia_i2c_chan* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 8
  %22 = load %struct.nvidia_i2c_chan*, %struct.nvidia_i2c_chan** %4, align 8
  %23 = getelementptr inbounds %struct.nvidia_i2c_chan, %struct.nvidia_i2c_chan* %22, i32 0, i32 2
  %24 = load %struct.nvidia_i2c_chan*, %struct.nvidia_i2c_chan** %4, align 8
  %25 = getelementptr inbounds %struct.nvidia_i2c_chan, %struct.nvidia_i2c_chan* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 2
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %26, align 8
  %27 = load %struct.nvidia_i2c_chan*, %struct.nvidia_i2c_chan** %4, align 8
  %28 = getelementptr inbounds %struct.nvidia_i2c_chan, %struct.nvidia_i2c_chan* %27, i32 0, i32 0
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load %struct.nvidia_i2c_chan*, %struct.nvidia_i2c_chan** %4, align 8
  %34 = getelementptr inbounds %struct.nvidia_i2c_chan, %struct.nvidia_i2c_chan* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i32* %32, i32** %36, align 8
  %37 = load %struct.nvidia_i2c_chan*, %struct.nvidia_i2c_chan** %4, align 8
  %38 = getelementptr inbounds %struct.nvidia_i2c_chan, %struct.nvidia_i2c_chan* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 6
  store i32 (%struct.nvidia_i2c_chan*, i32)* @nvidia_gpio_setsda, i32 (%struct.nvidia_i2c_chan*, i32)** %39, align 8
  %40 = load %struct.nvidia_i2c_chan*, %struct.nvidia_i2c_chan** %4, align 8
  %41 = getelementptr inbounds %struct.nvidia_i2c_chan, %struct.nvidia_i2c_chan* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 5
  store i32 (%struct.nvidia_i2c_chan*, i32)* @nvidia_gpio_setscl, i32 (%struct.nvidia_i2c_chan*, i32)** %42, align 8
  %43 = load i32, i32* @nvidia_gpio_getsda, align 4
  %44 = load %struct.nvidia_i2c_chan*, %struct.nvidia_i2c_chan** %4, align 8
  %45 = getelementptr inbounds %struct.nvidia_i2c_chan, %struct.nvidia_i2c_chan* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 4
  store i32 %43, i32* %46, align 8
  %47 = load i32, i32* @nvidia_gpio_getscl, align 4
  %48 = load %struct.nvidia_i2c_chan*, %struct.nvidia_i2c_chan** %4, align 8
  %49 = getelementptr inbounds %struct.nvidia_i2c_chan, %struct.nvidia_i2c_chan* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 3
  store i32 %47, i32* %50, align 4
  %51 = load %struct.nvidia_i2c_chan*, %struct.nvidia_i2c_chan** %4, align 8
  %52 = getelementptr inbounds %struct.nvidia_i2c_chan, %struct.nvidia_i2c_chan* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  store i32 40, i32* %53, align 8
  %54 = call i32 @msecs_to_jiffies(i32 2)
  %55 = load %struct.nvidia_i2c_chan*, %struct.nvidia_i2c_chan** %4, align 8
  %56 = getelementptr inbounds %struct.nvidia_i2c_chan, %struct.nvidia_i2c_chan* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  store i32 %54, i32* %57, align 8
  %58 = load %struct.nvidia_i2c_chan*, %struct.nvidia_i2c_chan** %4, align 8
  %59 = load %struct.nvidia_i2c_chan*, %struct.nvidia_i2c_chan** %4, align 8
  %60 = getelementptr inbounds %struct.nvidia_i2c_chan, %struct.nvidia_i2c_chan* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  store %struct.nvidia_i2c_chan* %58, %struct.nvidia_i2c_chan** %61, align 8
  %62 = load %struct.nvidia_i2c_chan*, %struct.nvidia_i2c_chan** %4, align 8
  %63 = getelementptr inbounds %struct.nvidia_i2c_chan, %struct.nvidia_i2c_chan* %62, i32 0, i32 1
  %64 = load %struct.nvidia_i2c_chan*, %struct.nvidia_i2c_chan** %4, align 8
  %65 = call i32 @i2c_set_adapdata(%struct.TYPE_11__* %63, %struct.nvidia_i2c_chan* %64)
  %66 = load %struct.nvidia_i2c_chan*, %struct.nvidia_i2c_chan** %4, align 8
  %67 = call i32 @nvidia_gpio_setsda(%struct.nvidia_i2c_chan* %66, i32 1)
  %68 = load %struct.nvidia_i2c_chan*, %struct.nvidia_i2c_chan** %4, align 8
  %69 = call i32 @nvidia_gpio_setscl(%struct.nvidia_i2c_chan* %68, i32 1)
  %70 = call i32 @udelay(i32 20)
  %71 = load %struct.nvidia_i2c_chan*, %struct.nvidia_i2c_chan** %4, align 8
  %72 = getelementptr inbounds %struct.nvidia_i2c_chan, %struct.nvidia_i2c_chan* %71, i32 0, i32 1
  %73 = call i32 @i2c_bit_add_bus(%struct.TYPE_11__* %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %3
  %77 = load %struct.nvidia_i2c_chan*, %struct.nvidia_i2c_chan** %4, align 8
  %78 = getelementptr inbounds %struct.nvidia_i2c_chan, %struct.nvidia_i2c_chan* %77, i32 0, i32 0
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i8*, i8** %5, align 8
  %84 = call i32 @dev_dbg(i32* %82, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %83)
  br label %96

85:                                               ; preds = %3
  %86 = load %struct.nvidia_i2c_chan*, %struct.nvidia_i2c_chan** %4, align 8
  %87 = getelementptr inbounds %struct.nvidia_i2c_chan, %struct.nvidia_i2c_chan* %86, i32 0, i32 0
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i8*, i8** %5, align 8
  %93 = call i32 @dev_warn(i32* %91, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %92)
  %94 = load %struct.nvidia_i2c_chan*, %struct.nvidia_i2c_chan** %4, align 8
  %95 = getelementptr inbounds %struct.nvidia_i2c_chan, %struct.nvidia_i2c_chan* %94, i32 0, i32 0
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %95, align 8
  br label %96

96:                                               ; preds = %85, %76
  %97 = load i32, i32* %7, align 4
  ret i32 %97
}

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @nvidia_gpio_setsda(%struct.nvidia_i2c_chan*, i32) #1

declare dso_local i32 @nvidia_gpio_setscl(%struct.nvidia_i2c_chan*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_11__*, %struct.nvidia_i2c_chan*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @i2c_bit_add_bus(%struct.TYPE_11__*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
