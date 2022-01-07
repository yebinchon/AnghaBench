; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_set_recsrc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_set_recsrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer_oss_file = type { %struct.snd_mixer_oss* }
%struct.snd_mixer_oss = type { i32, %struct.snd_mixer_oss_slot*, i32 (%struct.snd_mixer_oss_file*, i32*)*, {}* }
%struct.snd_mixer_oss_slot = type { i32 (%struct.snd_mixer_oss_file.0*, %struct.snd_mixer_oss_slot*, i32*)*, i32 (%struct.snd_mixer_oss_file.1*, %struct.snd_mixer_oss_slot*, i32)* }
%struct.snd_mixer_oss_file.0 = type opaque
%struct.snd_mixer_oss_file.1 = type opaque

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer_oss_file*, i32)* @snd_mixer_oss_set_recsrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_mixer_oss_set_recsrc(%struct.snd_mixer_oss_file* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_mixer_oss_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_mixer_oss*, align 8
  %7 = alloca %struct.snd_mixer_oss_slot*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_mixer_oss_file* %0, %struct.snd_mixer_oss_file** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %4, align 8
  %12 = getelementptr inbounds %struct.snd_mixer_oss_file, %struct.snd_mixer_oss_file* %11, i32 0, i32 0
  %13 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %12, align 8
  store %struct.snd_mixer_oss* %13, %struct.snd_mixer_oss** %6, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %15 = icmp eq %struct.snd_mixer_oss* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %138

19:                                               ; preds = %2
  %20 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %21 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %20, i32 0, i32 2
  %22 = load i32 (%struct.snd_mixer_oss_file*, i32*)*, i32 (%struct.snd_mixer_oss_file*, i32*)** %21, align 8
  %23 = icmp ne i32 (%struct.snd_mixer_oss_file*, i32*)* %22, null
  br i1 %23, label %24, label %62

24:                                               ; preds = %19
  %25 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %26 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %25, i32 0, i32 3
  %27 = bitcast {}** %26 to i32 (%struct.snd_mixer_oss_file*, i32)**
  %28 = load i32 (%struct.snd_mixer_oss_file*, i32)*, i32 (%struct.snd_mixer_oss_file*, i32)** %27, align 8
  %29 = icmp ne i32 (%struct.snd_mixer_oss_file*, i32)* %28, null
  br i1 %29, label %30, label %62

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %33 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = xor i32 %34, -1
  %36 = and i32 %31, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %30
  %39 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %40 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %38, %30
  %46 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %47 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %46, i32 0, i32 3
  %48 = bitcast {}** %47 to i32 (%struct.snd_mixer_oss_file*, i32)**
  %49 = load i32 (%struct.snd_mixer_oss_file*, i32)*, i32 (%struct.snd_mixer_oss_file*, i32)** %48, align 8
  %50 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = xor i32 %51, -1
  %53 = call i32 @ffz(i32 %52)
  %54 = call i32 %49(%struct.snd_mixer_oss_file* %50, i32 %53)
  %55 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %56 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %55, i32 0, i32 2
  %57 = load i32 (%struct.snd_mixer_oss_file*, i32*)*, i32 (%struct.snd_mixer_oss_file*, i32*)** %56, align 8
  %58 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %4, align 8
  %59 = call i32 %57(%struct.snd_mixer_oss_file* %58, i32* %10)
  %60 = load i32, i32* %10, align 4
  %61 = shl i32 1, %60
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %45, %24, %19
  store i32 0, i32* %8, align 4
  br label %63

63:                                               ; preds = %94, %62
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %64, 31
  br i1 %65, label %66, label %97

66:                                               ; preds = %63
  %67 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %68 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %67, i32 0, i32 1
  %69 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %69, i64 %71
  store %struct.snd_mixer_oss_slot* %72, %struct.snd_mixer_oss_slot** %7, align 8
  %73 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %7, align 8
  %74 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %73, i32 0, i32 1
  %75 = load i32 (%struct.snd_mixer_oss_file.1*, %struct.snd_mixer_oss_slot*, i32)*, i32 (%struct.snd_mixer_oss_file.1*, %struct.snd_mixer_oss_slot*, i32)** %74, align 8
  %76 = icmp ne i32 (%struct.snd_mixer_oss_file.1*, %struct.snd_mixer_oss_slot*, i32)* %75, null
  br i1 %76, label %77, label %93

77:                                               ; preds = %66
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %8, align 4
  %80 = shl i32 1, %79
  %81 = and i32 %78, %80
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 1, i32 0
  store i32 %84, i32* %9, align 4
  %85 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %7, align 8
  %86 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %85, i32 0, i32 1
  %87 = load i32 (%struct.snd_mixer_oss_file.1*, %struct.snd_mixer_oss_slot*, i32)*, i32 (%struct.snd_mixer_oss_file.1*, %struct.snd_mixer_oss_slot*, i32)** %86, align 8
  %88 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %4, align 8
  %89 = bitcast %struct.snd_mixer_oss_file* %88 to %struct.snd_mixer_oss_file.1*
  %90 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %7, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 %87(%struct.snd_mixer_oss_file.1* %89, %struct.snd_mixer_oss_slot* %90, i32 %91)
  br label %93

93:                                               ; preds = %77, %66
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %63

97:                                               ; preds = %63
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %136, label %100

100:                                              ; preds = %97
  store i32 0, i32* %8, align 4
  br label %101

101:                                              ; preds = %132, %100
  %102 = load i32, i32* %8, align 4
  %103 = icmp slt i32 %102, 31
  br i1 %103, label %104, label %135

104:                                              ; preds = %101
  %105 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %106 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %105, i32 0, i32 1
  %107 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %107, i64 %109
  store %struct.snd_mixer_oss_slot* %110, %struct.snd_mixer_oss_slot** %7, align 8
  %111 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %7, align 8
  %112 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %111, i32 0, i32 0
  %113 = load i32 (%struct.snd_mixer_oss_file.0*, %struct.snd_mixer_oss_slot*, i32*)*, i32 (%struct.snd_mixer_oss_file.0*, %struct.snd_mixer_oss_slot*, i32*)** %112, align 8
  %114 = icmp ne i32 (%struct.snd_mixer_oss_file.0*, %struct.snd_mixer_oss_slot*, i32*)* %113, null
  br i1 %114, label %115, label %131

115:                                              ; preds = %104
  store i32 0, i32* %9, align 4
  %116 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %7, align 8
  %117 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %116, i32 0, i32 0
  %118 = load i32 (%struct.snd_mixer_oss_file.0*, %struct.snd_mixer_oss_slot*, i32*)*, i32 (%struct.snd_mixer_oss_file.0*, %struct.snd_mixer_oss_slot*, i32*)** %117, align 8
  %119 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %4, align 8
  %120 = bitcast %struct.snd_mixer_oss_file* %119 to %struct.snd_mixer_oss_file.0*
  %121 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %7, align 8
  %122 = call i32 %118(%struct.snd_mixer_oss_file.0* %120, %struct.snd_mixer_oss_slot* %121, i32* %9)
  %123 = load i32, i32* %9, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %115
  %126 = load i32, i32* %8, align 4
  %127 = shl i32 1, %126
  %128 = load i32, i32* %10, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %10, align 4
  br label %130

130:                                              ; preds = %125, %115
  br label %131

131:                                              ; preds = %130, %104
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %8, align 4
  br label %101

135:                                              ; preds = %101
  br label %136

136:                                              ; preds = %135, %97
  %137 = load i32, i32* %10, align 4
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %136, %16
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i32 @ffz(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
