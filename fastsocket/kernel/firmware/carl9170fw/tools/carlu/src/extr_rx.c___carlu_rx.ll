; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_rx.c___carlu_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_rx.c___carlu_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carlu = type { i32 }
%struct.carl9170_rsp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.carlu*, i32*, i32)* @__carlu_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__carlu_rx(%struct.carlu* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.carlu*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.carl9170_rsp*, align 8
  store %struct.carlu* %0, %struct.carlu** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %27, %3
  %10 = load i32, i32* %6, align 4
  %11 = icmp ugt i32 %10, 2
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = load i32, i32* %7, align 4
  %14 = icmp ult i32 %13, 12
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 255
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 255
  br label %25

25:                                               ; preds = %20, %15, %12, %9
  %26 = phi i1 [ false, %15 ], [ false, %12 ], [ false, %9 ], [ %24, %20 ]
  br i1 %26, label %27, label %34

27:                                               ; preds = %25
  %28 = load i32, i32* %7, align 4
  %29 = add i32 %28, 2
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = sub i32 %30, 2
  store i32 %31, i32* %6, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  store i32* %33, i32** %5, align 8
  br label %9

34:                                               ; preds = %25
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, 12
  br i1 %36, label %37, label %67

37:                                               ; preds = %34
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %42, %37
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %66

42:                                               ; preds = %38
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = bitcast i32* %46 to i8*
  %48 = bitcast i8* %47 to %struct.carl9170_rsp*
  store %struct.carl9170_rsp* %48, %struct.carl9170_rsp** %8, align 8
  %49 = load %struct.carlu*, %struct.carlu** %4, align 8
  %50 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %8, align 8
  %51 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %8, align 8
  %52 = getelementptr inbounds %struct.carl9170_rsp, %struct.carl9170_rsp* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 4
  %56 = call i32 @carlu_handle_command(%struct.carlu* %49, %struct.carl9170_rsp* %50, i64 %55)
  %57 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %8, align 8
  %58 = getelementptr inbounds %struct.carl9170_rsp, %struct.carl9170_rsp* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 4
  %62 = load i32, i32* %7, align 4
  %63 = zext i32 %62 to i64
  %64 = add nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %7, align 4
  br label %38

66:                                               ; preds = %38
  br label %72

67:                                               ; preds = %34
  %68 = load %struct.carlu*, %struct.carlu** %4, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @carlu_handle_data(%struct.carlu* %68, i32* %69, i32 %70)
  br label %72

72:                                               ; preds = %67, %66
  ret void
}

declare dso_local i32 @carlu_handle_command(%struct.carlu*, %struct.carl9170_rsp*, i64) #1

declare dso_local i32 @carlu_handle_data(%struct.carlu*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
