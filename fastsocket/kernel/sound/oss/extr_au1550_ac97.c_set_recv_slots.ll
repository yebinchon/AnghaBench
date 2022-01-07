; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_au1550_ac97.c_set_recv_slots.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_au1550_ac97.c_set_recv_slots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PSC_AC97CFG = common dso_local global i32 0, align 4
@PSC_AC97CFG_RXSLOT_MASK = common dso_local global i32 0, align 4
@PSC_AC97CFG_DE_ENABLE = common dso_local global i32 0, align 4
@PSC_AC97STAT = common dso_local global i32 0, align 4
@PSC_AC97STAT_DR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @set_recv_slots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_recv_slots(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @PSC_AC97CFG, align 4
  %6 = call i32 @au_readl(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = call i32 (...) @au_sync()
  %8 = load i32, i32* @PSC_AC97CFG_RXSLOT_MASK, align 4
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
  %18 = call i32 @PSC_AC97CFG_RXSLOT_ENA(i32 3)
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = call i32 @PSC_AC97CFG_RXSLOT_ENA(i32 4)
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @PSC_AC97CFG, align 4
  %26 = call i32 @au_writel(i32 %24, i32 %25)
  %27 = call i32 (...) @au_sync()
  %28 = load i32, i32* @PSC_AC97CFG_DE_ENABLE, align 4
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @PSC_AC97CFG, align 4
  %33 = call i32 @au_writel(i32 %31, i32 %32)
  %34 = call i32 (...) @au_sync()
  br label %35

35:                                               ; preds = %39, %1
  %36 = load i32, i32* @PSC_AC97STAT, align 4
  %37 = call i32 @au_readl(i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = call i32 (...) @au_sync()
  br label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @PSC_AC97STAT_DR, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %35, label %44

44:                                               ; preds = %39
  ret void
}

declare dso_local i32 @au_readl(i32) #1

declare dso_local i32 @au_sync(...) #1

declare dso_local i32 @au_writel(i32, i32) #1

declare dso_local i32 @PSC_AC97CFG_RXSLOT_ENA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
