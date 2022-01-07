; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_isp1760-hcd.c_enqueue_one_qtd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_isp1760-hcd.c_enqueue_one_qtd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp1760_qtd = type { i32, i64, i32 }
%struct.isp1760_hcd = type { i32 }
%struct.usb_hcd = type { i32 }

@HC_ATL_PL_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp1760_qtd*, %struct.isp1760_hcd*, i32)* @enqueue_one_qtd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enqueue_one_qtd(%struct.isp1760_qtd* %0, %struct.isp1760_hcd* %1, i32 %2) #0 {
  %4 = alloca %struct.isp1760_qtd*, align 8
  %5 = alloca %struct.isp1760_hcd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_hcd*, align 8
  store %struct.isp1760_qtd* %0, %struct.isp1760_qtd** %4, align 8
  store %struct.isp1760_hcd* %1, %struct.isp1760_hcd** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %5, align 8
  %10 = call %struct.usb_hcd* @priv_to_hcd(%struct.isp1760_hcd* %9)
  store %struct.usb_hcd* %10, %struct.usb_hcd** %8, align 8
  %11 = load %struct.isp1760_qtd*, %struct.isp1760_qtd** %4, align 8
  %12 = getelementptr inbounds %struct.isp1760_qtd, %struct.isp1760_qtd* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load %struct.isp1760_qtd*, %struct.isp1760_qtd** %4, align 8
  %15 = getelementptr inbounds %struct.isp1760_qtd, %struct.isp1760_qtd* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %3
  %19 = load %struct.isp1760_qtd*, %struct.isp1760_qtd** %4, align 8
  %20 = getelementptr inbounds %struct.isp1760_qtd, %struct.isp1760_qtd* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @HC_ATL_PL_SIZE, align 8
  %23 = icmp sle i64 %21, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %41 [
    i32 130, label %26
    i32 129, label %27
    i32 128, label %27
  ]

26:                                               ; preds = %24
  br label %41

27:                                               ; preds = %24, %24
  %28 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %5, align 8
  %29 = load %struct.isp1760_qtd*, %struct.isp1760_qtd** %4, align 8
  %30 = getelementptr inbounds %struct.isp1760_qtd, %struct.isp1760_qtd* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.usb_hcd*, %struct.usb_hcd** %8, align 8
  %33 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %34, %35
  %37 = load %struct.isp1760_qtd*, %struct.isp1760_qtd** %4, align 8
  %38 = getelementptr inbounds %struct.isp1760_qtd, %struct.isp1760_qtd* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @priv_write_copy(%struct.isp1760_hcd* %28, i32 %31, i32 %36, i64 %39)
  br label %41

41:                                               ; preds = %27, %24, %26
  br label %42

42:                                               ; preds = %41, %18, %3
  ret void
}

declare dso_local %struct.usb_hcd* @priv_to_hcd(%struct.isp1760_hcd*) #1

declare dso_local i32 @priv_write_copy(%struct.isp1760_hcd*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
