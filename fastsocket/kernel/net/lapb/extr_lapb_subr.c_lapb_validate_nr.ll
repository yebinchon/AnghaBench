; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/lapb/extr_lapb_subr.c_lapb_validate_nr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/lapb/extr_lapb_subr.c_lapb_validate_nr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lapb_cb = type { i16, i32, i16 }

@LAPB_EXTENDED = common dso_local global i32 0, align 4
@LAPB_EMODULUS = common dso_local global i32 0, align 4
@LAPB_SMODULUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lapb_validate_nr(%struct.lapb_cb* %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lapb_cb*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  store %struct.lapb_cb* %0, %struct.lapb_cb** %4, align 8
  store i16 %1, i16* %5, align 2
  %8 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %9 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %8, i32 0, i32 0
  %10 = load i16, i16* %9, align 4
  store i16 %10, i16* %6, align 2
  %11 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %12 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @LAPB_EXTENDED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @LAPB_EMODULUS, align 4
  br label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @LAPB_SMODULUS, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %38, %21
  %24 = load i16, i16* %6, align 2
  %25 = zext i16 %24 to i32
  %26 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %27 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %26, i32 0, i32 2
  %28 = load i16, i16* %27, align 4
  %29 = zext i16 %28 to i32
  %30 = icmp ne i32 %25, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %23
  %32 = load i16, i16* %5, align 2
  %33 = zext i16 %32 to i32
  %34 = load i16, i16* %6, align 2
  %35 = zext i16 %34 to i32
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %54

38:                                               ; preds = %31
  %39 = load i16, i16* %6, align 2
  %40 = zext i16 %39 to i32
  %41 = add nsw i32 %40, 1
  %42 = load i32, i32* %7, align 4
  %43 = srem i32 %41, %42
  %44 = trunc i32 %43 to i16
  store i16 %44, i16* %6, align 2
  br label %23

45:                                               ; preds = %23
  %46 = load i16, i16* %5, align 2
  %47 = zext i16 %46 to i32
  %48 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %49 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %48, i32 0, i32 2
  %50 = load i16, i16* %49, align 4
  %51 = zext i16 %50 to i32
  %52 = icmp eq i32 %47, %51
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %45, %37
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
