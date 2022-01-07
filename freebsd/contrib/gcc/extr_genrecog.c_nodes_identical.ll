; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_nodes_identical.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_nodes_identical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decision = type { %struct.TYPE_4__, %struct.decision_test* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.decision_test = type { i64, %struct.decision_test* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.decision*, %struct.decision*)* @nodes_identical to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nodes_identical(%struct.decision* %0, %struct.decision* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.decision*, align 8
  %5 = alloca %struct.decision*, align 8
  %6 = alloca %struct.decision_test*, align 8
  %7 = alloca %struct.decision_test*, align 8
  store %struct.decision* %0, %struct.decision** %4, align 8
  store %struct.decision* %1, %struct.decision** %5, align 8
  %8 = load %struct.decision*, %struct.decision** %4, align 8
  %9 = getelementptr inbounds %struct.decision, %struct.decision* %8, i32 0, i32 1
  %10 = load %struct.decision_test*, %struct.decision_test** %9, align 8
  store %struct.decision_test* %10, %struct.decision_test** %6, align 8
  %11 = load %struct.decision*, %struct.decision** %5, align 8
  %12 = getelementptr inbounds %struct.decision, %struct.decision* %11, i32 0, i32 1
  %13 = load %struct.decision_test*, %struct.decision_test** %12, align 8
  store %struct.decision_test* %13, %struct.decision_test** %7, align 8
  br label %14

14:                                               ; preds = %38, %2
  %15 = load %struct.decision_test*, %struct.decision_test** %6, align 8
  %16 = icmp ne %struct.decision_test* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load %struct.decision_test*, %struct.decision_test** %7, align 8
  %19 = icmp ne %struct.decision_test* %18, null
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi i1 [ false, %14 ], [ %19, %17 ]
  br i1 %21, label %22, label %45

22:                                               ; preds = %20
  %23 = load %struct.decision_test*, %struct.decision_test** %6, align 8
  %24 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.decision_test*, %struct.decision_test** %7, align 8
  %27 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %79

31:                                               ; preds = %22
  %32 = load %struct.decision_test*, %struct.decision_test** %6, align 8
  %33 = load %struct.decision_test*, %struct.decision_test** %7, align 8
  %34 = call i32 @nodes_identical_1(%struct.decision_test* %32, %struct.decision_test* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %79

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.decision_test*, %struct.decision_test** %6, align 8
  %40 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %39, i32 0, i32 1
  %41 = load %struct.decision_test*, %struct.decision_test** %40, align 8
  store %struct.decision_test* %41, %struct.decision_test** %6, align 8
  %42 = load %struct.decision_test*, %struct.decision_test** %7, align 8
  %43 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %42, i32 0, i32 1
  %44 = load %struct.decision_test*, %struct.decision_test** %43, align 8
  store %struct.decision_test* %44, %struct.decision_test** %7, align 8
  br label %14

45:                                               ; preds = %20
  %46 = load %struct.decision_test*, %struct.decision_test** %6, align 8
  %47 = load %struct.decision_test*, %struct.decision_test** %7, align 8
  %48 = icmp ne %struct.decision_test* %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %79

50:                                               ; preds = %45
  %51 = load %struct.decision*, %struct.decision** %4, align 8
  %52 = getelementptr inbounds %struct.decision, %struct.decision* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = icmp ne %struct.TYPE_3__* %54, null
  br i1 %55, label %56, label %78

56:                                               ; preds = %50
  %57 = load %struct.decision*, %struct.decision** %5, align 8
  %58 = getelementptr inbounds %struct.decision, %struct.decision* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = icmp ne %struct.TYPE_3__* %60, null
  br i1 %61, label %62, label %78

62:                                               ; preds = %56
  %63 = load %struct.decision*, %struct.decision** %4, align 8
  %64 = getelementptr inbounds %struct.decision, %struct.decision* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.decision*, %struct.decision** %5, align 8
  %70 = getelementptr inbounds %struct.decision, %struct.decision* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @strcmp(i32 %68, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %79

78:                                               ; preds = %62, %56, %50
  store i32 1, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %77, %49, %36, %30
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @nodes_identical_1(%struct.decision_test*, %struct.decision_test*) #1

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
