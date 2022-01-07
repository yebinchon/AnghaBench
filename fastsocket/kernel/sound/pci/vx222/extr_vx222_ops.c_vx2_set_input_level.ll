; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/vx222/extr_vx222_ops.c_vx2_set_input_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/vx222/extr_vx222_ops.c_vx2_set_input_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_vx222 = type { i32, i32, i64* }

@V2_MICRO_LEVEL_RANGE = common dso_local global i64 0, align 8
@MICRO_SELECT_PREAMPLI_MASK = common dso_local global i32 0, align 4
@MICRO_SELECT_PREAMPLI_OFFSET = common dso_local global i32 0, align 4
@SELMIC = common dso_local global i32 0, align 4
@DATA = common dso_local global i32 0, align 4
@VX_DATA_CODEC_MASK = common dso_local global i32 0, align 4
@RUER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_vx222*)* @vx2_set_input_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vx2_set_input_level(%struct.snd_vx222* %0) #0 {
  %2 = alloca %struct.snd_vx222*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_vx222* %0, %struct.snd_vx222** %2, align 8
  %7 = load %struct.snd_vx222*, %struct.snd_vx222** %2, align 8
  %8 = getelementptr inbounds %struct.snd_vx222, %struct.snd_vx222* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  %10 = load i64, i64* @V2_MICRO_LEVEL_RANGE, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %12, %10
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %18, %1
  %16 = load i32, i32* %4, align 4
  %17 = icmp sgt i32 %16, 210
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = sub nsw i32 %21, 36
  store i32 %22, i32* %4, align 4
  br label %15

23:                                               ; preds = %15
  %24 = load i32, i32* %5, align 4
  %25 = icmp sge i32 %24, 4
  %26 = zext i1 %25 to i32
  %27 = call i64 @snd_BUG_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %96

30:                                               ; preds = %23
  %31 = load i32, i32* @MICRO_SELECT_PREAMPLI_MASK, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.snd_vx222*, %struct.snd_vx222** %2, align 8
  %34 = getelementptr inbounds %struct.snd_vx222, %struct.snd_vx222* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @MICRO_SELECT_PREAMPLI_OFFSET, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* @MICRO_SELECT_PREAMPLI_MASK, align 4
  %41 = and i32 %39, %40
  %42 = load %struct.snd_vx222*, %struct.snd_vx222** %2, align 8
  %43 = getelementptr inbounds %struct.snd_vx222, %struct.snd_vx222* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.snd_vx222*, %struct.snd_vx222** %2, align 8
  %47 = load i32, i32* @SELMIC, align 4
  %48 = load %struct.snd_vx222*, %struct.snd_vx222** %2, align 8
  %49 = getelementptr inbounds %struct.snd_vx222, %struct.snd_vx222* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @vx_outl(%struct.snd_vx222* %46, i32 %47, i32 %50)
  %52 = load i32, i32* %4, align 4
  %53 = shl i32 %52, 16
  %54 = load %struct.snd_vx222*, %struct.snd_vx222** %2, align 8
  %55 = getelementptr inbounds %struct.snd_vx222, %struct.snd_vx222* %54, i32 0, i32 2
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 1
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = shl i32 %59, 8
  %61 = or i32 %53, %60
  %62 = load %struct.snd_vx222*, %struct.snd_vx222** %2, align 8
  %63 = getelementptr inbounds %struct.snd_vx222, %struct.snd_vx222* %62, i32 0, i32 2
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 0
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = or i32 %61, %67
  store i32 %68, i32* %6, align 4
  %69 = load %struct.snd_vx222*, %struct.snd_vx222** %2, align 8
  %70 = load i32, i32* @DATA, align 4
  %71 = call i32 @vx_inl(%struct.snd_vx222* %69, i32 %70)
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %87, %30
  %73 = load i32, i32* %3, align 4
  %74 = icmp slt i32 %73, 32
  br i1 %74, label %75, label %92

75:                                               ; preds = %72
  %76 = load %struct.snd_vx222*, %struct.snd_vx222** %2, align 8
  %77 = load i32, i32* @DATA, align 4
  %78 = load i32, i32* %6, align 4
  %79 = and i32 %78, -2147483648
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i32, i32* @VX_DATA_CODEC_MASK, align 4
  br label %84

83:                                               ; preds = %75
  br label %84

84:                                               ; preds = %83, %81
  %85 = phi i32 [ %82, %81 ], [ 0, %83 ]
  %86 = call i32 @vx_outl(%struct.snd_vx222* %76, i32 %77, i32 %85)
  br label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %3, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %3, align 4
  %90 = load i32, i32* %6, align 4
  %91 = shl i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %72

92:                                               ; preds = %72
  %93 = load %struct.snd_vx222*, %struct.snd_vx222** %2, align 8
  %94 = load i32, i32* @RUER, align 4
  %95 = call i32 @vx_inl(%struct.snd_vx222* %93, i32 %94)
  br label %96

96:                                               ; preds = %92, %29
  ret void
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @vx_outl(%struct.snd_vx222*, i32, i32) #1

declare dso_local i32 @vx_inl(%struct.snd_vx222*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
