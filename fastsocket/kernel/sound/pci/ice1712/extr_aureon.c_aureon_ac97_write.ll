; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_aureon.c_aureon_ac97_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_aureon.c_aureon_ac97_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { %struct.aureon_spec* }
%struct.aureon_spec = type { i16* }

@AUREON_AC97_ADDR = common dso_local global i32 0, align 4
@AUREON_AC97_DATA_MASK = common dso_local global i32 0, align 4
@AUREON_AC97_DATA_LOW = common dso_local global i32 0, align 4
@AUREON_AC97_DATA_HIGH = common dso_local global i32 0, align 4
@AUREON_AC97_COMMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*, i16, i16)* @aureon_ac97_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aureon_ac97_write(%struct.snd_ice1712* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.snd_ice1712*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca %struct.aureon_spec*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %9 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %10 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %9, i32 0, i32 0
  %11 = load %struct.aureon_spec*, %struct.aureon_spec** %10, align 8
  store %struct.aureon_spec* %11, %struct.aureon_spec** %7, align 8
  %12 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %13 = call i32 @snd_ice1712_gpio_read(%struct.snd_ice1712* %12)
  %14 = and i32 %13, -256
  %15 = load i16, i16* %5, align 2
  %16 = zext i16 %15 to i32
  %17 = and i32 %16, 127
  %18 = or i32 %14, %17
  store i32 %18, i32* %8, align 4
  %19 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %19, i32 %20)
  %22 = call i32 @udelay(i32 10)
  %23 = load i32, i32* @AUREON_AC97_ADDR, align 4
  %24 = load i32, i32* %8, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %8, align 4
  %26 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %26, i32 %27)
  %29 = call i32 @udelay(i32 10)
  %30 = load i32, i32* @AUREON_AC97_ADDR, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %8, align 4
  %34 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %34, i32 %35)
  %37 = call i32 @udelay(i32 10)
  %38 = load i32, i32* @AUREON_AC97_DATA_MASK, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %8, align 4
  %42 = load i16, i16* %6, align 2
  %43 = zext i16 %42 to i32
  %44 = load i32, i32* @AUREON_AC97_DATA_MASK, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  %48 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %48, i32 %49)
  %51 = call i32 @udelay(i32 10)
  %52 = load i32, i32* @AUREON_AC97_DATA_LOW, align 4
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %8, align 4
  %55 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %55, i32 %56)
  %58 = call i32 @udelay(i32 10)
  %59 = load i32, i32* @AUREON_AC97_DATA_LOW, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %8, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %8, align 4
  %63 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %63, i32 %64)
  %66 = call i32 @udelay(i32 10)
  %67 = load i32, i32* @AUREON_AC97_DATA_MASK, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %8, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %8, align 4
  %71 = load i16, i16* %6, align 2
  %72 = zext i16 %71 to i32
  %73 = ashr i32 %72, 8
  %74 = load i32, i32* @AUREON_AC97_DATA_MASK, align 4
  %75 = and i32 %73, %74
  %76 = load i32, i32* %8, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %8, align 4
  %78 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %78, i32 %79)
  %81 = call i32 @udelay(i32 10)
  %82 = load i32, i32* @AUREON_AC97_DATA_HIGH, align 4
  %83 = load i32, i32* %8, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %8, align 4
  %85 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %85, i32 %86)
  %88 = call i32 @udelay(i32 10)
  %89 = load i32, i32* @AUREON_AC97_DATA_HIGH, align 4
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %8, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %8, align 4
  %93 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %93, i32 %94)
  %96 = call i32 @udelay(i32 10)
  %97 = load i32, i32* @AUREON_AC97_COMMIT, align 4
  %98 = load i32, i32* %8, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %8, align 4
  %100 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %100, i32 %101)
  %103 = call i32 @udelay(i32 10)
  %104 = load i32, i32* @AUREON_AC97_COMMIT, align 4
  %105 = xor i32 %104, -1
  %106 = load i32, i32* %8, align 4
  %107 = and i32 %106, %105
  store i32 %107, i32* %8, align 4
  %108 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %108, i32 %109)
  %111 = call i32 @udelay(i32 10)
  %112 = load i16, i16* %6, align 2
  %113 = load %struct.aureon_spec*, %struct.aureon_spec** %7, align 8
  %114 = getelementptr inbounds %struct.aureon_spec, %struct.aureon_spec* %113, i32 0, i32 0
  %115 = load i16*, i16** %114, align 8
  %116 = load i16, i16* %5, align 2
  %117 = zext i16 %116 to i32
  %118 = and i32 %117, 127
  %119 = ashr i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i16, i16* %115, i64 %120
  store i16 %112, i16* %121, align 2
  ret void
}

declare dso_local i32 @snd_ice1712_gpio_read(%struct.snd_ice1712*) #1

declare dso_local i32 @snd_ice1712_gpio_write(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
