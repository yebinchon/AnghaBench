; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_write_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_write_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decision = type { %struct.TYPE_4__, %struct.decision_test* }
%struct.TYPE_4__ = type { i32 }
%struct.decision_test = type { i64, %struct.decision_test*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@DT_code = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@DT_elt_zero_wide_safe = common dso_local global i64 0, align 8
@MAX_SAVED_CONST_INT = common dso_local global i32 0, align 4
@DT_const_int = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"  if (\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"\0A      && \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.decision*, i32, i32)* @write_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_node(%struct.decision* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.decision*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.decision_test*, align 8
  %8 = alloca %struct.decision_test*, align 8
  %9 = alloca i32, align 4
  store %struct.decision* %0, %struct.decision** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.decision*, %struct.decision** %4, align 8
  %11 = getelementptr inbounds %struct.decision, %struct.decision* %10, i32 0, i32 1
  %12 = load %struct.decision_test*, %struct.decision_test** %11, align 8
  store %struct.decision_test* %12, %struct.decision_test** %7, align 8
  br label %13

13:                                               ; preds = %82, %3
  %14 = load %struct.decision_test*, %struct.decision_test** %7, align 8
  %15 = icmp ne %struct.decision_test* %14, null
  br i1 %15, label %16, label %86

16:                                               ; preds = %13
  %17 = load %struct.decision_test*, %struct.decision_test** %7, align 8
  %18 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DT_code, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %81

22:                                               ; preds = %16
  %23 = load %struct.decision_test*, %struct.decision_test** %7, align 8
  %24 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CONST_INT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %81

29:                                               ; preds = %22
  %30 = load %struct.decision_test*, %struct.decision_test** %7, align 8
  %31 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %30, i32 0, i32 1
  %32 = load %struct.decision_test*, %struct.decision_test** %31, align 8
  %33 = icmp ne %struct.decision_test* %32, null
  br i1 %33, label %34, label %81

34:                                               ; preds = %29
  %35 = load %struct.decision_test*, %struct.decision_test** %7, align 8
  %36 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %35, i32 0, i32 1
  %37 = load %struct.decision_test*, %struct.decision_test** %36, align 8
  %38 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @DT_elt_zero_wide_safe, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %81

42:                                               ; preds = %34
  %43 = load i32, i32* @MAX_SAVED_CONST_INT, align 4
  %44 = sub nsw i32 0, %43
  %45 = load %struct.decision_test*, %struct.decision_test** %7, align 8
  %46 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %45, i32 0, i32 1
  %47 = load %struct.decision_test*, %struct.decision_test** %46, align 8
  %48 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp sle i32 %44, %50
  br i1 %51, label %52, label %81

52:                                               ; preds = %42
  %53 = load %struct.decision_test*, %struct.decision_test** %7, align 8
  %54 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %53, i32 0, i32 1
  %55 = load %struct.decision_test*, %struct.decision_test** %54, align 8
  %56 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @MAX_SAVED_CONST_INT, align 4
  %60 = icmp sle i32 %58, %59
  br i1 %60, label %61, label %81

61:                                               ; preds = %52
  %62 = load i64, i64* @DT_const_int, align 8
  %63 = load %struct.decision_test*, %struct.decision_test** %7, align 8
  %64 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load %struct.decision_test*, %struct.decision_test** %7, align 8
  %66 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %65, i32 0, i32 1
  %67 = load %struct.decision_test*, %struct.decision_test** %66, align 8
  %68 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.decision_test*, %struct.decision_test** %7, align 8
  %72 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  store i32 %70, i32* %73, align 8
  %74 = load %struct.decision_test*, %struct.decision_test** %7, align 8
  %75 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %74, i32 0, i32 1
  %76 = load %struct.decision_test*, %struct.decision_test** %75, align 8
  %77 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %76, i32 0, i32 1
  %78 = load %struct.decision_test*, %struct.decision_test** %77, align 8
  %79 = load %struct.decision_test*, %struct.decision_test** %7, align 8
  %80 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %79, i32 0, i32 1
  store %struct.decision_test* %78, %struct.decision_test** %80, align 8
  br label %81

81:                                               ; preds = %61, %52, %42, %34, %29, %22, %16
  br label %82

82:                                               ; preds = %81
  %83 = load %struct.decision_test*, %struct.decision_test** %7, align 8
  %84 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %83, i32 0, i32 1
  %85 = load %struct.decision_test*, %struct.decision_test** %84, align 8
  store %struct.decision_test* %85, %struct.decision_test** %7, align 8
  br label %13

86:                                               ; preds = %13
  %87 = load %struct.decision*, %struct.decision** %4, align 8
  %88 = getelementptr inbounds %struct.decision, %struct.decision* %87, i32 0, i32 1
  %89 = load %struct.decision_test*, %struct.decision_test** %88, align 8
  store %struct.decision_test* %89, %struct.decision_test** %7, align 8
  store %struct.decision_test* %89, %struct.decision_test** %8, align 8
  %90 = load %struct.decision_test*, %struct.decision_test** %7, align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @is_unconditional(%struct.decision_test* %90, i32 %91)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %121

95:                                               ; preds = %86
  %96 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %97 = load %struct.decision_test*, %struct.decision_test** %7, align 8
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @write_cond(%struct.decision_test* %97, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %113, %95
  %102 = load %struct.decision_test*, %struct.decision_test** %7, align 8
  %103 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %102, i32 0, i32 1
  %104 = load %struct.decision_test*, %struct.decision_test** %103, align 8
  store %struct.decision_test* %104, %struct.decision_test** %7, align 8
  %105 = icmp ne %struct.decision_test* %104, null
  br i1 %105, label %106, label %119

106:                                              ; preds = %101
  %107 = load %struct.decision_test*, %struct.decision_test** %7, align 8
  store %struct.decision_test* %107, %struct.decision_test** %8, align 8
  %108 = load %struct.decision_test*, %struct.decision_test** %7, align 8
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @is_unconditional(%struct.decision_test* %108, i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  br label %119

113:                                              ; preds = %106
  %114 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %115 = load %struct.decision_test*, %struct.decision_test** %7, align 8
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @write_cond(%struct.decision_test* %115, i32 %116, i32 %117)
  br label %101

119:                                              ; preds = %112, %101
  %120 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %121

121:                                              ; preds = %119, %86
  %122 = load %struct.decision*, %struct.decision** %4, align 8
  %123 = load %struct.decision_test*, %struct.decision_test** %8, align 8
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* %9, align 4
  %126 = load %struct.decision*, %struct.decision** %4, align 8
  %127 = getelementptr inbounds %struct.decision, %struct.decision* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @write_action(%struct.decision* %122, %struct.decision_test* %123, i32 %124, i32 %125, i32 %129, i32 %130)
  %132 = load i32, i32* %9, align 4
  %133 = icmp sgt i32 %132, 0
  %134 = zext i1 %133 to i32
  ret i32 %134
}

declare dso_local i32 @is_unconditional(%struct.decision_test*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @write_cond(%struct.decision_test*, i32, i32) #1

declare dso_local i32 @write_action(%struct.decision*, %struct.decision_test*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
