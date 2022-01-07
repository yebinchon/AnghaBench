; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_mach64_accel.c_draw_rect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_mach64_accel.c_draw_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atyfb_par = type { i32 }

@DST_Y_X = common dso_local global i32 0, align 4
@DST_HEIGHT_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, %struct.atyfb_par*)* @draw_rect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_rect(i32 %0, i32 %1, i32 %2, i32 %3, %struct.atyfb_par* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.atyfb_par*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.atyfb_par* %4, %struct.atyfb_par** %10, align 8
  %11 = load %struct.atyfb_par*, %struct.atyfb_par** %10, align 8
  %12 = call i32 @wait_for_fifo(i32 2, %struct.atyfb_par* %11)
  %13 = load i32, i32* @DST_Y_X, align 4
  %14 = load i32, i32* %6, align 4
  %15 = shl i32 %14, 16
  %16 = load i32, i32* %7, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.atyfb_par*, %struct.atyfb_par** %10, align 8
  %19 = call i32 @aty_st_le32(i32 %13, i32 %17, %struct.atyfb_par* %18)
  %20 = load i32, i32* @DST_HEIGHT_WIDTH, align 4
  %21 = load i32, i32* %8, align 4
  %22 = shl i32 %21, 16
  %23 = load i32, i32* %9, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.atyfb_par*, %struct.atyfb_par** %10, align 8
  %26 = call i32 @aty_st_le32(i32 %20, i32 %24, %struct.atyfb_par* %25)
  %27 = load %struct.atyfb_par*, %struct.atyfb_par** %10, align 8
  %28 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  ret void
}

declare dso_local i32 @wait_for_fifo(i32, %struct.atyfb_par*) #1

declare dso_local i32 @aty_st_le32(i32, i32, %struct.atyfb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
