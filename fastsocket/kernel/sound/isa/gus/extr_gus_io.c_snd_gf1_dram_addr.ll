; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_io.c_snd_gf1_dram_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_io.c_snd_gf1_dram_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_gus_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_gf1_dram_addr(%struct.snd_gus_card* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_gus_card*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_gus_card* %0, %struct.snd_gus_card** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %6 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @outb(i8 zeroext 67, i32 %8)
  %10 = call i32 (...) @mb()
  %11 = load i32, i32* %4, align 4
  %12 = trunc i32 %11 to i16
  %13 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %14 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @outw(i16 zeroext %12, i32 %16)
  %18 = call i32 (...) @mb()
  %19 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %20 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @outb(i8 zeroext 68, i32 %22)
  %24 = call i32 (...) @mb()
  %25 = load i32, i32* %4, align 4
  %26 = lshr i32 %25, 16
  %27 = trunc i32 %26 to i8
  %28 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %29 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @outb(i8 zeroext %27, i32 %31)
  %33 = call i32 (...) @mb()
  ret void
}

declare dso_local i32 @outb(i8 zeroext, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @outw(i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
