; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ali5451/extr_ali5451.c_snd_ali_get_spdif_in_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ali5451/extr_ali5451.c_snd_ali_get_spdif_in_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ali = type { i32 }

@ALI_SPDIF_CTRL = common dso_local global i64 0, align 8
@ALI_SPDIF_CS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ali*)* @snd_ali_get_spdif_in_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ali_get_spdif_in_rate(%struct.snd_ali* %0) #0 {
  %2 = alloca %struct.snd_ali*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.snd_ali* %0, %struct.snd_ali** %2, align 8
  %5 = load %struct.snd_ali*, %struct.snd_ali** %2, align 8
  %6 = load i64, i64* @ALI_SPDIF_CTRL, align 8
  %7 = call i32 @ALI_REG(%struct.snd_ali* %5, i64 %6)
  %8 = call i32 @inb(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = and i32 %9, 127
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = or i32 %11, 64
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.snd_ali*, %struct.snd_ali** %2, align 8
  %15 = load i64, i64* @ALI_SPDIF_CTRL, align 8
  %16 = call i32 @ALI_REG(%struct.snd_ali* %14, i64 %15)
  %17 = call i32 @outb(i32 %13, i32 %16)
  %18 = load %struct.snd_ali*, %struct.snd_ali** %2, align 8
  %19 = call i32 @snd_ali_detect_spdif_rate(%struct.snd_ali* %18)
  %20 = load %struct.snd_ali*, %struct.snd_ali** %2, align 8
  %21 = load i64, i64* @ALI_SPDIF_CS, align 8
  %22 = add nsw i64 %21, 3
  %23 = call i32 @ALI_REG(%struct.snd_ali* %20, i64 %22)
  %24 = call i32 @inb(i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, 15
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  switch i32 %27, label %31 [
    i32 0, label %28
    i32 1, label %29
    i32 2, label %30
  ]

28:                                               ; preds = %1
  store i32 44100, i32* %3, align 4
  br label %32

29:                                               ; preds = %1
  store i32 48000, i32* %3, align 4
  br label %32

30:                                               ; preds = %1
  store i32 32000, i32* %3, align 4
  br label %32

31:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %30, %29, %28
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @ALI_REG(%struct.snd_ali*, i64) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @snd_ali_detect_spdif_rate(%struct.snd_ali*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
