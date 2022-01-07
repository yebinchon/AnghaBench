; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_maybe_both_true_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_maybe_both_true_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decision_test = type { i64, %struct.decision_test* }

@DT_accept_op = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.decision_test*, %struct.decision_test*)* @maybe_both_true_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @maybe_both_true_1(%struct.decision_test* %0, %struct.decision_test* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.decision_test*, align 8
  %5 = alloca %struct.decision_test*, align 8
  %6 = alloca %struct.decision_test*, align 8
  %7 = alloca %struct.decision_test*, align 8
  store %struct.decision_test* %0, %struct.decision_test** %4, align 8
  store %struct.decision_test* %1, %struct.decision_test** %5, align 8
  %8 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %9 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @DT_accept_op, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %15 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @DT_accept_op, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %2
  store i32 1, i32* %3, align 4
  br label %77

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %43, %20
  %22 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %23 = icmp ne %struct.decision_test* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %26 = icmp ne %struct.decision_test* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %29 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %32 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br label %35

35:                                               ; preds = %27, %24, %21
  %36 = phi i1 [ false, %24 ], [ false, %21 ], [ %34, %27 ]
  br i1 %36, label %37, label %50

37:                                               ; preds = %35
  %38 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %39 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %40 = call i64 @maybe_both_true_2(%struct.decision_test* %38, %struct.decision_test* %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %77

43:                                               ; preds = %37
  %44 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %45 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %44, i32 0, i32 1
  %46 = load %struct.decision_test*, %struct.decision_test** %45, align 8
  store %struct.decision_test* %46, %struct.decision_test** %4, align 8
  %47 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %48 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %47, i32 0, i32 1
  %49 = load %struct.decision_test*, %struct.decision_test** %48, align 8
  store %struct.decision_test* %49, %struct.decision_test** %5, align 8
  br label %21

50:                                               ; preds = %35
  %51 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  store %struct.decision_test* %51, %struct.decision_test** %6, align 8
  br label %52

52:                                               ; preds = %72, %50
  %53 = load %struct.decision_test*, %struct.decision_test** %6, align 8
  %54 = icmp ne %struct.decision_test* %53, null
  br i1 %54, label %55, label %76

55:                                               ; preds = %52
  %56 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  store %struct.decision_test* %56, %struct.decision_test** %7, align 8
  br label %57

57:                                               ; preds = %67, %55
  %58 = load %struct.decision_test*, %struct.decision_test** %7, align 8
  %59 = icmp ne %struct.decision_test* %58, null
  br i1 %59, label %60, label %71

60:                                               ; preds = %57
  %61 = load %struct.decision_test*, %struct.decision_test** %6, align 8
  %62 = load %struct.decision_test*, %struct.decision_test** %7, align 8
  %63 = call i64 @maybe_both_true_2(%struct.decision_test* %61, %struct.decision_test* %62)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %77

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.decision_test*, %struct.decision_test** %7, align 8
  %69 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %68, i32 0, i32 1
  %70 = load %struct.decision_test*, %struct.decision_test** %69, align 8
  store %struct.decision_test* %70, %struct.decision_test** %7, align 8
  br label %57

71:                                               ; preds = %57
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.decision_test*, %struct.decision_test** %6, align 8
  %74 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %73, i32 0, i32 1
  %75 = load %struct.decision_test*, %struct.decision_test** %74, align 8
  store %struct.decision_test* %75, %struct.decision_test** %6, align 8
  br label %52

76:                                               ; preds = %52
  store i32 -1, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %65, %42, %19
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i64 @maybe_both_true_2(%struct.decision_test*, %struct.decision_test*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
