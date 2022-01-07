; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2870/common/extr_....rt2860commonba_action.c_ba_reordering_mpdu_insertsorted.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2870/common/extr_....rt2860commonba_action.c_ba_reordering_mpdu_insertsorted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reordering_list = type { i32, %struct.reordering_mpdu* }
%struct.reordering_mpdu = type { %struct.reordering_mpdu*, i32 }

@MAXSEQ = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ba_reordering_mpdu_insertsorted(%struct.reordering_list* %0, %struct.reordering_mpdu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.reordering_list*, align 8
  %5 = alloca %struct.reordering_mpdu*, align 8
  %6 = alloca %struct.reordering_mpdu**, align 8
  store %struct.reordering_list* %0, %struct.reordering_list** %4, align 8
  store %struct.reordering_mpdu* %1, %struct.reordering_mpdu** %5, align 8
  %7 = load %struct.reordering_list*, %struct.reordering_list** %4, align 8
  %8 = getelementptr inbounds %struct.reordering_list, %struct.reordering_list* %7, i32 0, i32 1
  store %struct.reordering_mpdu** %8, %struct.reordering_mpdu*** %6, align 8
  br label %9

9:                                                ; preds = %40, %2
  %10 = load %struct.reordering_mpdu**, %struct.reordering_mpdu*** %6, align 8
  %11 = load %struct.reordering_mpdu*, %struct.reordering_mpdu** %10, align 8
  %12 = icmp ne %struct.reordering_mpdu* %11, null
  br i1 %12, label %13, label %41

13:                                               ; preds = %9
  %14 = load %struct.reordering_mpdu**, %struct.reordering_mpdu*** %6, align 8
  %15 = load %struct.reordering_mpdu*, %struct.reordering_mpdu** %14, align 8
  %16 = getelementptr inbounds %struct.reordering_mpdu, %struct.reordering_mpdu* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.reordering_mpdu*, %struct.reordering_mpdu** %5, align 8
  %19 = getelementptr inbounds %struct.reordering_mpdu, %struct.reordering_mpdu* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @MAXSEQ, align 4
  %22 = call i64 @SEQ_SMALLER(i32 %17, i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %13
  %25 = load %struct.reordering_mpdu**, %struct.reordering_mpdu*** %6, align 8
  %26 = load %struct.reordering_mpdu*, %struct.reordering_mpdu** %25, align 8
  %27 = getelementptr inbounds %struct.reordering_mpdu, %struct.reordering_mpdu* %26, i32 0, i32 0
  store %struct.reordering_mpdu** %27, %struct.reordering_mpdu*** %6, align 8
  br label %40

28:                                               ; preds = %13
  %29 = load %struct.reordering_mpdu**, %struct.reordering_mpdu*** %6, align 8
  %30 = load %struct.reordering_mpdu*, %struct.reordering_mpdu** %29, align 8
  %31 = getelementptr inbounds %struct.reordering_mpdu, %struct.reordering_mpdu* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.reordering_mpdu*, %struct.reordering_mpdu** %5, align 8
  %34 = getelementptr inbounds %struct.reordering_mpdu, %struct.reordering_mpdu* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* %3, align 4
  br label %53

39:                                               ; preds = %28
  br label %41

40:                                               ; preds = %24
  br label %9

41:                                               ; preds = %39, %9
  %42 = load %struct.reordering_mpdu**, %struct.reordering_mpdu*** %6, align 8
  %43 = load %struct.reordering_mpdu*, %struct.reordering_mpdu** %42, align 8
  %44 = load %struct.reordering_mpdu*, %struct.reordering_mpdu** %5, align 8
  %45 = getelementptr inbounds %struct.reordering_mpdu, %struct.reordering_mpdu* %44, i32 0, i32 0
  store %struct.reordering_mpdu* %43, %struct.reordering_mpdu** %45, align 8
  %46 = load %struct.reordering_mpdu*, %struct.reordering_mpdu** %5, align 8
  %47 = load %struct.reordering_mpdu**, %struct.reordering_mpdu*** %6, align 8
  store %struct.reordering_mpdu* %46, %struct.reordering_mpdu** %47, align 8
  %48 = load %struct.reordering_list*, %struct.reordering_list** %4, align 8
  %49 = getelementptr inbounds %struct.reordering_list, %struct.reordering_list* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  %52 = load i32, i32* @TRUE, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %41, %37
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i64 @SEQ_SMALLER(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
