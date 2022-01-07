; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/intelfb/extr_intelfb_i2c.c_intelfb_create_i2c_busses.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/intelfb/extr_intelfb_i2c.c_intelfb_create_i2c_busses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intelfb_info = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i8*, i32 }

@INTELFB_OUTPUT_ANALOG = common dso_local global i8* null, align 8
@GPIOA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"CRTDDC_A\00", align 1
@I2C_CLASS_DDC = common dso_local global i32 0, align 4
@INTELFB_OUTPUT_DVO = common dso_local global i8* null, align 8
@GPIOD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"DVODDC_D\00", align 1
@GPIOE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"DVOI2C_E\00", align 1
@INTELFB_OUTPUT_SDVO = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"SDVOCTRL_E\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intelfb_create_i2c_busses(%struct.intelfb_info* %0) #0 {
  %2 = alloca %struct.intelfb_info*, align 8
  %3 = alloca i32, align 4
  store %struct.intelfb_info* %0, %struct.intelfb_info** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %5 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %4, i32 0, i32 0
  store i32 1, i32* %5, align 8
  %6 = load i8*, i8** @INTELFB_OUTPUT_ANALOG, align 8
  %7 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %8 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store i8* %6, i8** %13, align 8
  %14 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %15 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %16 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i32, i32* @GPIOA, align 4
  %23 = load i32, i32* @I2C_CLASS_DDC, align 4
  %24 = call i32 @intelfb_setup_i2c_bus(%struct.intelfb_info* %14, i32* %21, i32 %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  %27 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %28 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %109 [
    i32 139, label %30
    i32 138, label %30
    i32 137, label %30
    i32 136, label %30
    i32 135, label %30
    i32 134, label %62
    i32 133, label %62
    i32 132, label %62
    i32 131, label %62
    i32 130, label %62
    i32 129, label %62
    i32 128, label %62
  ]

30:                                               ; preds = %1, %1, %1, %1, %1
  %31 = load i8*, i8** @INTELFB_OUTPUT_DVO, align 8
  %32 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %33 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i8* %31, i8** %38, align 8
  %39 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %40 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %41 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* @GPIOD, align 4
  %48 = load i32, i32* @I2C_CLASS_DDC, align 4
  %49 = call i32 @intelfb_setup_i2c_bus(%struct.intelfb_info* %39, i32* %46, i32 %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %51 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %52 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* @GPIOE, align 4
  %59 = call i32 @intelfb_setup_i2c_bus(%struct.intelfb_info* %50, i32* %57, i32 %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %109

62:                                               ; preds = %1, %1, %1, %1, %1, %1, %1
  %63 = load i8*, i8** @INTELFB_OUTPUT_SDVO, align 8
  %64 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %65 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %64, i32 0, i32 2
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  store i8* %63, i8** %70, align 8
  %71 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %72 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %73 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %72, i32 0, i32 2
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* @GPIOE, align 4
  %80 = call i32 @intelfb_setup_i2c_bus(%struct.intelfb_info* %71, i32* %78, i32 %79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %3, align 4
  %83 = load i8*, i8** @INTELFB_OUTPUT_SDVO, align 8
  %84 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %85 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %84, i32 0, i32 2
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i32, i32* %3, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  store i8* %83, i8** %90, align 8
  %91 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %92 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %91, i32 0, i32 2
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i32, i32* %3, align 4
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %101 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %100, i32 0, i32 2
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = load i32, i32* %3, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  store i32 %99, i32* %106, align 8
  %107 = load i32, i32* %3, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %1, %62, %30
  %110 = load i32, i32* %3, align 4
  %111 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %112 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  ret void
}

declare dso_local i32 @intelfb_setup_i2c_bus(%struct.intelfb_info*, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
