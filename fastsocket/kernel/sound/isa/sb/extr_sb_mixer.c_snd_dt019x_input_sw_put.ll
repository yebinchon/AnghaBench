; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb_mixer.c_snd_dt019x_input_sw_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb_mixer.c_snd_dt019x_input_sw_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_sb = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SB_DT019X_CAP_CD = common dso_local global i8 0, align 1
@SB_DT019X_CAP_MIC = common dso_local global i8 0, align 1
@SB_DT019X_CAP_LINE = common dso_local global i8 0, align 1
@SB_DT019X_CAP_SYNTH = common dso_local global i8 0, align 1
@SB_DT019X_CAP_MAIN = common dso_local global i8 0, align 1
@SB_DT019X_CAPTURE_SW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_dt019x_input_sw_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_dt019x_input_sw_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_sb*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %12 = call %struct.snd_sb* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.snd_sb* %12, %struct.snd_sb** %6, align 8
  %13 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %14 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sgt i32 %19, 4
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %71

24:                                               ; preds = %2
  %25 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %26 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %42 [
    i32 0, label %32
    i32 1, label %34
    i32 2, label %36
    i32 3, label %38
    i32 4, label %40
  ]

32:                                               ; preds = %24
  %33 = load i8, i8* @SB_DT019X_CAP_CD, align 1
  store i8 %33, i8* %9, align 1
  br label %44

34:                                               ; preds = %24
  %35 = load i8, i8* @SB_DT019X_CAP_MIC, align 1
  store i8 %35, i8* %9, align 1
  br label %44

36:                                               ; preds = %24
  %37 = load i8, i8* @SB_DT019X_CAP_LINE, align 1
  store i8 %37, i8* %9, align 1
  br label %44

38:                                               ; preds = %24
  %39 = load i8, i8* @SB_DT019X_CAP_SYNTH, align 1
  store i8 %39, i8* %9, align 1
  br label %44

40:                                               ; preds = %24
  %41 = load i8, i8* @SB_DT019X_CAP_MAIN, align 1
  store i8 %41, i8* %9, align 1
  br label %44

42:                                               ; preds = %24
  %43 = load i8, i8* @SB_DT019X_CAP_MAIN, align 1
  store i8 %43, i8* %9, align 1
  br label %44

44:                                               ; preds = %42, %40, %38, %36, %34, %32
  %45 = load %struct.snd_sb*, %struct.snd_sb** %6, align 8
  %46 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %45, i32 0, i32 0
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @spin_lock_irqsave(i32* %46, i64 %47)
  %49 = load %struct.snd_sb*, %struct.snd_sb** %6, align 8
  %50 = load i32, i32* @SB_DT019X_CAPTURE_SW, align 4
  %51 = call zeroext i8 @snd_sbmixer_read(%struct.snd_sb* %49, i32 %50)
  store i8 %51, i8* %10, align 1
  %52 = load i8, i8* %9, align 1
  %53 = zext i8 %52 to i32
  %54 = load i8, i8* %10, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp ne i32 %53, %55
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %44
  %61 = load %struct.snd_sb*, %struct.snd_sb** %6, align 8
  %62 = load i32, i32* @SB_DT019X_CAPTURE_SW, align 4
  %63 = load i8, i8* %9, align 1
  %64 = call i32 @snd_sbmixer_write(%struct.snd_sb* %61, i32 %62, i8 zeroext %63)
  br label %65

65:                                               ; preds = %60, %44
  %66 = load %struct.snd_sb*, %struct.snd_sb** %6, align 8
  %67 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %66, i32 0, i32 0
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %65, %21
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.snd_sb* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local zeroext i8 @snd_sbmixer_read(%struct.snd_sb*, i32) #1

declare dso_local i32 @snd_sbmixer_write(%struct.snd_sb*, i32, i8 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
