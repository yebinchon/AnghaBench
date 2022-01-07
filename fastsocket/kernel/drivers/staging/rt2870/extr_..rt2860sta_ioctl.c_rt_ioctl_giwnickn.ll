; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2870/extr_..rt2860sta_ioctl.c_rt_ioctl_giwnickn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2870/extr_..rt2860sta_ioctl.c_rt_ioctl_giwnickn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt_ioctl_giwnickn(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %struct.iw_point*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %struct.iw_point* %2, %struct.iw_point** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %9, align 8
  %13 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %14 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @strlen(i32 %18)
  %20 = add nsw i64 %19, 1
  %21 = icmp sgt i64 %15, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @strlen(i32 %25)
  %27 = add nsw i64 %26, 1
  %28 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %29 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %22, %4
  %31 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %32 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %30
  %36 = load i8*, i8** %8, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %41 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %42, 1
  %44 = call i32 @memcpy(i8* %36, i32 %39, i64 %43)
  %45 = load i8*, i8** %8, align 8
  %46 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %47 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %48, 1
  %50 = getelementptr inbounds i8, i8* %45, i64 %49
  store i8 0, i8* %50, align 1
  br label %51

51:                                               ; preds = %35, %30
  ret i32 0
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
