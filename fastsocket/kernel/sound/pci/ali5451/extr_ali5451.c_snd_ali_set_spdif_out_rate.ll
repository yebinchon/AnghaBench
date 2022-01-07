; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ali5451/extr_ali5451.c_snd_ali_set_spdif_out_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ali5451/extr_ali5451.c_snd_ali_set_spdif_out_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ali = type { i32 }

@ALI_SPDIF_CTRL = common dso_local global i64 0, align 8
@ALI_SPDIF_CS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ali*, i32)* @snd_ali_set_spdif_out_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ali_set_spdif_out_rate(%struct.snd_ali* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_ali*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct.snd_ali* %0, %struct.snd_ali** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %10 [
    i32 32000, label %8
    i32 48000, label %9
  ]

8:                                                ; preds = %2
  store i32 768, i32* %6, align 4
  br label %11

9:                                                ; preds = %2
  store i32 512, i32* %6, align 4
  br label %11

10:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %10, %9, %8
  %12 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %13 = load i64, i64* @ALI_SPDIF_CTRL, align 8
  %14 = call i32 @ALI_REG(%struct.snd_ali* %12, i64 %13)
  %15 = call zeroext i8 @inb(i32 %14)
  store i8 %15, i8* %5, align 1
  %16 = load i8, i8* %5, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %17, 191
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %5, align 1
  %20 = load i8, i8* %5, align 1
  %21 = zext i8 %20 to i32
  %22 = or i32 %21, 128
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %5, align 1
  %24 = load i8, i8* %5, align 1
  %25 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %26 = load i64, i64* @ALI_SPDIF_CTRL, align 8
  %27 = call i32 @ALI_REG(%struct.snd_ali* %25, i64 %26)
  %28 = call i32 @outb(i8 zeroext %24, i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, 32
  %31 = trunc i32 %30 to i8
  %32 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %33 = load i64, i64* @ALI_SPDIF_CS, align 8
  %34 = add nsw i64 %33, 2
  %35 = call i32 @ALI_REG(%struct.snd_ali* %32, i64 %34)
  %36 = call i32 @outb(i8 zeroext %31, i32 %35)
  %37 = load i8, i8* %5, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, -129
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %5, align 1
  %41 = load i8, i8* %5, align 1
  %42 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %43 = load i64, i64* @ALI_SPDIF_CTRL, align 8
  %44 = call i32 @ALI_REG(%struct.snd_ali* %42, i64 %43)
  %45 = call i32 @outb(i8 zeroext %41, i32 %44)
  %46 = load i32, i32* %4, align 4
  %47 = or i32 %46, 16
  %48 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %49 = load i64, i64* @ALI_SPDIF_CS, align 8
  %50 = add nsw i64 %49, 2
  %51 = call i32 @ALI_REG(%struct.snd_ali* %48, i64 %50)
  %52 = call i32 @outw(i32 %47, i32 %51)
  ret void
}

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @ALI_REG(%struct.snd_ali*, i64) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

declare dso_local i32 @outw(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
