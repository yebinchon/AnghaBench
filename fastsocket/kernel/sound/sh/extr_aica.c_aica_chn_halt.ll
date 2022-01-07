; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/sh/extr_aica.c_aica_chn_halt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/sh/extr_aica.c_aica_chn_halt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AICA_CMD_KICK = common dso_local global i32 0, align 4
@AICA_CMD_STOP = common dso_local global i32 0, align 4
@AICA_CONTROL_POINT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @aica_chn_halt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aica_chn_halt() #0 {
  %1 = alloca i64, align 8
  %2 = call i32 (...) @spu_write_wait()
  %3 = load i64, i64* %1, align 8
  %4 = call i32 @local_irq_save(i64 %3)
  %5 = load i32, i32* @AICA_CMD_KICK, align 4
  %6 = load i32, i32* @AICA_CMD_STOP, align 4
  %7 = or i32 %5, %6
  %8 = load i64, i64* @AICA_CONTROL_POINT, align 8
  %9 = inttoptr i64 %8 to i32*
  %10 = call i32 @writel(i32 %7, i32* %9)
  %11 = load i64, i64* %1, align 8
  %12 = call i32 @local_irq_restore(i64 %11)
  ret void
}

declare dso_local i32 @spu_write_wait(...) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
