; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_via_i2c.c_viafb_create_i2c_bus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_via_i2c.c_viafb_create_i2c_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_i2c_stuff = type { i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_8__*, i64, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { i32, i32, %struct.via_i2c_stuff*, i32, i32, i32 (%struct.via_i2c_stuff*, i32)*, i32 (%struct.via_i2c_stuff*, i32)* }
%struct.viafb_par = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.via_i2c_stuff }

@.str = private unnamed_addr constant [8 x i8] c"via_i2c\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@via_i2c_getsda = common dso_local global i32 0, align 4
@via_i2c_getscl = common dso_local global i32 0, align 4
@I2CPORTINDEX = common dso_local global i32 0, align 4
@GPIOPORTINDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"I2C bus %s registered.\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to register I2C bus %s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @viafb_create_i2c_bus(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.via_i2c_stuff*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.viafb_par*
  %7 = getelementptr inbounds %struct.viafb_par, %struct.viafb_par* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store %struct.via_i2c_stuff* %9, %struct.via_i2c_stuff** %4, align 8
  %10 = load %struct.via_i2c_stuff*, %struct.via_i2c_stuff** %4, align 8
  %11 = getelementptr inbounds %struct.via_i2c_stuff, %struct.via_i2c_stuff* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @strcpy(i32 %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.via_i2c_stuff*, %struct.via_i2c_stuff** %4, align 8
  %16 = getelementptr inbounds %struct.via_i2c_stuff, %struct.via_i2c_stuff* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load i32, i32* @THIS_MODULE, align 4
  %18 = load %struct.via_i2c_stuff*, %struct.via_i2c_stuff** %4, align 8
  %19 = getelementptr inbounds %struct.via_i2c_stuff, %struct.via_i2c_stuff* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 5
  store i32 %17, i32* %20, align 8
  %21 = load %struct.via_i2c_stuff*, %struct.via_i2c_stuff** %4, align 8
  %22 = getelementptr inbounds %struct.via_i2c_stuff, %struct.via_i2c_stuff* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  store i32 131071, i32* %23, align 8
  %24 = load %struct.via_i2c_stuff*, %struct.via_i2c_stuff** %4, align 8
  %25 = getelementptr inbounds %struct.via_i2c_stuff, %struct.via_i2c_stuff* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = load %struct.via_i2c_stuff*, %struct.via_i2c_stuff** %4, align 8
  %28 = getelementptr inbounds %struct.via_i2c_stuff, %struct.via_i2c_stuff* %27, i32 0, i32 2
  %29 = load %struct.via_i2c_stuff*, %struct.via_i2c_stuff** %4, align 8
  %30 = getelementptr inbounds %struct.via_i2c_stuff, %struct.via_i2c_stuff* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 3
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %31, align 8
  %32 = load %struct.via_i2c_stuff*, %struct.via_i2c_stuff** %4, align 8
  %33 = getelementptr inbounds %struct.via_i2c_stuff, %struct.via_i2c_stuff* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  store i32* null, i32** %35, align 8
  %36 = load %struct.via_i2c_stuff*, %struct.via_i2c_stuff** %4, align 8
  %37 = getelementptr inbounds %struct.via_i2c_stuff, %struct.via_i2c_stuff* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 6
  store i32 (%struct.via_i2c_stuff*, i32)* @via_i2c_setsda, i32 (%struct.via_i2c_stuff*, i32)** %38, align 8
  %39 = load %struct.via_i2c_stuff*, %struct.via_i2c_stuff** %4, align 8
  %40 = getelementptr inbounds %struct.via_i2c_stuff, %struct.via_i2c_stuff* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 5
  store i32 (%struct.via_i2c_stuff*, i32)* @via_i2c_setscl, i32 (%struct.via_i2c_stuff*, i32)** %41, align 8
  %42 = load i32, i32* @via_i2c_getsda, align 4
  %43 = load %struct.via_i2c_stuff*, %struct.via_i2c_stuff** %4, align 8
  %44 = getelementptr inbounds %struct.via_i2c_stuff, %struct.via_i2c_stuff* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 4
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @via_i2c_getscl, align 4
  %47 = load %struct.via_i2c_stuff*, %struct.via_i2c_stuff** %4, align 8
  %48 = getelementptr inbounds %struct.via_i2c_stuff, %struct.via_i2c_stuff* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 3
  store i32 %46, i32* %49, align 8
  %50 = load %struct.via_i2c_stuff*, %struct.via_i2c_stuff** %4, align 8
  %51 = getelementptr inbounds %struct.via_i2c_stuff, %struct.via_i2c_stuff* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  store i32 40, i32* %52, align 8
  %53 = load %struct.via_i2c_stuff*, %struct.via_i2c_stuff** %4, align 8
  %54 = getelementptr inbounds %struct.via_i2c_stuff, %struct.via_i2c_stuff* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  store i32 20, i32* %55, align 4
  %56 = load %struct.via_i2c_stuff*, %struct.via_i2c_stuff** %4, align 8
  %57 = load %struct.via_i2c_stuff*, %struct.via_i2c_stuff** %4, align 8
  %58 = getelementptr inbounds %struct.via_i2c_stuff, %struct.via_i2c_stuff* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  store %struct.via_i2c_stuff* %56, %struct.via_i2c_stuff** %59, align 8
  %60 = load %struct.via_i2c_stuff*, %struct.via_i2c_stuff** %4, align 8
  %61 = getelementptr inbounds %struct.via_i2c_stuff, %struct.via_i2c_stuff* %60, i32 0, i32 1
  %62 = load %struct.via_i2c_stuff*, %struct.via_i2c_stuff** %4, align 8
  %63 = call i32 @i2c_set_adapdata(%struct.TYPE_9__* %61, %struct.via_i2c_stuff* %62)
  %64 = load i32, i32* @I2CPORTINDEX, align 4
  %65 = load %struct.via_i2c_stuff*, %struct.via_i2c_stuff** %4, align 8
  %66 = getelementptr inbounds %struct.via_i2c_stuff, %struct.via_i2c_stuff* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.via_i2c_stuff*, %struct.via_i2c_stuff** %4, align 8
  %68 = call i32 @via_i2c_setsda(%struct.via_i2c_stuff* %67, i32 1)
  %69 = load %struct.via_i2c_stuff*, %struct.via_i2c_stuff** %4, align 8
  %70 = call i32 @via_i2c_setscl(%struct.via_i2c_stuff* %69, i32 1)
  %71 = load i32, i32* @GPIOPORTINDEX, align 4
  %72 = load %struct.via_i2c_stuff*, %struct.via_i2c_stuff** %4, align 8
  %73 = getelementptr inbounds %struct.via_i2c_stuff, %struct.via_i2c_stuff* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.via_i2c_stuff*, %struct.via_i2c_stuff** %4, align 8
  %75 = call i32 @via_i2c_setsda(%struct.via_i2c_stuff* %74, i32 1)
  %76 = load %struct.via_i2c_stuff*, %struct.via_i2c_stuff** %4, align 8
  %77 = call i32 @via_i2c_setscl(%struct.via_i2c_stuff* %76, i32 1)
  %78 = call i32 @udelay(i32 20)
  %79 = load %struct.via_i2c_stuff*, %struct.via_i2c_stuff** %4, align 8
  %80 = getelementptr inbounds %struct.via_i2c_stuff, %struct.via_i2c_stuff* %79, i32 0, i32 1
  %81 = call i32 @i2c_bit_add_bus(%struct.TYPE_9__* %80)
  store i32 %81, i32* %3, align 4
  %82 = load i32, i32* %3, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %1
  %85 = load %struct.via_i2c_stuff*, %struct.via_i2c_stuff** %4, align 8
  %86 = getelementptr inbounds %struct.via_i2c_stuff, %struct.via_i2c_stuff* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @DEBUG_MSG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  br label %96

90:                                               ; preds = %1
  %91 = load %struct.via_i2c_stuff*, %struct.via_i2c_stuff** %4, align 8
  %92 = getelementptr inbounds %struct.via_i2c_stuff, %struct.via_i2c_stuff* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @DEBUG_MSG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %90, %84
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @via_i2c_setsda(%struct.via_i2c_stuff*, i32) #1

declare dso_local i32 @via_i2c_setscl(%struct.via_i2c_stuff*, i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_9__*, %struct.via_i2c_stuff*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @i2c_bit_add_bus(%struct.TYPE_9__*) #1

declare dso_local i32 @DEBUG_MSG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
