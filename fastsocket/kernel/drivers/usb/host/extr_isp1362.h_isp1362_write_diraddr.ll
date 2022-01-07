; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_isp1362.h_isp1362_write_diraddr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_isp1362.h_isp1362_write_diraddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp1362_hcd = type { i32 }

@ISP1362_BUF_SIZE = common dso_local global i32 0, align 4
@HCDMACFG = common dso_local global i32 0, align 4
@HCDMACFG_CTR_ENABLE = common dso_local global i32 0, align 4
@HCDIRADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp1362_hcd*, i32, i32)* @isp1362_write_diraddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp1362_write_diraddr(%struct.isp1362_hcd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.isp1362_hcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.isp1362_hcd* %0, %struct.isp1362_hcd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = and i32 %7, 1
  %9 = call i32 @_BUG_ON(i32 %8)
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @ISP1362_BUF_SIZE, align 4
  %12 = icmp sge i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @_BUG_ON(i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @ISP1362_BUF_SIZE, align 4
  %17 = icmp sgt i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @_BUG_ON(i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %20, %21
  %23 = load i32, i32* @ISP1362_BUF_SIZE, align 4
  %24 = icmp sgt i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @_BUG_ON(i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  %29 = and i32 %28, -2
  store i32 %29, i32* %6, align 4
  %30 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %4, align 8
  %31 = load i32, i32* @HCDMACFG, align 4
  %32 = load i32, i32* @HCDMACFG_CTR_ENABLE, align 4
  %33 = call i32 @isp1362_clr_mask16(%struct.isp1362_hcd* %30, i32 %31, i32 %32)
  %34 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %4, align 8
  %35 = load i32, i32* @HCDIRADDR, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @HCDIRADDR_ADDR(i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @HCDIRADDR_COUNT(i32 %38)
  %40 = or i32 %37, %39
  %41 = call i32 @isp1362_write_reg32(%struct.isp1362_hcd* %34, i32 %35, i32 %40)
  ret void
}

declare dso_local i32 @_BUG_ON(i32) #1

declare dso_local i32 @isp1362_clr_mask16(%struct.isp1362_hcd*, i32, i32) #1

declare dso_local i32 @isp1362_write_reg32(%struct.isp1362_hcd*, i32, i32) #1

declare dso_local i32 @HCDIRADDR_ADDR(i32) #1

declare dso_local i32 @HCDIRADDR_COUNT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
