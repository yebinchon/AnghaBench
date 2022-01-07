; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_oxygen_mixer.c_oxygen_mixer_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_oxygen_mixer.c_oxygen_mixer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_10__* }
%struct.oxygen = type { %struct.TYPE_9__, i64, i64 }
%struct.TYPE_9__ = type { i32, i32 (%struct.oxygen.0*)* }
%struct.oxygen.0 = type opaque

@controls = common dso_local global %struct.TYPE_10__* null, align 8
@CAPTURE_1_FROM_SPDIF = common dso_local global i32 0, align 4
@spdif_input_controls = common dso_local global %struct.TYPE_10__* null, align 8
@monitor_controls = common dso_local global %struct.TYPE_10__* null, align 8
@ac97_controls = common dso_local global %struct.TYPE_10__* null, align 8
@ac97_fp_controls = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oxygen_mixer_init(%struct.oxygen* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.oxygen*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.oxygen* %0, %struct.oxygen** %3, align 8
  %6 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** @controls, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** @controls, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %8)
  %10 = call i32 @add_controls(%struct.oxygen* %6, %struct.TYPE_10__* %7, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %127

15:                                               ; preds = %1
  %16 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %17 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @CAPTURE_1_FROM_SPDIF, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %15
  %24 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** @spdif_input_controls, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** @spdif_input_controls, align 8
  %27 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %26)
  %28 = call i32 @add_controls(%struct.oxygen* %24, %struct.TYPE_10__* %25, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %127

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33, %15
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %75, %34
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** @monitor_controls, align 8
  %38 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %37)
  %39 = icmp ult i32 %36, %38
  br i1 %39, label %40, label %78

40:                                               ; preds = %35
  %41 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %42 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** @monitor_controls, align 8
  %46 = load i32, i32* %4, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %44, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %40
  br label %75

54:                                               ; preds = %40
  %55 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** @monitor_controls, align 8
  %57 = load i32, i32* %4, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** @monitor_controls, align 8
  %63 = load i32, i32* %4, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %67)
  %69 = call i32 @add_controls(%struct.oxygen* %55, %struct.TYPE_10__* %61, i32 %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %54
  %73 = load i32, i32* %5, align 4
  store i32 %73, i32* %2, align 4
  br label %127

74:                                               ; preds = %54
  br label %75

75:                                               ; preds = %74, %53
  %76 = load i32, i32* %4, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %35

78:                                               ; preds = %35
  %79 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %80 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %78
  %84 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ac97_controls, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ac97_controls, align 8
  %87 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %86)
  %88 = call i32 @add_controls(%struct.oxygen* %84, %struct.TYPE_10__* %85, i32 %87)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = load i32, i32* %5, align 4
  store i32 %92, i32* %2, align 4
  br label %127

93:                                               ; preds = %83
  br label %94

94:                                               ; preds = %93, %78
  %95 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %96 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %94
  %100 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ac97_fp_controls, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ac97_fp_controls, align 8
  %103 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %102)
  %104 = call i32 @add_controls(%struct.oxygen* %100, %struct.TYPE_10__* %101, i32 %103)
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* %5, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %99
  %108 = load i32, i32* %5, align 4
  store i32 %108, i32* %2, align 4
  br label %127

109:                                              ; preds = %99
  br label %110

110:                                              ; preds = %109, %94
  %111 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %112 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = load i32 (%struct.oxygen.0*)*, i32 (%struct.oxygen.0*)** %113, align 8
  %115 = icmp ne i32 (%struct.oxygen.0*)* %114, null
  br i1 %115, label %116, label %124

116:                                              ; preds = %110
  %117 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %118 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = load i32 (%struct.oxygen.0*)*, i32 (%struct.oxygen.0*)** %119, align 8
  %121 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %122 = bitcast %struct.oxygen* %121 to %struct.oxygen.0*
  %123 = call i32 %120(%struct.oxygen.0* %122)
  br label %125

124:                                              ; preds = %110
  br label %125

125:                                              ; preds = %124, %116
  %126 = phi i32 [ %123, %116 ], [ 0, %124 ]
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %125, %107, %91, %72, %31, %13
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @add_controls(%struct.oxygen*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
