; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/raid6/extr_raid6recov.c_raid6_dual_recov.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/raid6/extr_raid6recov.c_raid6_dual_recov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i64, i8**)* }

@raid6_call = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @raid6_dual_recov(i32 %0, i64 %1, i32 %2, i32 %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8** %4, i8*** %10, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %5
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %9, align 4
  br label %19

19:                                               ; preds = %15, %5
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sub nsw i32 %21, 1
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sub nsw i32 %26, 2
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load i32 (i32, i64, i8**)*, i32 (i32, i64, i8**)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @raid6_call, i32 0, i32 0), align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i64, i64* %7, align 8
  %33 = load i8**, i8*** %10, align 8
  %34 = call i32 %30(i32 %31, i64 %32, i8** %33)
  br label %36

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35, %29
  br label %56

37:                                               ; preds = %19
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %6, align 4
  %40 = sub nsw i32 %39, 2
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  %44 = load i64, i64* %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i8**, i8*** %10, align 8
  %47 = call i32 @raid6_datap_recov(i32 %43, i64 %44, i32 %45, i8** %46)
  br label %55

48:                                               ; preds = %37
  %49 = load i32, i32* %6, align 4
  %50 = load i64, i64* %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i8**, i8*** %10, align 8
  %54 = call i32 @raid6_2data_recov(i32 %49, i64 %50, i32 %51, i32 %52, i8** %53)
  br label %55

55:                                               ; preds = %48, %42
  br label %56

56:                                               ; preds = %55, %36
  ret void
}

declare dso_local i32 @raid6_datap_recov(i32, i64, i32, i8**) #1

declare dso_local i32 @raid6_2data_recov(i32, i64, i32, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
