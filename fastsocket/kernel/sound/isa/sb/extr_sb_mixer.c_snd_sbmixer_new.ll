; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb_mixer.c_snd_sbmixer_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb_mixer.c_snd_sbmixer_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sb = type { i32, %struct.snd_card* }
%struct.snd_card = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@snd_sb20_controls = common dso_local global i32 0, align 4
@snd_sb20_init_values = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"CTL1335\00", align 1
@snd_sbpro_controls = common dso_local global i32 0, align 4
@snd_sbpro_init_values = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"CTL1345\00", align 1
@snd_sb16_controls = common dso_local global i32 0, align 4
@snd_sb16_init_values = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"CTL1745\00", align 1
@snd_als4000_controls = common dso_local global i32 0, align 4
@snd_als4000_init_values = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"ALS4000\00", align 1
@snd_dt019x_controls = common dso_local global i32 0, align 4
@snd_dt019x_init_values = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"DT019X\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"???\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_sbmixer_new(%struct.snd_sb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_sb*, align 8
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_sb* %0, %struct.snd_sb** %3, align 8
  %6 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %7 = icmp ne %struct.snd_sb* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %10 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %9, i32 0, i32 1
  %11 = load %struct.snd_card*, %struct.snd_card** %10, align 8
  %12 = icmp ne %struct.snd_card* %11, null
  %13 = xor i1 %12, true
  br label %14

14:                                               ; preds = %8, %1
  %15 = phi i1 [ true, %1 ], [ %13, %8 ]
  %16 = zext i1 %15 to i32
  %17 = call i64 @snd_BUG_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %100

22:                                               ; preds = %14
  %23 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %24 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %23, i32 0, i32 1
  %25 = load %struct.snd_card*, %struct.snd_card** %24, align 8
  store %struct.snd_card* %25, %struct.snd_card** %4, align 8
  %26 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %27 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %94 [
    i32 136, label %29
    i32 134, label %30
    i32 133, label %30
    i32 128, label %43
    i32 135, label %56
    i32 132, label %56
    i32 130, label %56
    i32 131, label %69
    i32 129, label %82
  ]

29:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %100

30:                                               ; preds = %22, %22
  %31 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %32 = load i32, i32* @snd_sb20_controls, align 4
  %33 = load i32, i32* @snd_sb20_controls, align 4
  %34 = call i32 @ARRAY_SIZE(i32 %33)
  %35 = load i32, i32* @snd_sb20_init_values, align 4
  %36 = load i32, i32* @snd_sb20_init_values, align 4
  %37 = call i32 @ARRAY_SIZE(i32 %36)
  %38 = call i32 @snd_sbmixer_init(%struct.snd_sb* %31, i32 %32, i32 %34, i32 %35, i32 %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %38, i32* %5, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %100

42:                                               ; preds = %30
  br label %99

43:                                               ; preds = %22
  %44 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %45 = load i32, i32* @snd_sbpro_controls, align 4
  %46 = load i32, i32* @snd_sbpro_controls, align 4
  %47 = call i32 @ARRAY_SIZE(i32 %46)
  %48 = load i32, i32* @snd_sbpro_init_values, align 4
  %49 = load i32, i32* @snd_sbpro_init_values, align 4
  %50 = call i32 @ARRAY_SIZE(i32 %49)
  %51 = call i32 @snd_sbmixer_init(%struct.snd_sb* %44, i32 %45, i32 %47, i32 %48, i32 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %51, i32* %5, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %100

55:                                               ; preds = %43
  br label %99

56:                                               ; preds = %22, %22, %22
  %57 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %58 = load i32, i32* @snd_sb16_controls, align 4
  %59 = load i32, i32* @snd_sb16_controls, align 4
  %60 = call i32 @ARRAY_SIZE(i32 %59)
  %61 = load i32, i32* @snd_sb16_init_values, align 4
  %62 = load i32, i32* @snd_sb16_init_values, align 4
  %63 = call i32 @ARRAY_SIZE(i32 %62)
  %64 = call i32 @snd_sbmixer_init(%struct.snd_sb* %57, i32 %58, i32 %60, i32 %61, i32 %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 %64, i32* %5, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %2, align 4
  br label %100

68:                                               ; preds = %56
  br label %99

69:                                               ; preds = %22
  %70 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %71 = load i32, i32* @snd_als4000_controls, align 4
  %72 = load i32, i32* @snd_als4000_controls, align 4
  %73 = call i32 @ARRAY_SIZE(i32 %72)
  %74 = load i32, i32* @snd_als4000_init_values, align 4
  %75 = load i32, i32* @snd_als4000_init_values, align 4
  %76 = call i32 @ARRAY_SIZE(i32 %75)
  %77 = call i32 @snd_sbmixer_init(%struct.snd_sb* %70, i32 %71, i32 %73, i32 %74, i32 %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 %77, i32* %5, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %69
  %80 = load i32, i32* %5, align 4
  store i32 %80, i32* %2, align 4
  br label %100

81:                                               ; preds = %69
  br label %99

82:                                               ; preds = %22
  %83 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %84 = load i32, i32* @snd_dt019x_controls, align 4
  %85 = load i32, i32* @snd_dt019x_controls, align 4
  %86 = call i32 @ARRAY_SIZE(i32 %85)
  %87 = load i32, i32* @snd_dt019x_init_values, align 4
  %88 = load i32, i32* @snd_dt019x_init_values, align 4
  %89 = call i32 @ARRAY_SIZE(i32 %88)
  %90 = call i32 @snd_sbmixer_init(%struct.snd_sb* %83, i32 %84, i32 %86, i32 %87, i32 %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i32 %90, i32* %5, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %82
  br label %99

93:                                               ; preds = %82
  br label %94

94:                                               ; preds = %22, %93
  %95 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %96 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @strcpy(i32 %97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %99

99:                                               ; preds = %94, %92, %81, %68, %55, %42
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %99, %79, %66, %53, %40, %29, %19
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_sbmixer_init(%struct.snd_sb*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
