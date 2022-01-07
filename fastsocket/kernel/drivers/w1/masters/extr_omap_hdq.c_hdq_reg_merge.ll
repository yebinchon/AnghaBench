; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/masters/extr_omap_hdq.c_hdq_reg_merge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/masters/extr_omap_hdq.c_hdq_reg_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdq_data = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdq_data*, i64, i32, i32)* @hdq_reg_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdq_reg_merge(%struct.hdq_data* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hdq_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hdq_data* %0, %struct.hdq_data** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %11 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %6, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @__raw_readb(i64 %14)
  %16 = load i32, i32* %8, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %19, %20
  %22 = or i32 %18, %21
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %25 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @__raw_writeb(i32 %23, i64 %28)
  %30 = load i32, i32* %9, align 4
  ret i32 %30
}

declare dso_local i32 @__raw_readb(i64) #1

declare dso_local i32 @__raw_writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
