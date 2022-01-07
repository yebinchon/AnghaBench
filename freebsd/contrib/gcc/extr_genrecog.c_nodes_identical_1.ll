; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_nodes_identical_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_nodes_identical_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decision_test = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.decision_test*, %struct.decision_test*)* @nodes_identical_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nodes_identical_1(%struct.decision_test* %0, %struct.decision_test* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.decision_test*, align 8
  %5 = alloca %struct.decision_test*, align 8
  store %struct.decision_test* %0, %struct.decision_test** %4, align 8
  store %struct.decision_test* %1, %struct.decision_test** %5, align 8
  %6 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %7 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %127 [
    i32 131, label %9
    i32 132, label %20
    i32 138, label %31
    i32 130, label %42
    i32 139, label %70
    i32 129, label %82
    i32 128, label %82
    i32 137, label %93
    i32 135, label %104
    i32 136, label %104
    i32 134, label %104
    i32 133, label %104
    i32 140, label %115
    i32 141, label %126
  ]

9:                                                ; preds = %2
  %10 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %11 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 8
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %15 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %13, %17
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %3, align 4
  br label %129

20:                                               ; preds = %2
  %21 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %22 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %26 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %24, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %3, align 4
  br label %129

31:                                               ; preds = %2
  %32 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %33 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %37 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %35, %39
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %3, align 4
  br label %129

42:                                               ; preds = %2
  %43 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %44 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %49 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %47, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %42
  %55 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %56 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %61 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @strcmp(i32 %59, i32 %64)
  %66 = icmp eq i32 %65, 0
  br label %67

67:                                               ; preds = %54, %42
  %68 = phi i1 [ false, %42 ], [ %66, %54 ]
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %3, align 4
  br label %129

70:                                               ; preds = %2
  %71 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %72 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %76 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @strcmp(i32 %74, i32 %78)
  %80 = icmp eq i32 %79, 0
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %3, align 4
  br label %129

82:                                               ; preds = %2, %2
  %83 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %84 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %88 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %86, %90
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %3, align 4
  br label %129

93:                                               ; preds = %2
  %94 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %95 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %99 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %97, %101
  %103 = zext i1 %102 to i32
  store i32 %103, i32* %3, align 4
  br label %129

104:                                              ; preds = %2, %2, %2, %2
  %105 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %106 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %110 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %108, %112
  %114 = zext i1 %113 to i32
  store i32 %114, i32* %3, align 4
  br label %129

115:                                              ; preds = %2
  %116 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %117 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %121 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %119, %123
  %125 = zext i1 %124 to i32
  store i32 %125, i32* %3, align 4
  br label %129

126:                                              ; preds = %2
  store i32 1, i32* %3, align 4
  br label %129

127:                                              ; preds = %2
  %128 = call i32 (...) @gcc_unreachable()
  br label %129

129:                                              ; preds = %9, %20, %31, %67, %70, %82, %93, %104, %115, %126, %127
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
