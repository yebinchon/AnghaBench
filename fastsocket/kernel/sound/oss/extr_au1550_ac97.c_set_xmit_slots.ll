; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_au1550_ac97.c_set_xmit_slots.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_au1550_ac97.c_set_xmit_slots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PSC_AC97CFG = common dso_local global i32 0, align 4
@PSC_AC97CFG_TXSLOT_MASK = common dso_local global i32 0, align 4
@PSC_AC97CFG_DE_ENABLE = common dso_local global i32 0, align 4
@PSC_AC97STAT = common dso_local global i32 0, align 4
@PSC_AC97STAT_DR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @set_xmit_slots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_xmit_slots(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @PSC_AC97CFG, align 4
  %6 = call i32 @au_readl(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = call i32 (...) @au_sync()
  %8 = load i32, i32* @PSC_AC97CFG_TXSLOT_MASK, align 4
  %9 = load i32, i32* @PSC_AC97CFG_DE_ENABLE, align 4
  %10 = or i32 %8, %9
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @PSC_AC97CFG, align 4
  %16 = call i32 @au_writel(i32 %14, i32 %15)
  %17 = call i32 (...) @au_sync()
  %18 = load i32, i32* %2, align 4
  switch i32 %18, label %40 [
    i32 6, label %19
    i32 4, label %26
    i32 2, label %33
    i32 1, label %33
  ]

19:                                               ; preds = %1
  %20 = call i32 @PSC_AC97CFG_TXSLOT_ENA(i32 6)
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = call i32 @PSC_AC97CFG_TXSLOT_ENA(i32 9)
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %1, %19
  %27 = call i32 @PSC_AC97CFG_TXSLOT_ENA(i32 7)
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = call i32 @PSC_AC97CFG_TXSLOT_ENA(i32 8)
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %1, %1, %26
  %34 = call i32 @PSC_AC97CFG_TXSLOT_ENA(i32 3)
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %3, align 4
  %37 = call i32 @PSC_AC97CFG_TXSLOT_ENA(i32 4)
  %38 = load i32, i32* %3, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %33, %1
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @PSC_AC97CFG, align 4
  %43 = call i32 @au_writel(i32 %41, i32 %42)
  %44 = call i32 (...) @au_sync()
  %45 = load i32, i32* @PSC_AC97CFG_DE_ENABLE, align 4
  %46 = load i32, i32* %3, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @PSC_AC97CFG, align 4
  %50 = call i32 @au_writel(i32 %48, i32 %49)
  %51 = call i32 (...) @au_sync()
  br label %52

52:                                               ; preds = %56, %40
  %53 = load i32, i32* @PSC_AC97STAT, align 4
  %54 = call i32 @au_readl(i32 %53)
  store i32 %54, i32* %4, align 4
  %55 = call i32 (...) @au_sync()
  br label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @PSC_AC97STAT_DR, align 4
  %59 = and i32 %57, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %52, label %61

61:                                               ; preds = %56
  ret void
}

declare dso_local i32 @au_readl(i32) #1

declare dso_local i32 @au_sync(...) #1

declare dso_local i32 @au_writel(i32, i32) #1

declare dso_local i32 @PSC_AC97CFG_TXSLOT_ENA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
