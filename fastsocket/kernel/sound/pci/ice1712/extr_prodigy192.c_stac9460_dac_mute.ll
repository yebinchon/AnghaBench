; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_prodigy192.c_stac9460_dac_mute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_prodigy192.c_stac9460_dac_mute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ice1712*, i32, i8)* @stac9460_dac_mute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stac9460_dac_mute(%struct.snd_ice1712* %0, i32 %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.snd_ice1712*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 %2, i8* %6, align 1
  %10 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call zeroext i8 @stac9460_get(%struct.snd_ice1712* %10, i32 %11)
  store i8 %12, i8* %8, align 1
  %13 = load i8, i8* %6, align 1
  %14 = zext i8 %13 to i32
  %15 = xor i32 %14, -1
  %16 = shl i32 %15, 7
  %17 = and i32 %16, 128
  %18 = load i8, i8* %8, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 %19, -129
  %21 = or i32 %17, %20
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %7, align 1
  %23 = load i8, i8* %7, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* %8, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp ne i32 %24, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %3
  %32 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i8, i8* %7, align 1
  %35 = call i32 @stac9460_put(%struct.snd_ice1712* %32, i32 %33, i8 zeroext %34)
  br label %36

36:                                               ; preds = %31, %3
  %37 = load i32, i32* %9, align 4
  ret i32 %37
}

declare dso_local zeroext i8 @stac9460_get(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @stac9460_put(%struct.snd_ice1712*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
