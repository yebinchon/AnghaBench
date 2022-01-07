; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_aureon.c_aureon_ac97_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_aureon.c_aureon_ac97_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { %struct.aureon_spec* }
%struct.aureon_spec = type { i16* }

@aureon_ac97_init.ac97_defaults = internal constant [37 x i16] [i16 0, i16 -27072, i16 2, i16 -32768, i16 4, i16 -32768, i16 6, i16 -32768, i16 12, i16 -32760, i16 14, i16 -32760, i16 16, i16 -30712, i16 18, i16 -30712, i16 20, i16 -30712, i16 22, i16 -30712, i16 24, i16 -30712, i16 28, i16 -32768, i16 38, i16 15, i16 40, i16 513, i16 44, i16 -17536, i16 50, i16 -17536, i16 124, i16 -31868, i16 126, i16 30276, i16 -1], align 16
@AUREON_AC97_RESET = common dso_local global i32 0, align 4
@AUREON_AC97_DATA_MASK = common dso_local global i32 0, align 4
@AC97_MASTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ice1712*)* @aureon_ac97_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aureon_ac97_init(%struct.snd_ice1712* %0) #0 {
  %2 = alloca %struct.snd_ice1712*, align 8
  %3 = alloca %struct.aureon_spec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %2, align 8
  %6 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %7 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %6, i32 0, i32 0
  %8 = load %struct.aureon_spec*, %struct.aureon_spec** %7, align 8
  store %struct.aureon_spec* %8, %struct.aureon_spec** %3, align 8
  %9 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %10 = call i32 @snd_ice1712_gpio_read(%struct.snd_ice1712* %9)
  %11 = load i32, i32* @AUREON_AC97_RESET, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @AUREON_AC97_DATA_MASK, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  store i32 %15, i32* %5, align 4
  %16 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %16, i32 %17)
  %19 = call i32 @udelay(i32 3)
  %20 = load i32, i32* @AUREON_AC97_RESET, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %24, i32 %25)
  %27 = call i32 @udelay(i32 3)
  %28 = load i32, i32* @AUREON_AC97_RESET, align 4
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %31, i32 %32)
  %34 = call i32 @udelay(i32 3)
  %35 = load %struct.aureon_spec*, %struct.aureon_spec** %3, align 8
  %36 = getelementptr inbounds %struct.aureon_spec, %struct.aureon_spec* %35, i32 0, i32 0
  %37 = call i32 @memset(i16** %36, i32 0, i32 8)
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %62, %1
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [37 x i16], [37 x i16]* @aureon_ac97_init.ac97_defaults, i64 0, i64 %40
  %42 = load i16, i16* %41, align 2
  %43 = zext i16 %42 to i32
  %44 = icmp ne i32 %43, 65535
  br i1 %44, label %45, label %65

45:                                               ; preds = %38
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [37 x i16], [37 x i16]* @aureon_ac97_init.ac97_defaults, i64 0, i64 %48
  %50 = load i16, i16* %49, align 2
  %51 = load %struct.aureon_spec*, %struct.aureon_spec** %3, align 8
  %52 = getelementptr inbounds %struct.aureon_spec, %struct.aureon_spec* %51, i32 0, i32 0
  %53 = load i16*, i16** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [37 x i16], [37 x i16]* @aureon_ac97_init.ac97_defaults, i64 0, i64 %55
  %57 = load i16, i16* %56, align 2
  %58 = zext i16 %57 to i32
  %59 = ashr i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i16, i16* %53, i64 %60
  store i16 %50, i16* %61, align 2
  br label %62

62:                                               ; preds = %45
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 2
  store i32 %64, i32* %4, align 4
  br label %38

65:                                               ; preds = %38
  %66 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %67 = load i32, i32* @AC97_MASTER, align 4
  %68 = call i32 @aureon_ac97_write(%struct.snd_ice1712* %66, i32 %67, i32 0)
  ret i32 0
}

declare dso_local i32 @snd_ice1712_gpio_read(%struct.snd_ice1712*) #1

declare dso_local i32 @snd_ice1712_gpio_write(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @memset(i16**, i32, i32) #1

declare dso_local i32 @aureon_ac97_write(%struct.snd_ice1712*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
