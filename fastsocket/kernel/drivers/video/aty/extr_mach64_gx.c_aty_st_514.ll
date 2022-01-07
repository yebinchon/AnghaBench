; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_mach64_gx.c_aty_st_514.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_mach64_gx.c_aty_st_514.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atyfb_par = type { i32 }

@DAC_CNTL = common dso_local global i32 0, align 4
@DAC_W_INDEX = common dso_local global i32 0, align 4
@DAC_DATA = common dso_local global i32 0, align 4
@DAC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.atyfb_par*)* @aty_st_514 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aty_st_514(i32 %0, i32 %1, %struct.atyfb_par* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.atyfb_par*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.atyfb_par* %2, %struct.atyfb_par** %6, align 8
  %7 = load i32, i32* @DAC_CNTL, align 4
  %8 = load %struct.atyfb_par*, %struct.atyfb_par** %6, align 8
  %9 = call i32 @aty_st_8(i32 %7, i32 1, %struct.atyfb_par* %8)
  %10 = load i32, i32* @DAC_W_INDEX, align 4
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, 255
  %13 = load %struct.atyfb_par*, %struct.atyfb_par** %6, align 8
  %14 = call i32 @aty_st_8(i32 %10, i32 %12, %struct.atyfb_par* %13)
  %15 = load i32, i32* @DAC_DATA, align 4
  %16 = load i32, i32* %4, align 4
  %17 = ashr i32 %16, 8
  %18 = and i32 %17, 255
  %19 = load %struct.atyfb_par*, %struct.atyfb_par** %6, align 8
  %20 = call i32 @aty_st_8(i32 %15, i32 %18, %struct.atyfb_par* %19)
  %21 = load i32, i32* @DAC_MASK, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.atyfb_par*, %struct.atyfb_par** %6, align 8
  %24 = call i32 @aty_st_8(i32 %21, i32 %22, %struct.atyfb_par* %23)
  %25 = load i32, i32* @DAC_CNTL, align 4
  %26 = load %struct.atyfb_par*, %struct.atyfb_par** %6, align 8
  %27 = call i32 @aty_st_8(i32 %25, i32 0, %struct.atyfb_par* %26)
  ret void
}

declare dso_local i32 @aty_st_8(i32, i32, %struct.atyfb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
