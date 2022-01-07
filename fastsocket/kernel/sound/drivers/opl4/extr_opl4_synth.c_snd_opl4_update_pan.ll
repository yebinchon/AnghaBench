; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl4/extr_opl4_synth.c_snd_opl4_update_pan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl4/extr_opl4_synth.c_snd_opl4_update_pan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_opl4 = type { i32 }
%struct.opl4_voice = type { i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.TYPE_3__ = type { i32 }

@MIDI_CTL_MSB_PAN = common dso_local global i64 0, align 8
@OPL4_PAN_POT_MASK = common dso_local global i32 0, align 4
@OPL4_REG_MISC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_opl4*, %struct.opl4_voice*)* @snd_opl4_update_pan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_opl4_update_pan(%struct.snd_opl4* %0, %struct.opl4_voice* %1) #0 {
  %3 = alloca %struct.snd_opl4*, align 8
  %4 = alloca %struct.opl4_voice*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_opl4* %0, %struct.snd_opl4** %3, align 8
  store %struct.opl4_voice* %1, %struct.opl4_voice** %4, align 8
  %6 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %7 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %6, i32 0, i32 3
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %12 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %2
  %18 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %19 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @MIDI_CTL_MSB_PAN, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %25, 64
  %27 = ashr i32 %26, 3
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %17, %2
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, -7
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 -7, i32* %5, align 4
  br label %39

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = icmp sgt i32 %35, 7
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 7, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %34
  br label %39

39:                                               ; preds = %38, %33
  %40 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %41 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @OPL4_PAN_POT_MASK, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @OPL4_PAN_POT_MASK, align 4
  %48 = and i32 %46, %47
  %49 = or i32 %45, %48
  %50 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %51 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.snd_opl4*, %struct.snd_opl4** %3, align 8
  %53 = load i64, i64* @OPL4_REG_MISC, align 8
  %54 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %55 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  %58 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %59 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @snd_opl4_write(%struct.snd_opl4* %52, i64 %57, i32 %60)
  ret void
}

declare dso_local i32 @snd_opl4_write(%struct.snd_opl4*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
