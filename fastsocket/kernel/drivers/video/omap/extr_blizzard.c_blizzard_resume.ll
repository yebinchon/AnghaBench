; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_blizzard.c_blizzard_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_blizzard.c_blizzard_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__*, i32 (i32)* }
%struct.TYPE_3__ = type { i32 }

@blizzard = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@BLIZZARD_POWER_SAVE = common dso_local global i32 0, align 4
@BLIZZARD_PLL_MODE = common dso_local global i32 0, align 4
@BLIZZARD_PLL_DIV = common dso_local global i32 0, align 4
@BLIZZARD_DISPLAY_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @blizzard_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blizzard_resume() #0 {
  %1 = alloca i32, align 4
  %2 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @blizzard, i32 0, i32 3), align 8
  %3 = icmp ne i32 (i32)* %2, null
  br i1 %3, label %4, label %10

4:                                                ; preds = %0
  %5 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @blizzard, i32 0, i32 3), align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @blizzard, i32 0, i32 2), align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 %5(i32 %8)
  br label %10

10:                                               ; preds = %4, %0
  %11 = load i32, i32* @BLIZZARD_POWER_SAVE, align 4
  %12 = call i32 @blizzard_read_reg(i32 %11)
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = and i32 %13, -4
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* @BLIZZARD_POWER_SAVE, align 4
  %16 = load i32, i32* %1, align 4
  %17 = call i32 @blizzard_write_reg(i32 %15, i32 %16)
  %18 = call i32 (...) @blizzard_restore_pll_regs()
  %19 = load i32, i32* @BLIZZARD_PLL_MODE, align 4
  %20 = call i32 @blizzard_read_reg(i32 %19)
  store i32 %20, i32* %1, align 4
  %21 = load i32, i32* %1, align 4
  %22 = and i32 %21, -4
  store i32 %22, i32* %1, align 4
  %23 = load i32, i32* %1, align 4
  %24 = or i32 %23, 1
  store i32 %24, i32* %1, align 4
  %25 = load i32, i32* @BLIZZARD_PLL_MODE, align 4
  %26 = load i32, i32* %1, align 4
  %27 = call i32 @blizzard_write_reg(i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %34, %10
  %29 = load i32, i32* @BLIZZARD_PLL_DIV, align 4
  %30 = call i32 @blizzard_read_reg(i32 %29)
  %31 = and i32 %30, 128
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = call i32 @msleep(i32 1)
  br label %28

36:                                               ; preds = %28
  %37 = call i32 (...) @blizzard_restart_sdram()
  %38 = call i32 (...) @blizzard_restore_gen_regs()
  %39 = load i32, i32* @BLIZZARD_DISPLAY_MODE, align 4
  %40 = call i32 @blizzard_write_reg(i32 %39, i32 1)
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @blizzard, i32 0, i32 1), align 4
  %42 = call i32 @blizzard_set_update_mode(i32 %41)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @blizzard, i32 0, i32 0), align 8
  %43 = call i32 (...) @update_full_screen()
  %44 = call i32 (...) @blizzard_sync()
  ret void
}

declare dso_local i32 @blizzard_read_reg(i32) #1

declare dso_local i32 @blizzard_write_reg(i32, i32) #1

declare dso_local i32 @blizzard_restore_pll_regs(...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @blizzard_restart_sdram(...) #1

declare dso_local i32 @blizzard_restore_gen_regs(...) #1

declare dso_local i32 @blizzard_set_update_mode(i32) #1

declare dso_local i32 @update_full_screen(...) #1

declare dso_local i32 @blizzard_sync(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
