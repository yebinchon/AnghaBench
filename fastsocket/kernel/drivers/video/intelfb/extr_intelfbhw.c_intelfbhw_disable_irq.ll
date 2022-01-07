; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/intelfb/extr_intelfbhw.c_intelfbhw_disable_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/intelfb/extr_intelfbhw.c_intelfbhw_disable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intelfb_info = type { %struct.TYPE_3__*, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i64 }

@DSPABASE = common dso_local global i32 0, align 4
@HWSTAM = common dso_local global i32 0, align 4
@IMR = common dso_local global i32 0, align 4
@IER = common dso_local global i32 0, align 4
@IIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intelfbhw_disable_irq(%struct.intelfb_info* %0) #0 {
  %2 = alloca %struct.intelfb_info*, align 8
  store %struct.intelfb_info* %0, %struct.intelfb_info** %2, align 8
  %3 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %4 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %3, i32 0, i32 3
  %5 = call i64 @test_and_clear_bit(i32 0, i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %47

7:                                                ; preds = %1
  %8 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %9 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %7
  %14 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %15 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @DSPABASE, align 4
  %18 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %19 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @OUTREG(i32 %17, i32 %21)
  br label %23

23:                                               ; preds = %13, %7
  %24 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %25 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %24, i32 0, i32 1
  %26 = call i32 @spin_lock_irq(i32* %25)
  %27 = load i32, i32* @HWSTAM, align 4
  %28 = call i32 @OUTREG16(i32 %27, i32 65535)
  %29 = load i32, i32* @IMR, align 4
  %30 = call i32 @OUTREG16(i32 %29, i32 65535)
  %31 = load i32, i32* @IER, align 4
  %32 = call i32 @OUTREG16(i32 %31, i32 0)
  %33 = load i32, i32* @IIR, align 4
  %34 = load i32, i32* @IIR, align 4
  %35 = call i32 @INREG16(i32 %34)
  %36 = call i32 @OUTREG16(i32 %33, i32 %35)
  %37 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %38 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %37, i32 0, i32 1
  %39 = call i32 @spin_unlock_irq(i32* %38)
  %40 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %41 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %46 = call i32 @free_irq(i32 %44, %struct.intelfb_info* %45)
  br label %47

47:                                               ; preds = %23, %1
  ret void
}

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @OUTREG(i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @OUTREG16(i32, i32) #1

declare dso_local i32 @INREG16(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.intelfb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
