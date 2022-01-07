; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_imx_udc.c_ep_del_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_imx_udc.c_ep_del_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_ep_struct = type { i32 }
%struct.imx_request = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx_ep_struct*, %struct.imx_request*)* @ep_del_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep_del_request(%struct.imx_ep_struct* %0, %struct.imx_request* %1) #0 {
  %3 = alloca %struct.imx_ep_struct*, align 8
  %4 = alloca %struct.imx_request*, align 8
  store %struct.imx_ep_struct* %0, %struct.imx_ep_struct** %3, align 8
  store %struct.imx_request* %1, %struct.imx_request** %4, align 8
  %5 = load %struct.imx_request*, %struct.imx_request** %4, align 8
  %6 = icmp ne %struct.imx_request* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %18

12:                                               ; preds = %2
  %13 = load %struct.imx_request*, %struct.imx_request** %4, align 8
  %14 = getelementptr inbounds %struct.imx_request, %struct.imx_request* %13, i32 0, i32 1
  %15 = call i32 @list_del_init(i32* %14)
  %16 = load %struct.imx_request*, %struct.imx_request** %4, align 8
  %17 = getelementptr inbounds %struct.imx_request, %struct.imx_request* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  br label %18

18:                                               ; preds = %12, %11
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @list_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
