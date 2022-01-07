; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_blizzard.c_blizzard_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_blizzard.c_blizzard_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 (i32)*, i32, i32, i64 }
%struct.TYPE_3__ = type { i32 }

@blizzard = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@OMAPFB_UPDATE_DISABLED = common dso_local global i32 0, align 4
@BLIZZARD_POWER_SAVE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@BLIZZARD_PLL_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"s1d1374x: sleep timeout, stopping PLL manually\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @blizzard_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blizzard_suspend() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @blizzard, i32 0, i32 4), align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = call i32 (...) @update_full_screen()
  %7 = call i32 (...) @blizzard_sync()
  br label %8

8:                                                ; preds = %5, %0
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @blizzard, i32 0, i32 2), align 8
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @blizzard, i32 0, i32 3), align 4
  %10 = load i32, i32* @OMAPFB_UPDATE_DISABLED, align 4
  %11 = call i32 @blizzard_set_update_mode(i32 %10)
  %12 = call i32 (...) @blizzard_save_all_regs()
  %13 = call i32 (...) @blizzard_stop_sdram()
  %14 = load i32, i32* @BLIZZARD_POWER_SAVE, align 4
  %15 = call i32 @blizzard_read_reg(i32 %14)
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %1, align 4
  %17 = or i32 %16, 3
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* @BLIZZARD_POWER_SAVE, align 4
  %19 = load i32, i32* %1, align 4
  %20 = call i32 @blizzard_write_reg(i32 %18, i32 %19)
  %21 = load i64, i64* @jiffies, align 8
  %22 = call i64 @msecs_to_jiffies(i32 100)
  %23 = add i64 %21, %22
  store i64 %23, i64* %2, align 8
  br label %24

24:                                               ; preds = %49, %8
  %25 = load i32, i32* @BLIZZARD_PLL_MODE, align 4
  %26 = call i32 @blizzard_read_reg(i32 %25)
  %27 = and i32 %26, 2
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br i1 %29, label %30, label %51

30:                                               ; preds = %24
  %31 = load i64, i64* @jiffies, align 8
  %32 = load i64, i64* %2, align 8
  %33 = call i64 @time_after(i64 %31, i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %30
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @blizzard, i32 0, i32 0), align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @BLIZZARD_PLL_MODE, align 4
  %41 = call i32 @blizzard_read_reg(i32 %40)
  store i32 %41, i32* %1, align 4
  %42 = load i32, i32* %1, align 4
  %43 = and i32 %42, -4
  store i32 %43, i32* %1, align 4
  %44 = load i32, i32* %1, align 4
  %45 = or i32 %44, 2
  store i32 %45, i32* %1, align 4
  %46 = load i32, i32* @BLIZZARD_PLL_MODE, align 4
  %47 = load i32, i32* %1, align 4
  %48 = call i32 @blizzard_write_reg(i32 %46, i32 %47)
  br label %51

49:                                               ; preds = %30
  %50 = call i32 @msleep(i32 1)
  br label %24

51:                                               ; preds = %35, %24
  %52 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @blizzard, i32 0, i32 1), align 8
  %53 = icmp ne i32 (i32)* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @blizzard, i32 0, i32 1), align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @blizzard, i32 0, i32 0), align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 %55(i32 %58)
  br label %60

60:                                               ; preds = %54, %51
  ret void
}

declare dso_local i32 @update_full_screen(...) #1

declare dso_local i32 @blizzard_sync(...) #1

declare dso_local i32 @blizzard_set_update_mode(i32) #1

declare dso_local i32 @blizzard_save_all_regs(...) #1

declare dso_local i32 @blizzard_stop_sdram(...) #1

declare dso_local i32 @blizzard_read_reg(i32) #1

declare dso_local i32 @blizzard_write_reg(i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
