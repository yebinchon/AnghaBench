; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_blizzard.c_blizzard_restart_sdram.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_blizzard.c_blizzard_restart_sdram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@BLIZZARD_MEM_BANK0_ACTIVATE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@BLIZZARD_MEM_BANK0_STATUS = common dso_local global i32 0, align 4
@blizzard = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [27 x i8] c"s1d1374x: SDRAM not ready\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @blizzard_restart_sdram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blizzard_restart_sdram() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @BLIZZARD_MEM_BANK0_ACTIVATE, align 4
  %3 = call i32 @blizzard_write_reg(i32 %2, i32 0)
  %4 = call i32 @udelay(i32 50)
  %5 = load i32, i32* @BLIZZARD_MEM_BANK0_ACTIVATE, align 4
  %6 = call i32 @blizzard_write_reg(i32 %5, i32 1)
  %7 = load i64, i64* @jiffies, align 8
  %8 = call i64 @msecs_to_jiffies(i32 200)
  %9 = add i64 %7, %8
  store i64 %9, i64* %1, align 8
  br label %10

10:                                               ; preds = %26, %0
  %11 = load i32, i32* @BLIZZARD_MEM_BANK0_STATUS, align 4
  %12 = call i32 @blizzard_read_reg(i32 %11)
  %13 = and i32 %12, 1
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %28

16:                                               ; preds = %10
  %17 = load i64, i64* @jiffies, align 8
  %18 = load i64, i64* %1, align 8
  %19 = call i64 @time_after(i64 %17, i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @blizzard, i32 0, i32 0), align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %28

26:                                               ; preds = %16
  %27 = call i32 @msleep(i32 1)
  br label %10

28:                                               ; preds = %21, %10
  ret void
}

declare dso_local i32 @blizzard_write_reg(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @blizzard_read_reg(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
