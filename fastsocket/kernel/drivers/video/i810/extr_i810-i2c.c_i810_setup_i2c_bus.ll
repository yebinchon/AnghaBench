; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/i810/extr_i810-i2c.c_i810_setup_i2c_bus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/i810/extr_i810-i2c.c_i810_setup_i2c_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i810fb_i2c_chan = type { %struct.TYPE_10__*, %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_7__, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { i32, i32, i32 (%struct.i810fb_i2c_chan.0*, i32)*, i32 (%struct.i810fb_i2c_chan.1*, i32)*, %struct.i810fb_i2c_chan*, i32, i32 }
%struct.i810fb_i2c_chan.0 = type opaque
%struct.i810fb_i2c_chan.1 = type opaque

@THIS_MODULE = common dso_local global i32 0, align 4
@i810i2c_getsda = common dso_local global i32 0, align 4
@i810i2c_getscl = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"I2C bus %s registered.\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to register I2C bus %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i810fb_i2c_chan*, i8*)* @i810_setup_i2c_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i810_setup_i2c_bus(%struct.i810fb_i2c_chan* %0, i8* %1) #0 {
  %3 = alloca %struct.i810fb_i2c_chan*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.i810fb_i2c_chan* %0, %struct.i810fb_i2c_chan** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.i810fb_i2c_chan*, %struct.i810fb_i2c_chan** %3, align 8
  %7 = getelementptr inbounds %struct.i810fb_i2c_chan, %struct.i810fb_i2c_chan* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @strcpy(i32 %9, i8* %10)
  %12 = load i32, i32* @THIS_MODULE, align 4
  %13 = load %struct.i810fb_i2c_chan*, %struct.i810fb_i2c_chan** %3, align 8
  %14 = getelementptr inbounds %struct.i810fb_i2c_chan, %struct.i810fb_i2c_chan* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 2
  store i32 %12, i32* %15, align 8
  %16 = load %struct.i810fb_i2c_chan*, %struct.i810fb_i2c_chan** %3, align 8
  %17 = getelementptr inbounds %struct.i810fb_i2c_chan, %struct.i810fb_i2c_chan* %16, i32 0, i32 2
  %18 = load %struct.i810fb_i2c_chan*, %struct.i810fb_i2c_chan** %3, align 8
  %19 = getelementptr inbounds %struct.i810fb_i2c_chan, %struct.i810fb_i2c_chan* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %20, align 8
  %21 = load %struct.i810fb_i2c_chan*, %struct.i810fb_i2c_chan** %3, align 8
  %22 = getelementptr inbounds %struct.i810fb_i2c_chan, %struct.i810fb_i2c_chan* %21, i32 0, i32 0
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load %struct.i810fb_i2c_chan*, %struct.i810fb_i2c_chan** %3, align 8
  %28 = getelementptr inbounds %struct.i810fb_i2c_chan, %struct.i810fb_i2c_chan* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store i32* %26, i32** %30, align 8
  %31 = load %struct.i810fb_i2c_chan*, %struct.i810fb_i2c_chan** %3, align 8
  %32 = getelementptr inbounds %struct.i810fb_i2c_chan, %struct.i810fb_i2c_chan* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 3
  store i32 (%struct.i810fb_i2c_chan.1*, i32)* bitcast (i32 (%struct.i810fb_i2c_chan*, i32)* @i810i2c_setsda to i32 (%struct.i810fb_i2c_chan.1*, i32)*), i32 (%struct.i810fb_i2c_chan.1*, i32)** %33, align 8
  %34 = load %struct.i810fb_i2c_chan*, %struct.i810fb_i2c_chan** %3, align 8
  %35 = getelementptr inbounds %struct.i810fb_i2c_chan, %struct.i810fb_i2c_chan* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  store i32 (%struct.i810fb_i2c_chan.0*, i32)* bitcast (i32 (%struct.i810fb_i2c_chan*, i32)* @i810i2c_setscl to i32 (%struct.i810fb_i2c_chan.0*, i32)*), i32 (%struct.i810fb_i2c_chan.0*, i32)** %36, align 8
  %37 = load i32, i32* @i810i2c_getsda, align 4
  %38 = load %struct.i810fb_i2c_chan*, %struct.i810fb_i2c_chan** %3, align 8
  %39 = getelementptr inbounds %struct.i810fb_i2c_chan, %struct.i810fb_i2c_chan* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 6
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @i810i2c_getscl, align 4
  %42 = load %struct.i810fb_i2c_chan*, %struct.i810fb_i2c_chan** %3, align 8
  %43 = getelementptr inbounds %struct.i810fb_i2c_chan, %struct.i810fb_i2c_chan* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 5
  store i32 %41, i32* %44, align 8
  %45 = load %struct.i810fb_i2c_chan*, %struct.i810fb_i2c_chan** %3, align 8
  %46 = getelementptr inbounds %struct.i810fb_i2c_chan, %struct.i810fb_i2c_chan* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  store i32 10, i32* %47, align 8
  %48 = load i32, i32* @HZ, align 4
  %49 = sdiv i32 %48, 2
  %50 = load %struct.i810fb_i2c_chan*, %struct.i810fb_i2c_chan** %3, align 8
  %51 = getelementptr inbounds %struct.i810fb_i2c_chan, %struct.i810fb_i2c_chan* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  %53 = load %struct.i810fb_i2c_chan*, %struct.i810fb_i2c_chan** %3, align 8
  %54 = load %struct.i810fb_i2c_chan*, %struct.i810fb_i2c_chan** %3, align 8
  %55 = getelementptr inbounds %struct.i810fb_i2c_chan, %struct.i810fb_i2c_chan* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 4
  store %struct.i810fb_i2c_chan* %53, %struct.i810fb_i2c_chan** %56, align 8
  %57 = load %struct.i810fb_i2c_chan*, %struct.i810fb_i2c_chan** %3, align 8
  %58 = getelementptr inbounds %struct.i810fb_i2c_chan, %struct.i810fb_i2c_chan* %57, i32 0, i32 1
  %59 = load %struct.i810fb_i2c_chan*, %struct.i810fb_i2c_chan** %3, align 8
  %60 = call i32 @i2c_set_adapdata(%struct.TYPE_11__* %58, %struct.i810fb_i2c_chan* %59)
  %61 = load %struct.i810fb_i2c_chan*, %struct.i810fb_i2c_chan** %3, align 8
  %62 = getelementptr inbounds %struct.i810fb_i2c_chan, %struct.i810fb_i2c_chan* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 3
  %64 = load i32 (%struct.i810fb_i2c_chan.1*, i32)*, i32 (%struct.i810fb_i2c_chan.1*, i32)** %63, align 8
  %65 = load %struct.i810fb_i2c_chan*, %struct.i810fb_i2c_chan** %3, align 8
  %66 = bitcast %struct.i810fb_i2c_chan* %65 to %struct.i810fb_i2c_chan.1*
  %67 = call i32 %64(%struct.i810fb_i2c_chan.1* %66, i32 1)
  %68 = load %struct.i810fb_i2c_chan*, %struct.i810fb_i2c_chan** %3, align 8
  %69 = getelementptr inbounds %struct.i810fb_i2c_chan, %struct.i810fb_i2c_chan* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 2
  %71 = load i32 (%struct.i810fb_i2c_chan.0*, i32)*, i32 (%struct.i810fb_i2c_chan.0*, i32)** %70, align 8
  %72 = load %struct.i810fb_i2c_chan*, %struct.i810fb_i2c_chan** %3, align 8
  %73 = bitcast %struct.i810fb_i2c_chan* %72 to %struct.i810fb_i2c_chan.0*
  %74 = call i32 %71(%struct.i810fb_i2c_chan.0* %73, i32 1)
  %75 = call i32 @udelay(i32 20)
  %76 = load %struct.i810fb_i2c_chan*, %struct.i810fb_i2c_chan** %3, align 8
  %77 = getelementptr inbounds %struct.i810fb_i2c_chan, %struct.i810fb_i2c_chan* %76, i32 0, i32 1
  %78 = call i32 @i2c_bit_add_bus(%struct.TYPE_11__* %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %2
  %82 = load %struct.i810fb_i2c_chan*, %struct.i810fb_i2c_chan** %3, align 8
  %83 = getelementptr inbounds %struct.i810fb_i2c_chan, %struct.i810fb_i2c_chan* %82, i32 0, i32 0
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i8*, i8** %4, align 8
  %89 = call i32 @dev_dbg(i32* %87, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %88)
  br label %101

90:                                               ; preds = %2
  %91 = load %struct.i810fb_i2c_chan*, %struct.i810fb_i2c_chan** %3, align 8
  %92 = getelementptr inbounds %struct.i810fb_i2c_chan, %struct.i810fb_i2c_chan* %91, i32 0, i32 0
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i8*, i8** %4, align 8
  %98 = call i32 @dev_warn(i32* %96, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %97)
  %99 = load %struct.i810fb_i2c_chan*, %struct.i810fb_i2c_chan** %3, align 8
  %100 = getelementptr inbounds %struct.i810fb_i2c_chan, %struct.i810fb_i2c_chan* %99, i32 0, i32 0
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %100, align 8
  br label %101

101:                                              ; preds = %90, %81
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @i810i2c_setsda(%struct.i810fb_i2c_chan*, i32) #1

declare dso_local i32 @i810i2c_setscl(%struct.i810fb_i2c_chan*, i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_11__*, %struct.i810fb_i2c_chan*) #1

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
