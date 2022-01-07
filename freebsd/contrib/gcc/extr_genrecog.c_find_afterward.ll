; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_find_afterward.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_find_afterward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decision_head = type { %struct.decision* }
%struct.decision = type { i64, i32, %struct.decision*, %struct.decision_head, %struct.decision* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.decision_head*, %struct.decision*)* @find_afterward to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_afterward(%struct.decision_head* %0, %struct.decision* %1) #0 {
  %3 = alloca %struct.decision_head*, align 8
  %4 = alloca %struct.decision*, align 8
  %5 = alloca %struct.decision*, align 8
  %6 = alloca %struct.decision*, align 8
  %7 = alloca %struct.decision*, align 8
  store %struct.decision_head* %0, %struct.decision_head** %3, align 8
  store %struct.decision* %1, %struct.decision** %4, align 8
  %8 = load %struct.decision_head*, %struct.decision_head** %3, align 8
  %9 = getelementptr inbounds %struct.decision_head, %struct.decision_head* %8, i32 0, i32 0
  %10 = load %struct.decision*, %struct.decision** %9, align 8
  store %struct.decision* %10, %struct.decision** %5, align 8
  %11 = load %struct.decision*, %struct.decision** %5, align 8
  %12 = getelementptr inbounds %struct.decision, %struct.decision* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %18

16:                                               ; preds = %2
  %17 = load %struct.decision*, %struct.decision** %4, align 8
  br label %18

18:                                               ; preds = %16, %15
  %19 = phi %struct.decision* [ null, %15 ], [ %17, %16 ]
  store %struct.decision* %19, %struct.decision** %7, align 8
  br label %20

20:                                               ; preds = %56, %18
  %21 = load %struct.decision*, %struct.decision** %5, align 8
  %22 = icmp ne %struct.decision* %21, null
  br i1 %22, label %23, label %60

23:                                               ; preds = %20
  %24 = load %struct.decision*, %struct.decision** %5, align 8
  %25 = getelementptr inbounds %struct.decision, %struct.decision* %24, i32 0, i32 4
  %26 = load %struct.decision*, %struct.decision** %25, align 8
  store %struct.decision* %26, %struct.decision** %6, align 8
  br label %27

27:                                               ; preds = %37, %23
  %28 = load %struct.decision*, %struct.decision** %6, align 8
  %29 = icmp ne %struct.decision* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = load %struct.decision*, %struct.decision** %5, align 8
  %32 = load %struct.decision*, %struct.decision** %6, align 8
  %33 = call i64 @maybe_both_true(%struct.decision* %31, %struct.decision* %32, i32 1)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %41

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.decision*, %struct.decision** %6, align 8
  %39 = getelementptr inbounds %struct.decision, %struct.decision* %38, i32 0, i32 4
  %40 = load %struct.decision*, %struct.decision** %39, align 8
  store %struct.decision* %40, %struct.decision** %6, align 8
  br label %27

41:                                               ; preds = %35, %27
  %42 = load %struct.decision*, %struct.decision** %6, align 8
  %43 = icmp ne %struct.decision* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = load %struct.decision*, %struct.decision** %7, align 8
  store %struct.decision* %45, %struct.decision** %6, align 8
  br label %46

46:                                               ; preds = %44, %41
  %47 = load %struct.decision*, %struct.decision** %6, align 8
  %48 = load %struct.decision*, %struct.decision** %5, align 8
  %49 = getelementptr inbounds %struct.decision, %struct.decision* %48, i32 0, i32 2
  store %struct.decision* %47, %struct.decision** %49, align 8
  %50 = load %struct.decision*, %struct.decision** %6, align 8
  %51 = icmp ne %struct.decision* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load %struct.decision*, %struct.decision** %6, align 8
  %54 = getelementptr inbounds %struct.decision, %struct.decision* %53, i32 0, i32 1
  store i32 1, i32* %54, align 8
  br label %55

55:                                               ; preds = %52, %46
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.decision*, %struct.decision** %5, align 8
  %58 = getelementptr inbounds %struct.decision, %struct.decision* %57, i32 0, i32 4
  %59 = load %struct.decision*, %struct.decision** %58, align 8
  store %struct.decision* %59, %struct.decision** %5, align 8
  br label %20

60:                                               ; preds = %20
  %61 = load %struct.decision_head*, %struct.decision_head** %3, align 8
  %62 = getelementptr inbounds %struct.decision_head, %struct.decision_head* %61, i32 0, i32 0
  %63 = load %struct.decision*, %struct.decision** %62, align 8
  store %struct.decision* %63, %struct.decision** %5, align 8
  br label %64

64:                                               ; preds = %80, %60
  %65 = load %struct.decision*, %struct.decision** %5, align 8
  %66 = icmp ne %struct.decision* %65, null
  br i1 %66, label %67, label %84

67:                                               ; preds = %64
  %68 = load %struct.decision*, %struct.decision** %5, align 8
  %69 = getelementptr inbounds %struct.decision, %struct.decision* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.decision_head, %struct.decision_head* %69, i32 0, i32 0
  %71 = load %struct.decision*, %struct.decision** %70, align 8
  %72 = icmp ne %struct.decision* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load %struct.decision*, %struct.decision** %5, align 8
  %75 = getelementptr inbounds %struct.decision, %struct.decision* %74, i32 0, i32 3
  %76 = load %struct.decision*, %struct.decision** %5, align 8
  %77 = getelementptr inbounds %struct.decision, %struct.decision* %76, i32 0, i32 2
  %78 = load %struct.decision*, %struct.decision** %77, align 8
  call void @find_afterward(%struct.decision_head* %75, %struct.decision* %78)
  br label %79

79:                                               ; preds = %73, %67
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.decision*, %struct.decision** %5, align 8
  %82 = getelementptr inbounds %struct.decision, %struct.decision* %81, i32 0, i32 4
  %83 = load %struct.decision*, %struct.decision** %82, align 8
  store %struct.decision* %83, %struct.decision** %5, align 8
  br label %64

84:                                               ; preds = %64
  %85 = load %struct.decision_head*, %struct.decision_head** %3, align 8
  %86 = getelementptr inbounds %struct.decision_head, %struct.decision_head* %85, i32 0, i32 0
  %87 = load %struct.decision*, %struct.decision** %86, align 8
  store %struct.decision* %87, %struct.decision** %5, align 8
  %88 = load %struct.decision*, %struct.decision** %5, align 8
  %89 = getelementptr inbounds %struct.decision, %struct.decision* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp sgt i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %84
  %93 = load %struct.decision*, %struct.decision** %4, align 8
  %94 = load %struct.decision*, %struct.decision** %5, align 8
  %95 = getelementptr inbounds %struct.decision, %struct.decision* %94, i32 0, i32 2
  store %struct.decision* %93, %struct.decision** %95, align 8
  br label %96

96:                                               ; preds = %92, %84
  ret void
}

declare dso_local i64 @maybe_both_true(%struct.decision*, %struct.decision*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
