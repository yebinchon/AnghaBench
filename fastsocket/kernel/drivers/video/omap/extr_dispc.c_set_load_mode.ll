; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_dispc.c_set_load_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_dispc.c_set_load_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DISPC_LOAD_CLUT_ONLY = common dso_local global i32 0, align 4
@DISPC_LOAD_FRAME_ONLY = common dso_local global i32 0, align 4
@DISPC_LOAD_CLUT_ONCE_FRAME = common dso_local global i32 0, align 4
@DISPC_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @set_load_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_load_mode(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @DISPC_LOAD_CLUT_ONLY, align 4
  %5 = load i32, i32* @DISPC_LOAD_FRAME_ONLY, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @DISPC_LOAD_CLUT_ONCE_FRAME, align 4
  %8 = or i32 %6, %7
  %9 = xor i32 %8, -1
  %10 = and i32 %3, %9
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load i32, i32* @DISPC_CONFIG, align 4
  %13 = load i32, i32* %2, align 4
  %14 = shl i32 %13, 1
  %15 = call i32 @MOD_REG_FLD(i32 %12, i32 6, i32 %14)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @MOD_REG_FLD(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
