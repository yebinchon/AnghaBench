; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/es1688/extr_es1688_lib.c_snd_es1688_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/es1688/extr_es1688_lib.c_snd_es1688_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_es1688 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_es1688*, i8)* @snd_es1688_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es1688_read(%struct.snd_es1688* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_es1688*, align 8
  %5 = alloca i8, align 1
  store %struct.snd_es1688* %0, %struct.snd_es1688** %4, align 8
  store i8 %1, i8* %5, align 1
  %6 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %7 = call i32 @snd_es1688_dsp_command(%struct.snd_es1688* %6, i8 zeroext -64)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %19

10:                                               ; preds = %2
  %11 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %12 = load i8, i8* %5, align 1
  %13 = call i32 @snd_es1688_dsp_command(%struct.snd_es1688* %11, i8 zeroext %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  store i32 -1, i32* %3, align 4
  br label %19

16:                                               ; preds = %10
  %17 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %18 = call i32 @snd_es1688_dsp_get_byte(%struct.snd_es1688* %17)
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %16, %15, %9
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @snd_es1688_dsp_command(%struct.snd_es1688*, i8 zeroext) #1

declare dso_local i32 @snd_es1688_dsp_get_byte(%struct.snd_es1688*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
