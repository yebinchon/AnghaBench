; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_simplify_tests.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_simplify_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decision_head = type { %struct.decision* }
%struct.decision = type { %struct.decision_head, %struct.decision*, %struct.decision_test* }
%struct.decision_test = type { i64, %struct.decision_test* }

@DT_pred = common dso_local global i64 0, align 8
@DT_mode = common dso_local global i64 0, align 8
@DT_code = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.decision_head*)* @simplify_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @simplify_tests(%struct.decision_head* %0) #0 {
  %2 = alloca %struct.decision_head*, align 8
  %3 = alloca %struct.decision*, align 8
  %4 = alloca %struct.decision_test*, align 8
  %5 = alloca %struct.decision_test*, align 8
  store %struct.decision_head* %0, %struct.decision_head** %2, align 8
  %6 = load %struct.decision_head*, %struct.decision_head** %2, align 8
  %7 = getelementptr inbounds %struct.decision_head, %struct.decision_head* %6, i32 0, i32 0
  %8 = load %struct.decision*, %struct.decision** %7, align 8
  store %struct.decision* %8, %struct.decision** %3, align 8
  br label %9

9:                                                ; preds = %65, %1
  %10 = load %struct.decision*, %struct.decision** %3, align 8
  %11 = icmp ne %struct.decision* %10, null
  br i1 %11, label %12, label %69

12:                                               ; preds = %9
  %13 = load %struct.decision*, %struct.decision** %3, align 8
  %14 = getelementptr inbounds %struct.decision, %struct.decision* %13, i32 0, i32 2
  %15 = load %struct.decision_test*, %struct.decision_test** %14, align 8
  store %struct.decision_test* %15, %struct.decision_test** %4, align 8
  %16 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %17 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %16, i32 0, i32 1
  %18 = load %struct.decision_test*, %struct.decision_test** %17, align 8
  store %struct.decision_test* %18, %struct.decision_test** %5, align 8
  %19 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %20 = icmp eq %struct.decision_test* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %65

22:                                               ; preds = %12
  br label %23

23:                                               ; preds = %34, %22
  %24 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %25 = icmp ne %struct.decision_test* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %28 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DT_pred, align 8
  %31 = icmp ne i64 %29, %30
  br label %32

32:                                               ; preds = %26, %23
  %33 = phi i1 [ false, %23 ], [ %31, %26 ]
  br i1 %33, label %34, label %38

34:                                               ; preds = %32
  %35 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %36 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %35, i32 0, i32 1
  %37 = load %struct.decision_test*, %struct.decision_test** %36, align 8
  store %struct.decision_test* %37, %struct.decision_test** %5, align 8
  br label %23

38:                                               ; preds = %32
  %39 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %40 = icmp ne %struct.decision_test* %39, null
  br i1 %40, label %41, label %64

41:                                               ; preds = %38
  br label %42

42:                                               ; preds = %56, %41
  %43 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %44 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @DT_mode, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %50 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @DT_code, align 8
  %53 = icmp eq i64 %51, %52
  br label %54

54:                                               ; preds = %48, %42
  %55 = phi i1 [ true, %42 ], [ %53, %48 ]
  br i1 %55, label %56, label %60

56:                                               ; preds = %54
  %57 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %58 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %57, i32 0, i32 1
  %59 = load %struct.decision_test*, %struct.decision_test** %58, align 8
  store %struct.decision_test* %59, %struct.decision_test** %4, align 8
  br label %42

60:                                               ; preds = %54
  %61 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %62 = load %struct.decision*, %struct.decision** %3, align 8
  %63 = getelementptr inbounds %struct.decision, %struct.decision* %62, i32 0, i32 2
  store %struct.decision_test* %61, %struct.decision_test** %63, align 8
  br label %64

64:                                               ; preds = %60, %38
  br label %65

65:                                               ; preds = %64, %21
  %66 = load %struct.decision*, %struct.decision** %3, align 8
  %67 = getelementptr inbounds %struct.decision, %struct.decision* %66, i32 0, i32 1
  %68 = load %struct.decision*, %struct.decision** %67, align 8
  store %struct.decision* %68, %struct.decision** %3, align 8
  br label %9

69:                                               ; preds = %9
  %70 = load %struct.decision_head*, %struct.decision_head** %2, align 8
  %71 = getelementptr inbounds %struct.decision_head, %struct.decision_head* %70, i32 0, i32 0
  %72 = load %struct.decision*, %struct.decision** %71, align 8
  store %struct.decision* %72, %struct.decision** %3, align 8
  br label %73

73:                                               ; preds = %79, %69
  %74 = load %struct.decision*, %struct.decision** %3, align 8
  %75 = icmp ne %struct.decision* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load %struct.decision*, %struct.decision** %3, align 8
  %78 = getelementptr inbounds %struct.decision, %struct.decision* %77, i32 0, i32 0
  call void @simplify_tests(%struct.decision_head* %78)
  br label %79

79:                                               ; preds = %76
  %80 = load %struct.decision*, %struct.decision** %3, align 8
  %81 = getelementptr inbounds %struct.decision, %struct.decision* %80, i32 0, i32 1
  %82 = load %struct.decision*, %struct.decision** %81, align 8
  store %struct.decision* %82, %struct.decision** %3, align 8
  br label %73

83:                                               ; preds = %73
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
