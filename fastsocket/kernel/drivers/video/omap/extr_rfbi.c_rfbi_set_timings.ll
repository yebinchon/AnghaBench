; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_rfbi.c_rfbi_set_timings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_rfbi.c_rfbi_set_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extif_timings = type { i32*, i32 }

@RFBI_ONOFF_TIME0 = common dso_local global i32 0, align 4
@RFBI_CYCLE_TIME0 = common dso_local global i32 0, align 4
@RFBI_CONFIG0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.extif_timings*)* @rfbi_set_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rfbi_set_timings(%struct.extif_timings* %0) #0 {
  %2 = alloca %struct.extif_timings*, align 8
  %3 = alloca i32, align 4
  store %struct.extif_timings* %0, %struct.extif_timings** %2, align 8
  %4 = load %struct.extif_timings*, %struct.extif_timings** %2, align 8
  %5 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = call i32 @rfbi_enable_clocks(i32 1)
  %12 = load i32, i32* @RFBI_ONOFF_TIME0, align 4
  %13 = load %struct.extif_timings*, %struct.extif_timings** %2, align 8
  %14 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @rfbi_write_reg(i32 %12, i32 %17)
  %19 = load i32, i32* @RFBI_CYCLE_TIME0, align 4
  %20 = load %struct.extif_timings*, %struct.extif_timings** %2, align 8
  %21 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @rfbi_write_reg(i32 %19, i32 %24)
  %26 = load i32, i32* @RFBI_CONFIG0, align 4
  %27 = call i32 @rfbi_read_reg(i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, -17
  store i32 %29, i32* %3, align 4
  %30 = load %struct.extif_timings*, %struct.extif_timings** %2, align 8
  %31 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 1, i32 0
  %38 = shl i32 %37, 4
  %39 = load i32, i32* %3, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* @RFBI_CONFIG0, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @rfbi_write_reg(i32 %41, i32 %42)
  %44 = call i32 (...) @rfbi_print_timings()
  %45 = call i32 @rfbi_enable_clocks(i32 0)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @rfbi_enable_clocks(i32) #1

declare dso_local i32 @rfbi_write_reg(i32, i32) #1

declare dso_local i32 @rfbi_read_reg(i32) #1

declare dso_local i32 @rfbi_print_timings(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
