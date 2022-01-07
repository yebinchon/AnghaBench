; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_usbip_common.c_usbip_pack_ret_submit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_usbip_common.c_usbip_pack_ret_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbip_header = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.usbip_header_ret_submit }
%struct.usbip_header_ret_submit = type { i32, i32, i32, i32 }
%struct.urb = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbip_header*, %struct.urb*, i32)* @usbip_pack_ret_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbip_pack_ret_submit(%struct.usbip_header* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca %struct.usbip_header*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usbip_header_ret_submit*, align 8
  store %struct.usbip_header* %0, %struct.usbip_header** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.usbip_header*, %struct.usbip_header** %4, align 8
  %9 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.usbip_header_ret_submit* %10, %struct.usbip_header_ret_submit** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %3
  %14 = load %struct.urb*, %struct.urb** %5, align 8
  %15 = getelementptr inbounds %struct.urb, %struct.urb* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.usbip_header_ret_submit*, %struct.usbip_header_ret_submit** %7, align 8
  %18 = getelementptr inbounds %struct.usbip_header_ret_submit, %struct.usbip_header_ret_submit* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load %struct.urb*, %struct.urb** %5, align 8
  %20 = getelementptr inbounds %struct.urb, %struct.urb* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.usbip_header_ret_submit*, %struct.usbip_header_ret_submit** %7, align 8
  %23 = getelementptr inbounds %struct.usbip_header_ret_submit, %struct.usbip_header_ret_submit* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.urb*, %struct.urb** %5, align 8
  %25 = getelementptr inbounds %struct.urb, %struct.urb* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.usbip_header_ret_submit*, %struct.usbip_header_ret_submit** %7, align 8
  %28 = getelementptr inbounds %struct.usbip_header_ret_submit, %struct.usbip_header_ret_submit* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.urb*, %struct.urb** %5, align 8
  %30 = getelementptr inbounds %struct.urb, %struct.urb* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.usbip_header_ret_submit*, %struct.usbip_header_ret_submit** %7, align 8
  %33 = getelementptr inbounds %struct.usbip_header_ret_submit, %struct.usbip_header_ret_submit* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %55

34:                                               ; preds = %3
  %35 = load %struct.usbip_header_ret_submit*, %struct.usbip_header_ret_submit** %7, align 8
  %36 = getelementptr inbounds %struct.usbip_header_ret_submit, %struct.usbip_header_ret_submit* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.urb*, %struct.urb** %5, align 8
  %39 = getelementptr inbounds %struct.urb, %struct.urb* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load %struct.usbip_header_ret_submit*, %struct.usbip_header_ret_submit** %7, align 8
  %41 = getelementptr inbounds %struct.usbip_header_ret_submit, %struct.usbip_header_ret_submit* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.urb*, %struct.urb** %5, align 8
  %44 = getelementptr inbounds %struct.urb, %struct.urb* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.usbip_header_ret_submit*, %struct.usbip_header_ret_submit** %7, align 8
  %46 = getelementptr inbounds %struct.usbip_header_ret_submit, %struct.usbip_header_ret_submit* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.urb*, %struct.urb** %5, align 8
  %49 = getelementptr inbounds %struct.urb, %struct.urb* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.usbip_header_ret_submit*, %struct.usbip_header_ret_submit** %7, align 8
  %51 = getelementptr inbounds %struct.usbip_header_ret_submit, %struct.usbip_header_ret_submit* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.urb*, %struct.urb** %5, align 8
  %54 = getelementptr inbounds %struct.urb, %struct.urb* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %34, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
