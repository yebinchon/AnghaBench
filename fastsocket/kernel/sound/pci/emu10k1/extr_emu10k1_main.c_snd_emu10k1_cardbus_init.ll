; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emu10k1_main.c_snd_emu10k1_cardbus_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emu10k1_main.c_snd_emu10k1_cardbus_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i32 }

@TINA2_VOLUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_emu10k1*)* @snd_emu10k1_cardbus_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_cardbus_init(%struct.snd_emu10k1* %0) #0 {
  %2 = alloca %struct.snd_emu10k1*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %2, align 8
  %5 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %6 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i32 %7, 56
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @inl(i64 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @outl(i32 13631488, i64 %12)
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @inl(i64 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @outl(i32 13631489, i64 %16)
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @inl(i64 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @outl(i32 13631583, i64 %20)
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @inl(i64 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i64, i64* %3, align 8
  %25 = call i32 @outl(i32 13631615, i64 %24)
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @inl(i64 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @outl(i32 9437311, i64 %28)
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @inl(i64 %30)
  store i32 %31, i32* %4, align 4
  %32 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %33 = load i32, i32* @TINA2_VOLUME, align 4
  %34 = call i32 @snd_emu10k1_ptr20_write(%struct.snd_emu10k1* %32, i32 %33, i32 0, i32 -16843010)
  %35 = call i32 @msleep(i32 200)
  ret i32 0
}

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @snd_emu10k1_ptr20_write(%struct.snd_emu10k1*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
