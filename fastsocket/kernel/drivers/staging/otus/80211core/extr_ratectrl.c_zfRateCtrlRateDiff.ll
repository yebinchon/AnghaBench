; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ratectrl.c_zfRateCtrlRateDiff.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ratectrl.c_zfRateCtrlRateDiff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zsRcCell = type { i64, i64*, i64 }

@ZM_LV_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Not in operation rate set:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zfRateCtrlRateDiff(%struct.zsRcCell* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.zsRcCell*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.zsRcCell* %0, %struct.zsRcCell** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %47, %2
  %8 = load i64, i64* %6, align 8
  %9 = load %struct.zsRcCell*, %struct.zsRcCell** %4, align 8
  %10 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %8, %11
  br i1 %12, label %13, label %50

13:                                               ; preds = %7
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.zsRcCell*, %struct.zsRcCell** %4, align 8
  %16 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %15, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %14, %20
  br i1 %21, label %22, label %46

22:                                               ; preds = %13
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.zsRcCell*, %struct.zsRcCell** %4, align 8
  %25 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load %struct.zsRcCell*, %struct.zsRcCell** %4, align 8
  %30 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = sub i64 %31, %32
  %34 = add i64 %33, 1
  %35 = lshr i64 %34, 1
  store i64 %35, i64* %3, align 8
  br label %54

36:                                               ; preds = %22
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.zsRcCell*, %struct.zsRcCell** %4, align 8
  %39 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  %42 = zext i1 %41 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i64 1, i64* %3, align 8
  br label %54

45:                                               ; preds = %36
  store i64 0, i64* %3, align 8
  br label %54

46:                                               ; preds = %13
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %6, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %6, align 8
  br label %7

50:                                               ; preds = %7
  %51 = load i32, i32* @ZM_LV_0, align 4
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @zm_msg1_tx(i32 %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %52)
  store i64 1, i64* %3, align 8
  br label %54

54:                                               ; preds = %50, %45, %44, %28
  %55 = load i64, i64* %3, align 8
  ret i64 %55
}

declare dso_local i32 @zm_msg1_tx(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
