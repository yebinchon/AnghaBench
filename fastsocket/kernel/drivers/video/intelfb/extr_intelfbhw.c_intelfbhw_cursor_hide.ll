; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/intelfb/extr_intelfbhw.c_intelfbhw_cursor_hide.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/intelfb/extr_intelfbhw.c_intelfbhw_cursor_hide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intelfb_info = type { %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@CURSOR_A_CONTROL = common dso_local global i32 0, align 4
@CURSOR_MODE_MASK = common dso_local global i32 0, align 4
@CURSOR_MODE_DISABLE = common dso_local global i32 0, align 4
@CURSOR_A_BASEADDR = common dso_local global i32 0, align 4
@CURSOR_CONTROL = common dso_local global i32 0, align 4
@CURSOR_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intelfbhw_cursor_hide(%struct.intelfb_info* %0) #0 {
  %2 = alloca %struct.intelfb_info*, align 8
  %3 = alloca i32, align 4
  store %struct.intelfb_info* %0, %struct.intelfb_info** %2, align 8
  %4 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %5 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %4, i32 0, i32 2
  store i64 0, i64* %5, align 8
  %6 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %7 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %12 = call i64 @IS_I9XX(%struct.intelfb_info* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %10, %1
  %15 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %16 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  br label %50

21:                                               ; preds = %14
  %22 = load i32, i32* @CURSOR_A_CONTROL, align 4
  %23 = call i32 @INREG(i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* @CURSOR_MODE_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* @CURSOR_MODE_DISABLE, align 4
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* @CURSOR_A_CONTROL, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @OUTREG(i32 %31, i32 %32)
  %34 = load i32, i32* @CURSOR_A_BASEADDR, align 4
  %35 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %36 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @OUTREG(i32 %34, i32 %38)
  br label %50

40:                                               ; preds = %10
  %41 = load i32, i32* @CURSOR_CONTROL, align 4
  %42 = call i32 @INREG(i32 %41)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* @CURSOR_ENABLE, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %3, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* @CURSOR_CONTROL, align 4
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @OUTREG(i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %20, %40, %21
  ret void
}

declare dso_local i64 @IS_I9XX(%struct.intelfb_info*) #1

declare dso_local i32 @INREG(i32) #1

declare dso_local i32 @OUTREG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
