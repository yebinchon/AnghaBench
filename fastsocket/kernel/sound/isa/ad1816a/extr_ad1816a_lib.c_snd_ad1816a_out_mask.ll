; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/ad1816a/extr_ad1816a_lib.c_snd_ad1816a_out_mask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/ad1816a/extr_ad1816a_lib.c_snd_ad1816a_out_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ad1816a = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ad1816a*, i8, i8, i8)* @snd_ad1816a_out_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ad1816a_out_mask(%struct.snd_ad1816a* %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3) #0 {
  %5 = alloca %struct.snd_ad1816a*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.snd_ad1816a* %0, %struct.snd_ad1816a** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  store i8 %3, i8* %8, align 1
  %9 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %5, align 8
  %10 = load i8, i8* %6, align 1
  %11 = load i8, i8* %8, align 1
  %12 = zext i8 %11 to i32
  %13 = load i8, i8* %7, align 1
  %14 = zext i8 %13 to i32
  %15 = and i32 %12, %14
  %16 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %5, align 8
  %17 = load i8, i8* %6, align 1
  %18 = call zeroext i8 @snd_ad1816a_in(%struct.snd_ad1816a* %16, i8 zeroext %17)
  %19 = zext i8 %18 to i32
  %20 = load i8, i8* %7, align 1
  %21 = zext i8 %20 to i32
  %22 = xor i32 %21, -1
  %23 = and i32 %19, %22
  %24 = or i32 %15, %23
  %25 = trunc i32 %24 to i8
  %26 = call i32 @snd_ad1816a_out(%struct.snd_ad1816a* %9, i8 zeroext %10, i8 zeroext %25)
  ret void
}

declare dso_local i32 @snd_ad1816a_out(%struct.snd_ad1816a*, i8 zeroext, i8 zeroext) #1

declare dso_local zeroext i8 @snd_ad1816a_in(%struct.snd_ad1816a*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
