; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_bfin-t350mcqb-fb.c_bfin_t350mcqb_config_ppi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_bfin-t350mcqb-fb.c_bfin_t350mcqb_config_ppi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfin_t350mcqbfb_info = type { i32 }

@H_START = common dso_local global i32 0, align 4
@H_ACTPIX = common dso_local global i64 0, align 8
@V_LINES = common dso_local global i32 0, align 4
@PPI_TX_MODE = common dso_local global i32 0, align 4
@PPI_XFER_TYPE_11 = common dso_local global i32 0, align 4
@PPI_PORT_CFG_01 = common dso_local global i32 0, align 4
@PPI_PACK_EN = common dso_local global i32 0, align 4
@PPI_POLS_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfin_t350mcqbfb_info*)* @bfin_t350mcqb_config_ppi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfin_t350mcqb_config_ppi(%struct.bfin_t350mcqbfb_info* %0) #0 {
  %2 = alloca %struct.bfin_t350mcqbfb_info*, align 8
  store %struct.bfin_t350mcqbfb_info* %0, %struct.bfin_t350mcqbfb_info** %2, align 8
  %3 = load i32, i32* @H_START, align 4
  %4 = call i32 @bfin_write_PPI_DELAY(i32 %3)
  %5 = load i64, i64* @H_ACTPIX, align 8
  %6 = sub nsw i64 %5, 1
  %7 = call i32 @bfin_write_PPI_COUNT(i64 %6)
  %8 = load i32, i32* @V_LINES, align 4
  %9 = call i32 @bfin_write_PPI_FRAME(i32 %8)
  %10 = load i32, i32* @PPI_TX_MODE, align 4
  %11 = load i32, i32* @PPI_XFER_TYPE_11, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @PPI_PORT_CFG_01, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @PPI_PACK_EN, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @PPI_POLS_1, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @bfin_write_PPI_CONTROL(i32 %18)
  ret void
}

declare dso_local i32 @bfin_write_PPI_DELAY(i32) #1

declare dso_local i32 @bfin_write_PPI_COUNT(i64) #1

declare dso_local i32 @bfin_write_PPI_FRAME(i32) #1

declare dso_local i32 @bfin_write_PPI_CONTROL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
