; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/au88x0/extr_au88x0_core.c_vortex_mixer_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/au88x0/extr_au88x0_core.c_vortex_mixer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@mchannels = common dso_local global i32 0, align 4
@NR_MIXOUT = common dso_local global i32 0, align 4
@rampchs = common dso_local global i32 0, align 4
@VORTEX_MIX_SMP = common dso_local global i64 0, align 8
@VORTEX_MIX_ENIN = common dso_local global i64 0, align 8
@VORTEX_MIX_INVOL_A = common dso_local global i64 0, align 8
@VORTEX_MIX_VOL_A = common dso_local global i64 0, align 8
@VORTEX_MIX_INVOL_B = common dso_local global i64 0, align 8
@VORTEX_MIX_VOL_B = common dso_local global i64 0, align 8
@VORTEX_MIXER_RTBASE = common dso_local global i64 0, align 8
@MIXER_RTBASE_SIZE = common dso_local global i32 0, align 4
@VORTEX_MIXER_SR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @vortex_mixer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vortex_mixer_init(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load i32, i32* @mchannels, align 4
  %6 = load i32, i32* @NR_MIXOUT, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, 4
  %9 = trunc i64 %8 to i32
  %10 = call i32 @memset(i32 %5, i32 0, i32 %9)
  %11 = load i32, i32* @rampchs, align 4
  %12 = load i32, i32* @NR_MIXOUT, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 4
  %15 = trunc i64 %14 to i32
  %16 = call i32 @memset(i32 %11, i32 0, i32 %15)
  %17 = load i64, i64* @VORTEX_MIX_SMP, align 8
  %18 = add nsw i64 %17, 380
  store i64 %18, i64* %3, align 8
  store i32 95, i32* %4, align 4
  br label %19

19:                                               ; preds = %30, %1
  %20 = load i32, i32* %4, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @hwwrite(i32 %25, i64 %26, i32 0)
  %28 = load i64, i64* %3, align 8
  %29 = sub nsw i64 %28, 4
  store i64 %29, i64* %3, align 8
  br label %30

30:                                               ; preds = %22
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %4, align 4
  br label %19

33:                                               ; preds = %19
  %34 = load i64, i64* @VORTEX_MIX_ENIN, align 8
  %35 = add nsw i64 %34, 508
  store i64 %35, i64* %3, align 8
  store i32 127, i32* %4, align 4
  br label %36

36:                                               ; preds = %47, %33
  %37 = load i32, i32* %4, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %3, align 8
  %44 = call i32 @hwwrite(i32 %42, i64 %43, i32 0)
  %45 = load i64, i64* %3, align 8
  %46 = sub nsw i64 %45, 4
  store i64 %46, i64* %3, align 8
  br label %47

47:                                               ; preds = %39
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %4, align 4
  br label %36

50:                                               ; preds = %36
  %51 = load i64, i64* @VORTEX_MIX_SMP, align 8
  %52 = add nsw i64 %51, 380
  store i64 %52, i64* %3, align 8
  store i32 95, i32* %4, align 4
  br label %53

53:                                               ; preds = %64, %50
  %54 = load i32, i32* %4, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %53
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i64, i64* %3, align 8
  %61 = call i32 @hwwrite(i32 %59, i64 %60, i32 0)
  %62 = load i64, i64* %3, align 8
  %63 = sub nsw i64 %62, 4
  store i64 %63, i64* %3, align 8
  br label %64

64:                                               ; preds = %56
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %4, align 4
  br label %53

67:                                               ; preds = %53
  %68 = load i64, i64* @VORTEX_MIX_INVOL_A, align 8
  %69 = add nsw i64 %68, 2044
  store i64 %69, i64* %3, align 8
  store i32 511, i32* %4, align 4
  br label %70

70:                                               ; preds = %81, %67
  %71 = load i32, i32* %4, align 4
  %72 = icmp sge i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %70
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i64, i64* %3, align 8
  %78 = call i32 @hwwrite(i32 %76, i64 %77, i32 128)
  %79 = load i64, i64* %3, align 8
  %80 = sub nsw i64 %79, 4
  store i64 %80, i64* %3, align 8
  br label %81

81:                                               ; preds = %73
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %4, align 4
  br label %70

84:                                               ; preds = %70
  %85 = load i64, i64* @VORTEX_MIX_VOL_A, align 8
  %86 = add nsw i64 %85, 60
  store i64 %86, i64* %3, align 8
  store i32 15, i32* %4, align 4
  br label %87

87:                                               ; preds = %98, %84
  %88 = load i32, i32* %4, align 4
  %89 = icmp sge i32 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %87
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i64, i64* %3, align 8
  %95 = call i32 @hwwrite(i32 %93, i64 %94, i32 128)
  %96 = load i64, i64* %3, align 8
  %97 = sub nsw i64 %96, 4
  store i64 %97, i64* %3, align 8
  br label %98

98:                                               ; preds = %90
  %99 = load i32, i32* %4, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %4, align 4
  br label %87

101:                                              ; preds = %87
  %102 = load i64, i64* @VORTEX_MIX_INVOL_B, align 8
  %103 = add nsw i64 %102, 2044
  store i64 %103, i64* %3, align 8
  store i32 511, i32* %4, align 4
  br label %104

104:                                              ; preds = %115, %101
  %105 = load i32, i32* %4, align 4
  %106 = icmp sge i32 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %104
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i64, i64* %3, align 8
  %112 = call i32 @hwwrite(i32 %110, i64 %111, i32 128)
  %113 = load i64, i64* %3, align 8
  %114 = sub nsw i64 %113, 4
  store i64 %114, i64* %3, align 8
  br label %115

115:                                              ; preds = %107
  %116 = load i32, i32* %4, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %4, align 4
  br label %104

118:                                              ; preds = %104
  %119 = load i64, i64* @VORTEX_MIX_VOL_B, align 8
  %120 = add nsw i64 %119, 60
  store i64 %120, i64* %3, align 8
  store i32 15, i32* %4, align 4
  br label %121

121:                                              ; preds = %132, %118
  %122 = load i32, i32* %4, align 4
  %123 = icmp sge i32 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %121
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i64, i64* %3, align 8
  %129 = call i32 @hwwrite(i32 %127, i64 %128, i32 128)
  %130 = load i64, i64* %3, align 8
  %131 = sub nsw i64 %130, 4
  store i64 %131, i64* %3, align 8
  br label %132

132:                                              ; preds = %124
  %133 = load i32, i32* %4, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %4, align 4
  br label %121

135:                                              ; preds = %121
  %136 = load i64, i64* @VORTEX_MIXER_RTBASE, align 8
  %137 = load i32, i32* @MIXER_RTBASE_SIZE, align 4
  %138 = sub nsw i32 %137, 1
  %139 = mul nsw i32 %138, 4
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %136, %140
  store i64 %141, i64* %3, align 8
  %142 = load i32, i32* @MIXER_RTBASE_SIZE, align 4
  %143 = sub nsw i32 %142, 1
  store i32 %143, i32* %4, align 4
  br label %144

144:                                              ; preds = %155, %135
  %145 = load i32, i32* %4, align 4
  %146 = icmp sge i32 %145, 0
  br i1 %146, label %147, label %158

147:                                              ; preds = %144
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i64, i64* %3, align 8
  %152 = call i32 @hwwrite(i32 %150, i64 %151, i32 0)
  %153 = load i64, i64* %3, align 8
  %154 = sub nsw i64 %153, 4
  store i64 %154, i64* %3, align 8
  br label %155

155:                                              ; preds = %147
  %156 = load i32, i32* %4, align 4
  %157 = add nsw i32 %156, -1
  store i32 %157, i32* %4, align 4
  br label %144

158:                                              ; preds = %144
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i64, i64* @VORTEX_MIXER_SR, align 8
  %163 = call i32 @hwwrite(i32 %161, i64 %162, i32 0)
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @hwwrite(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
