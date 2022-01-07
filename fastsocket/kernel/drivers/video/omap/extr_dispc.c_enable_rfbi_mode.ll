; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_dispc.c_enable_rfbi_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_dispc.c_enable_rfbi_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DISPC_CONTROL = common dso_local global i32 0, align 4
@RFBI_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @enable_rfbi_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_rfbi_mode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @DISPC_CONTROL, align 4
  %5 = call i32 @dispc_read_reg(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = and i32 %6, -100353
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i32 2048, i32 0
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, 32768
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 0, i32 65536
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* @DISPC_CONTROL, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @dispc_write_reg(i32 %22, i32 %23)
  %25 = load i32, i32* @RFBI_CONTROL, align 4
  %26 = call i32 @OMAP2_IO_ADDRESS(i32 %25)
  %27 = call i32 @__raw_readl(i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %2, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 0, i32 2
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @RFBI_CONTROL, align 4
  %36 = call i32 @OMAP2_IO_ADDRESS(i32 %35)
  %37 = call i32 @__raw_writel(i32 %34, i32 %36)
  ret void
}

declare dso_local i32 @dispc_read_reg(i32) #1

declare dso_local i32 @dispc_write_reg(i32, i32) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @OMAP2_IO_ADDRESS(i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
