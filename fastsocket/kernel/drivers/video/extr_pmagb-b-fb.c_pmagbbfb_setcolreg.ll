; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pmagb-b-fb.c_pmagbbfb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pmagb-b-fb.c_pmagbbfb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__, %struct.pmagbbfb_par* }
%struct.TYPE_2__ = type { i32 }
%struct.pmagbbfb_par = type { i32 }

@BT459_ADDR_LO = common dso_local global i32 0, align 4
@BT459_ADDR_HI = common dso_local global i32 0, align 4
@BT459_CMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @pmagbbfb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmagbbfb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fb_info*, align 8
  %13 = alloca %struct.pmagbbfb_par*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.fb_info* %5, %struct.fb_info** %12, align 8
  %14 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %15 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 1
  %16 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %15, align 8
  store %struct.pmagbbfb_par* %16, %struct.pmagbbfb_par** %13, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %19 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp uge i32 %17, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = lshr i32 %25, 8
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = lshr i32 %27, 8
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = lshr i32 %29, 8
  store i32 %30, i32* %10, align 4
  %31 = call i32 (...) @mb()
  %32 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %13, align 8
  %33 = load i32, i32* @BT459_ADDR_LO, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @dac_write(%struct.pmagbbfb_par* %32, i32 %33, i32 %34)
  %36 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %13, align 8
  %37 = load i32, i32* @BT459_ADDR_HI, align 4
  %38 = call i32 @dac_write(%struct.pmagbbfb_par* %36, i32 %37, i32 0)
  %39 = call i32 (...) @wmb()
  %40 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %13, align 8
  %41 = load i32, i32* @BT459_CMAP, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @dac_write(%struct.pmagbbfb_par* %40, i32 %41, i32 %42)
  %44 = call i32 (...) @wmb()
  %45 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %13, align 8
  %46 = load i32, i32* @BT459_CMAP, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @dac_write(%struct.pmagbbfb_par* %45, i32 %46, i32 %47)
  %49 = call i32 (...) @wmb()
  %50 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %13, align 8
  %51 = load i32, i32* @BT459_CMAP, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @dac_write(%struct.pmagbbfb_par* %50, i32 %51, i32 %52)
  ret i32 0
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @dac_write(%struct.pmagbbfb_par*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
