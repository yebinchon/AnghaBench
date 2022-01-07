; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_isp1362.h_ALIGNSTAT.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_isp1362.h_ALIGNSTAT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp1362_hcd = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp1362_hcd*, i8*)* @ALIGNSTAT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ALIGNSTAT(%struct.isp1362_hcd* %0, i8* %1) #0 {
  %3 = alloca %struct.isp1362_hcd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.isp1362_hcd* %0, %struct.isp1362_hcd** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = ptrtoint i8* %6 to i64
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = and i64 %8, 15
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %3, align 8
  %13 = getelementptr inbounds %struct.isp1362_hcd, %struct.isp1362_hcd* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  br label %51

16:                                               ; preds = %2
  %17 = load i64, i64* %5, align 8
  %18 = and i64 %17, 7
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %3, align 8
  %22 = getelementptr inbounds %struct.isp1362_hcd, %struct.isp1362_hcd* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  br label %50

25:                                               ; preds = %16
  %26 = load i64, i64* %5, align 8
  %27 = and i64 %26, 3
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %3, align 8
  %31 = getelementptr inbounds %struct.isp1362_hcd, %struct.isp1362_hcd* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  br label %49

34:                                               ; preds = %25
  %35 = load i64, i64* %5, align 8
  %36 = and i64 %35, 1
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %3, align 8
  %40 = getelementptr inbounds %struct.isp1362_hcd, %struct.isp1362_hcd* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  br label %48

43:                                               ; preds = %34
  %44 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %3, align 8
  %45 = getelementptr inbounds %struct.isp1362_hcd, %struct.isp1362_hcd* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %43, %38
  br label %49

49:                                               ; preds = %48, %29
  br label %50

50:                                               ; preds = %49, %20
  br label %51

51:                                               ; preds = %50, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
