; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa27x_udc.c_should_enable_udc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa27x_udc.c_should_enable_udc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_udc = type { i32, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa_udc*)* @should_enable_udc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @should_enable_udc(%struct.pxa_udc* %0) #0 {
  %2 = alloca %struct.pxa_udc*, align 8
  %3 = alloca i32, align 4
  store %struct.pxa_udc* %0, %struct.pxa_udc** %2, align 8
  %4 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %5 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %10 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br label %13

13:                                               ; preds = %8, %1
  %14 = phi i1 [ false, %1 ], [ %12, %8 ]
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %3, align 4
  %16 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %17 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %13
  %21 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %22 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br label %26

26:                                               ; preds = %20, %13
  %27 = phi i1 [ true, %13 ], [ %25, %20 ]
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* %3, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
