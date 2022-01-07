; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_isp1362.h_isp1362_write_data32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_isp1362.h_isp1362_write_data32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp1362_hcd = type { i32 }

@DUMMY_DELAY_ACCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp1362_hcd*, i32)* @isp1362_write_data32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp1362_write_data32(%struct.isp1362_hcd* %0, i32 %1) #0 {
  %3 = alloca %struct.isp1362_hcd*, align 8
  %4 = alloca i32, align 4
  store %struct.isp1362_hcd* %0, %struct.isp1362_hcd** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 (...) @irqs_disabled()
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @_BUG_ON(i32 %8)
  %10 = load i32, i32* @DUMMY_DELAY_ACCESS, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %3, align 8
  %13 = getelementptr inbounds %struct.isp1362_hcd, %struct.isp1362_hcd* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @writew(i32 %11, i32 %14)
  %16 = load i32, i32* @DUMMY_DELAY_ACCESS, align 4
  %17 = load i32, i32* %4, align 4
  %18 = ashr i32 %17, 16
  %19 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %3, align 8
  %20 = getelementptr inbounds %struct.isp1362_hcd, %struct.isp1362_hcd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @writew(i32 %18, i32 %21)
  ret void
}

declare dso_local i32 @_BUG_ON(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @writew(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
