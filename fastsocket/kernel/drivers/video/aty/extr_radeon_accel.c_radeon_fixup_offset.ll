; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_radeon_accel.c_radeon_fixup_offset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_radeon_accel.c_radeon_fixup_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeonfb_info = type { i32, i32 }

@MC_FB_LOCATION = common dso_local global i32 0, align 4
@DEFAULT_PITCH_OFFSET = common dso_local global i32 0, align 4
@DST_PITCH_OFFSET = common dso_local global i32 0, align 4
@SRC_PITCH_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeonfb_info*)* @radeon_fixup_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_fixup_offset(%struct.radeonfb_info* %0) #0 {
  %2 = alloca %struct.radeonfb_info*, align 8
  %3 = alloca i32, align 4
  store %struct.radeonfb_info* %0, %struct.radeonfb_info** %2, align 8
  %4 = call i32 @radeon_fifo_wait(i32 1)
  %5 = load i32, i32* @MC_FB_LOCATION, align 4
  %6 = call i32 @INREG(i32 %5)
  %7 = shl i32 %6, 16
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %10 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %52

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %17 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = call i32 @radeon_fifo_wait(i32 3)
  %19 = load i32, i32* @DEFAULT_PITCH_OFFSET, align 4
  %20 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %21 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 22
  %24 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %25 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 10
  %28 = or i32 %23, %27
  %29 = call i32 @OUTREG(i32 %19, i32 %28)
  %30 = load i32, i32* @DST_PITCH_OFFSET, align 4
  %31 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %32 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 22
  %35 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %36 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %37, 10
  %39 = or i32 %34, %38
  %40 = call i32 @OUTREG(i32 %30, i32 %39)
  %41 = load i32, i32* @SRC_PITCH_OFFSET, align 4
  %42 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %43 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %44, 22
  %46 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %47 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %48, 10
  %50 = or i32 %45, %49
  %51 = call i32 @OUTREG(i32 %41, i32 %50)
  br label %52

52:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @radeon_fifo_wait(i32) #1

declare dso_local i32 @INREG(i32) #1

declare dso_local i32 @OUTREG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
