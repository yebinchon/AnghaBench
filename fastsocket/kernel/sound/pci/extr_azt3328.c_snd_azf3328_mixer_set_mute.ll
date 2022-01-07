; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_azt3328.c_snd_azf3328_mixer_set_mute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_azt3328.c_snd_azf3328_mixer_set_mute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_azf3328 = type { i32 }

@AZF_MUTE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_azf3328*, i32, i32)* @snd_azf3328_mixer_set_mute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_azf3328_mixer_set_mute(%struct.snd_azf3328* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_azf3328*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.snd_azf3328* %0, %struct.snd_azf3328** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.snd_azf3328*, %struct.snd_azf3328** %4, align 8
  %10 = getelementptr inbounds %struct.snd_azf3328, %struct.snd_azf3328* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = add i32 %11, %12
  %14 = add i32 %13, 1
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i32, i32* @AZF_MUTE_BIT, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @snd_azf3328_io_reg_setb(i64 %16, i32 %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  br label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %8, align 4
  br label %29

29:                                               ; preds = %27, %22
  %30 = phi i32 [ %26, %22 ], [ %28, %27 ]
  ret i32 %30
}

declare dso_local i32 @snd_azf3328_io_reg_setb(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
