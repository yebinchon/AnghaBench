; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_isp1760-hcd.c_isp1760_qh_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_isp1760-hcd.c_isp1760_qh_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp1760_qh = type { %struct.isp1760_hcd*, i32 }
%struct.isp1760_hcd = type { i32 }

@qh_cachep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.isp1760_qh* (%struct.isp1760_hcd*, i32)* @isp1760_qh_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.isp1760_qh* @isp1760_qh_alloc(%struct.isp1760_hcd* %0, i32 %1) #0 {
  %3 = alloca %struct.isp1760_qh*, align 8
  %4 = alloca %struct.isp1760_hcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.isp1760_qh*, align 8
  store %struct.isp1760_hcd* %0, %struct.isp1760_hcd** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @qh_cachep, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.isp1760_qh* @kmem_cache_zalloc(i32 %7, i32 %8)
  store %struct.isp1760_qh* %9, %struct.isp1760_qh** %6, align 8
  %10 = load %struct.isp1760_qh*, %struct.isp1760_qh** %6, align 8
  %11 = icmp ne %struct.isp1760_qh* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load %struct.isp1760_qh*, %struct.isp1760_qh** %6, align 8
  store %struct.isp1760_qh* %13, %struct.isp1760_qh** %3, align 8
  br label %22

14:                                               ; preds = %2
  %15 = load %struct.isp1760_qh*, %struct.isp1760_qh** %6, align 8
  %16 = getelementptr inbounds %struct.isp1760_qh, %struct.isp1760_qh* %15, i32 0, i32 1
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %4, align 8
  %19 = load %struct.isp1760_qh*, %struct.isp1760_qh** %6, align 8
  %20 = getelementptr inbounds %struct.isp1760_qh, %struct.isp1760_qh* %19, i32 0, i32 0
  store %struct.isp1760_hcd* %18, %struct.isp1760_hcd** %20, align 8
  %21 = load %struct.isp1760_qh*, %struct.isp1760_qh** %6, align 8
  store %struct.isp1760_qh* %21, %struct.isp1760_qh** %3, align 8
  br label %22

22:                                               ; preds = %14, %12
  %23 = load %struct.isp1760_qh*, %struct.isp1760_qh** %3, align 8
  ret %struct.isp1760_qh* %23
}

declare dso_local %struct.isp1760_qh* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
