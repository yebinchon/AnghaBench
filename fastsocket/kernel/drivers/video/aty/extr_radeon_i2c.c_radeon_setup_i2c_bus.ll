; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_radeon_i2c.c_radeon_setup_i2c_bus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_radeon_i2c.c_radeon_setup_i2c_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_i2c_chan = type { %struct.TYPE_10__*, %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_7__, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { i32, i32, %struct.radeon_i2c_chan*, i32, i32, i32 (%struct.radeon_i2c_chan*, i32)*, i32 (%struct.radeon_i2c_chan*, i32)* }

@.str = private unnamed_addr constant [12 x i8] c"radeonfb %s\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@radeon_gpio_getsda = common dso_local global i32 0, align 4
@radeon_gpio_getscl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"I2C bus %s registered.\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to register I2C bus %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_i2c_chan*, i8*)* @radeon_setup_i2c_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_setup_i2c_bus(%struct.radeon_i2c_chan* %0, i8* %1) #0 {
  %3 = alloca %struct.radeon_i2c_chan*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.radeon_i2c_chan* %0, %struct.radeon_i2c_chan** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %3, align 8
  %7 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @snprintf(i32 %9, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = load i32, i32* @THIS_MODULE, align 4
  %13 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %3, align 8
  %14 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 2
  store i32 %12, i32* %15, align 8
  %16 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %3, align 8
  %17 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %16, i32 0, i32 2
  %18 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %3, align 8
  %19 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %20, align 8
  %21 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %3, align 8
  %22 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %21, i32 0, i32 0
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %3, align 8
  %28 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store i32* %26, i32** %30, align 8
  %31 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %3, align 8
  %32 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 6
  store i32 (%struct.radeon_i2c_chan*, i32)* @radeon_gpio_setsda, i32 (%struct.radeon_i2c_chan*, i32)** %33, align 8
  %34 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %3, align 8
  %35 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 5
  store i32 (%struct.radeon_i2c_chan*, i32)* @radeon_gpio_setscl, i32 (%struct.radeon_i2c_chan*, i32)** %36, align 8
  %37 = load i32, i32* @radeon_gpio_getsda, align 4
  %38 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %3, align 8
  %39 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 4
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @radeon_gpio_getscl, align 4
  %42 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %3, align 8
  %43 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 3
  store i32 %41, i32* %44, align 8
  %45 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %3, align 8
  %46 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  store i32 10, i32* %47, align 8
  %48 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %3, align 8
  %49 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  store i32 20, i32* %50, align 4
  %51 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %3, align 8
  %52 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %3, align 8
  %53 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  store %struct.radeon_i2c_chan* %51, %struct.radeon_i2c_chan** %54, align 8
  %55 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %3, align 8
  %56 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %55, i32 0, i32 1
  %57 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %3, align 8
  %58 = call i32 @i2c_set_adapdata(%struct.TYPE_11__* %56, %struct.radeon_i2c_chan* %57)
  %59 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %3, align 8
  %60 = call i32 @radeon_gpio_setsda(%struct.radeon_i2c_chan* %59, i32 1)
  %61 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %3, align 8
  %62 = call i32 @radeon_gpio_setscl(%struct.radeon_i2c_chan* %61, i32 1)
  %63 = call i32 @udelay(i32 20)
  %64 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %3, align 8
  %65 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %64, i32 0, i32 1
  %66 = call i32 @i2c_bit_add_bus(%struct.TYPE_11__* %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %2
  %70 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %3, align 8
  %71 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %70, i32 0, i32 0
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i8*, i8** %4, align 8
  %77 = call i32 @dev_dbg(i32* %75, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %76)
  br label %87

78:                                               ; preds = %2
  %79 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %3, align 8
  %80 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %79, i32 0, i32 0
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i8*, i8** %4, align 8
  %86 = call i32 @dev_warn(i32* %84, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %85)
  br label %87

87:                                               ; preds = %78, %69
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @radeon_gpio_setsda(%struct.radeon_i2c_chan*, i32) #1

declare dso_local i32 @radeon_gpio_setscl(%struct.radeon_i2c_chan*, i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_11__*, %struct.radeon_i2c_chan*) #1

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
