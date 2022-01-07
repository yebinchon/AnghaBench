; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_mach64_accel.c_aty_reset_engine.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_mach64_accel.c_aty_reset_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atyfb_par = type { i32 }

@GEN_TEST_CNTL = common dso_local global i32 0, align 4
@GUI_ENGINE_ENABLE = common dso_local global i32 0, align 4
@HWCURSOR_ENABLE = common dso_local global i32 0, align 4
@BUS_CNTL = common dso_local global i32 0, align 4
@BUS_HOST_ERR_ACK = common dso_local global i32 0, align 4
@BUS_FIFO_ERR_ACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aty_reset_engine(%struct.atyfb_par* %0) #0 {
  %2 = alloca %struct.atyfb_par*, align 8
  store %struct.atyfb_par* %0, %struct.atyfb_par** %2, align 8
  %3 = load i32, i32* @GEN_TEST_CNTL, align 4
  %4 = load i32, i32* @GEN_TEST_CNTL, align 4
  %5 = load %struct.atyfb_par*, %struct.atyfb_par** %2, align 8
  %6 = call i32 @aty_ld_le32(i32 %4, %struct.atyfb_par* %5)
  %7 = load i32, i32* @GUI_ENGINE_ENABLE, align 4
  %8 = load i32, i32* @HWCURSOR_ENABLE, align 4
  %9 = or i32 %7, %8
  %10 = xor i32 %9, -1
  %11 = and i32 %6, %10
  %12 = load %struct.atyfb_par*, %struct.atyfb_par** %2, align 8
  %13 = call i32 @aty_st_le32(i32 %3, i32 %11, %struct.atyfb_par* %12)
  %14 = load i32, i32* @GEN_TEST_CNTL, align 4
  %15 = load i32, i32* @GEN_TEST_CNTL, align 4
  %16 = load %struct.atyfb_par*, %struct.atyfb_par** %2, align 8
  %17 = call i32 @aty_ld_le32(i32 %15, %struct.atyfb_par* %16)
  %18 = load i32, i32* @GUI_ENGINE_ENABLE, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.atyfb_par*, %struct.atyfb_par** %2, align 8
  %21 = call i32 @aty_st_le32(i32 %14, i32 %19, %struct.atyfb_par* %20)
  %22 = load i32, i32* @BUS_CNTL, align 4
  %23 = load i32, i32* @BUS_CNTL, align 4
  %24 = load %struct.atyfb_par*, %struct.atyfb_par** %2, align 8
  %25 = call i32 @aty_ld_le32(i32 %23, %struct.atyfb_par* %24)
  %26 = load i32, i32* @BUS_HOST_ERR_ACK, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @BUS_FIFO_ERR_ACK, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.atyfb_par*, %struct.atyfb_par** %2, align 8
  %31 = call i32 @aty_st_le32(i32 %22, i32 %29, %struct.atyfb_par* %30)
  ret void
}

declare dso_local i32 @aty_st_le32(i32, i32, %struct.atyfb_par*) #1

declare dso_local i32 @aty_ld_le32(i32, %struct.atyfb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
