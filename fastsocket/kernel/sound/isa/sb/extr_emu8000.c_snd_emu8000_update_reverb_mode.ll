; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_emu8000.c_snd_emu8000_update_reverb_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_emu8000.c_snd_emu8000_update_reverb_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.snd_emu8000 = type { i32 }

@SNDRV_EMU8000_REVERB_NUMBERS = common dso_local global i32 0, align 4
@SNDRV_EMU8000_REVERB_PREDEFINED = common dso_local global i32 0, align 4
@reverb_defined = common dso_local global i32* null, align 8
@reverb_cmds = common dso_local global %struct.TYPE_4__* null, align 8
@DATA1 = common dso_local global i64 0, align 8
@reverb_parm = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_emu8000_update_reverb_mode(%struct.snd_emu8000* %0) #0 {
  %2 = alloca %struct.snd_emu8000*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_emu8000* %0, %struct.snd_emu8000** %2, align 8
  %6 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %7 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %26, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @SNDRV_EMU8000_REVERB_NUMBERS, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %26, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @SNDRV_EMU8000_REVERB_PREDEFINED, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load i32*, i32** @reverb_defined, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19, %11, %1
  br label %69

27:                                               ; preds = %19, %15
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %66, %27
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 28
  br i1 %30, label %31, label %69

31:                                               ; preds = %28
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reverb_cmds, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DATA1, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %42 = call i32 @EMU8000_DATA1(%struct.snd_emu8000* %41)
  store i32 %42, i32* %5, align 4
  br label %46

43:                                               ; preds = %31
  %44 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %45 = call i32 @EMU8000_DATA2(%struct.snd_emu8000* %44)
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %43, %40
  %47 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reverb_cmds, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** @reverb_parm, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @snd_emu8000_poke(%struct.snd_emu8000* %47, i32 %48, i32 %54, i32 %64)
  br label %66

66:                                               ; preds = %46
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %4, align 4
  br label %28

69:                                               ; preds = %26, %28
  ret void
}

declare dso_local i32 @EMU8000_DATA1(%struct.snd_emu8000*) #1

declare dso_local i32 @EMU8000_DATA2(%struct.snd_emu8000*) #1

declare dso_local i32 @snd_emu8000_poke(%struct.snd_emu8000*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
