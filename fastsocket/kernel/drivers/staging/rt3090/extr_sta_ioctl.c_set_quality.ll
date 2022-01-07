; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt3090/extr_sta_ioctl.c_set_quality.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt3090/extr_sta_ioctl.c_set_quality.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64*, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.iw_quality = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.iw_quality*, i8)* @set_quality to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_quality(%struct.TYPE_9__* %0, %struct.iw_quality* %1, i8 signext %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.iw_quality*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.iw_quality* %1, %struct.iw_quality** %5, align 8
  store i8 %2, i8* %6, align 1
  %8 = load i8, i8* %6, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp sge i32 %9, -50
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 100, i32* %7, align 4
  br label %36

12:                                               ; preds = %3
  %13 = load i8, i8* %6, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp sge i32 %14, -80
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = load i8, i8* %6, align 1
  %18 = sext i8 %17 to i32
  %19 = add nsw i32 %18, 80
  %20 = mul nsw i32 %19, 26
  %21 = sdiv i32 %20, 10
  %22 = add nsw i32 24, %21
  store i32 %22, i32* %7, align 4
  br label %35

23:                                               ; preds = %12
  %24 = load i8, i8* %6, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp sge i32 %25, -90
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i8, i8* %6, align 1
  %29 = sext i8 %28 to i32
  %30 = add nsw i32 %29, 90
  %31 = mul nsw i32 %30, 26
  %32 = sdiv i32 %31, 10
  store i32 %32, i32* %7, align 4
  br label %34

33:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %33, %27
  br label %35

35:                                               ; preds = %34, %16
  br label %36

36:                                               ; preds = %35, %11
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.iw_quality*, %struct.iw_quality** %5, align 8
  %39 = getelementptr inbounds %struct.iw_quality, %struct.iw_quality* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i8, i8* %6, align 1
  %41 = sext i8 %40 to i32
  %42 = load %struct.iw_quality*, %struct.iw_quality** %5, align 8
  %43 = getelementptr inbounds %struct.iw_quality, %struct.iw_quality* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 66
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %48, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %36
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  br label %67

60:                                               ; preds = %36
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 66
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  br label %67

67:                                               ; preds = %60, %54
  %68 = phi i32 [ %59, %54 ], [ %66, %60 ]
  %69 = load %struct.iw_quality*, %struct.iw_quality** %5, align 8
  %70 = getelementptr inbounds %struct.iw_quality, %struct.iw_quality* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load %struct.iw_quality*, %struct.iw_quality** %5, align 8
  %72 = getelementptr inbounds %struct.iw_quality, %struct.iw_quality* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 113
  store i32 %74, i32* %72, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.iw_quality*, %struct.iw_quality** %5, align 8
  %81 = getelementptr inbounds %struct.iw_quality, %struct.iw_quality* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
