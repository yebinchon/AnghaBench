; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_imsttfb.c_getclkMHz.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_imsttfb.c_getclkMHz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imstt_par = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imstt_par*)* @getclkMHz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getclkMHz(%struct.imstt_par* %0) #0 {
  %2 = alloca %struct.imstt_par*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.imstt_par* %0, %struct.imstt_par** %2, align 8
  %6 = load %struct.imstt_par*, %struct.imstt_par** %2, align 8
  %7 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  %10 = load %struct.imstt_par*, %struct.imstt_par** %2, align 8
  %11 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.imstt_par*, %struct.imstt_par** %2, align 8
  %15 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  %20 = mul nsw i32 20, %19
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 1
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load i32, i32* %5, align 4
  %27 = mul nsw i32 2, %26
  br label %29

28:                                               ; preds = %1
  br label %29

29:                                               ; preds = %28, %25
  %30 = phi i32 [ %27, %25 ], [ 1, %28 ]
  %31 = mul nsw i32 %22, %30
  %32 = sdiv i32 %20, %31
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
