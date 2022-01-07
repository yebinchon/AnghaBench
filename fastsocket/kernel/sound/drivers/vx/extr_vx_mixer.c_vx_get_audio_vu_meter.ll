; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_mixer.c_vx_get_audio_vu_meter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_mixer.c_vx_get_audio_vu_meter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32 }
%struct.vx_vu_meter = type { i32, i32, i32 }
%struct.vx_rmh = type { i32, i32*, i32* }

@VX_STAT_IS_STALE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CMD_AUDIO_VU_PIC_METER = common dso_local global i32 0, align 4
@VU_METER_CHANNELS = common dso_local global i32 0, align 4
@COMMAND_RECORD_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vx_core*, i32, i32, %struct.vx_vu_meter*)* @vx_get_audio_vu_meter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vx_get_audio_vu_meter(%struct.vx_core* %0, i32 %1, i32 %2, %struct.vx_vu_meter* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vx_core*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vx_vu_meter*, align 8
  %10 = alloca %struct.vx_rmh, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vx_core* %0, %struct.vx_core** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.vx_vu_meter* %3, %struct.vx_vu_meter** %9, align 8
  %13 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %14 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @VX_STAT_IS_STALE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %112

22:                                               ; preds = %4
  %23 = load i32, i32* @CMD_AUDIO_VU_PIC_METER, align 4
  %24 = call i32 @vx_init_rmh(%struct.vx_rmh* %10, i32 %23)
  %25 = load i32, i32* @VU_METER_CHANNELS, align 4
  %26 = mul nsw i32 2, %25
  %27 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %10, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, %26
  store i32 %29, i32* %27, align 8
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %22
  %33 = load i32, i32* @COMMAND_RECORD_MASK, align 4
  %34 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %10, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %33
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %32, %22
  %40 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %10, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  store i32 0, i32* %42, align 4
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %57, %39
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @VU_METER_CHANNELS, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %48, %49
  %51 = shl i32 1, %50
  %52 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %10, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %51
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %47
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %11, align 4
  br label %43

60:                                               ; preds = %43
  %61 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %62 = call i32 @vx_send_msg(%struct.vx_core* %61, %struct.vx_rmh* %10)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %5, align 4
  br label %112

67:                                               ; preds = %60
  store i32 0, i32* %11, align 4
  br label %68

68:                                               ; preds = %108, %67
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @VU_METER_CHANNELS, align 4
  %71 = mul nsw i32 2, %70
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %73, label %111

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %10, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %78, %79
  %81 = shl i32 1, %80
  %82 = and i32 %77, %81
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 1, i32 0
  %86 = load %struct.vx_vu_meter*, %struct.vx_vu_meter** %9, align 8
  %87 = getelementptr inbounds %struct.vx_vu_meter, %struct.vx_vu_meter* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %10, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.vx_vu_meter*, %struct.vx_vu_meter** %9, align 8
  %96 = getelementptr inbounds %struct.vx_vu_meter, %struct.vx_vu_meter* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %10, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 2
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.vx_vu_meter*, %struct.vx_vu_meter** %9, align 8
  %105 = getelementptr inbounds %struct.vx_vu_meter, %struct.vx_vu_meter* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 4
  %106 = load %struct.vx_vu_meter*, %struct.vx_vu_meter** %9, align 8
  %107 = getelementptr inbounds %struct.vx_vu_meter, %struct.vx_vu_meter* %106, i32 1
  store %struct.vx_vu_meter* %107, %struct.vx_vu_meter** %9, align 8
  br label %108

108:                                              ; preds = %73
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, 2
  store i32 %110, i32* %11, align 4
  br label %68

111:                                              ; preds = %68
  store i32 0, i32* %5, align 4
  br label %112

112:                                              ; preds = %111, %65, %19
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @vx_init_rmh(%struct.vx_rmh*, i32) #1

declare dso_local i32 @vx_send_msg(%struct.vx_core*, %struct.vx_rmh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
