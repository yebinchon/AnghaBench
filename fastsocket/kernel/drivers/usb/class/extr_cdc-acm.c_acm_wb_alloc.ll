; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_cdc-acm.c_acm_wb_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_cdc-acm.c_acm_wb_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acm = type { %struct.acm_wb* }
%struct.acm_wb = type { i32 }

@ACM_NW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acm*)* @acm_wb_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acm_wb_alloc(%struct.acm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.acm_wb*, align 8
  store %struct.acm* %0, %struct.acm** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %32, %1
  %8 = load %struct.acm*, %struct.acm** %3, align 8
  %9 = getelementptr inbounds %struct.acm, %struct.acm* %8, i32 0, i32 0
  %10 = load %struct.acm_wb*, %struct.acm_wb** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %10, i64 %12
  store %struct.acm_wb* %13, %struct.acm_wb** %6, align 8
  %14 = load %struct.acm_wb*, %struct.acm_wb** %6, align 8
  %15 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %7
  %19 = load %struct.acm_wb*, %struct.acm_wb** %6, align 8
  %20 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %33

22:                                               ; preds = %7
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  %25 = load i32, i32* @ACM_NW, align 4
  %26 = srem i32 %24, %25
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* @ACM_NW, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  store i32 -1, i32* %2, align 4
  br label %33

32:                                               ; preds = %22
  br label %7

33:                                               ; preds = %31, %18
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
