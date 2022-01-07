; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_instr.c_snd_gus_iwffff_remove_sample.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_instr.c_snd_gus_iwffff_remove_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwffff_wave = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.snd_gus_card = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@IWFFFF_WAVE_ROM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_gus_iwffff_remove_sample(i8* %0, %struct.iwffff_wave* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iwffff_wave*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_gus_card*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.iwffff_wave* %1, %struct.iwffff_wave** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.snd_gus_card*
  store %struct.snd_gus_card* %10, %struct.snd_gus_card** %8, align 8
  %11 = load %struct.iwffff_wave*, %struct.iwffff_wave** %6, align 8
  %12 = getelementptr inbounds %struct.iwffff_wave, %struct.iwffff_wave* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IWFFFF_WAVE_ROM, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %27

18:                                               ; preds = %3
  %19 = load %struct.snd_gus_card*, %struct.snd_gus_card** %8, align 8
  %20 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.iwffff_wave*, %struct.iwffff_wave** %6, align 8
  %23 = getelementptr inbounds %struct.iwffff_wave, %struct.iwffff_wave* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @snd_gf1_mem_free(i32* %21, i32 %25)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %18, %17
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @snd_gf1_mem_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
