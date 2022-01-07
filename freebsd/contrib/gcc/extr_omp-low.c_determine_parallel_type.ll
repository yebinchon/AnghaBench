; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_determine_parallel_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_determine_parallel_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omp_region = type { i64, i32, i32, %struct.TYPE_2__*, i32*, i32* }
%struct.TYPE_2__ = type { i64, i32, i32*, i32* }

@OMP_PARALLEL = common dso_local global i64 0, align 8
@OMP_FOR = common dso_local global i64 0, align 8
@OMP_SECTIONS = common dso_local global i64 0, align 8
@OMP_CLAUSE_SCHEDULE = common dso_local global i32 0, align 4
@OMP_CLAUSE_SCHEDULE_STATIC = common dso_local global i64 0, align 8
@OMP_CLAUSE_ORDERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omp_region*)* @determine_parallel_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @determine_parallel_type(%struct.omp_region* %0) #0 {
  %2 = alloca %struct.omp_region*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.omp_region* %0, %struct.omp_region** %2, align 8
  %10 = load %struct.omp_region*, %struct.omp_region** %2, align 8
  %11 = icmp eq %struct.omp_region* %10, null
  br i1 %11, label %29, label %12

12:                                               ; preds = %1
  %13 = load %struct.omp_region*, %struct.omp_region** %2, align 8
  %14 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp eq %struct.TYPE_2__* %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %12
  %18 = load %struct.omp_region*, %struct.omp_region** %2, align 8
  %19 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %17
  %23 = load %struct.omp_region*, %struct.omp_region** %2, align 8
  %24 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %23, i32 0, i32 3
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %22, %17, %12, %1
  br label %144

30:                                               ; preds = %22
  %31 = load %struct.omp_region*, %struct.omp_region** %2, align 8
  %32 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @OMP_PARALLEL, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %52, label %36

36:                                               ; preds = %30
  %37 = load %struct.omp_region*, %struct.omp_region** %2, align 8
  %38 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %37, i32 0, i32 3
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @OMP_FOR, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %36
  %45 = load %struct.omp_region*, %struct.omp_region** %2, align 8
  %46 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %45, i32 0, i32 3
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @OMP_SECTIONS, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44, %30
  br label %144

53:                                               ; preds = %44, %36
  %54 = load %struct.omp_region*, %struct.omp_region** %2, align 8
  %55 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %54, i32 0, i32 5
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %3, align 8
  %57 = load %struct.omp_region*, %struct.omp_region** %2, align 8
  %58 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %57, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** %4, align 8
  %60 = load %struct.omp_region*, %struct.omp_region** %2, align 8
  %61 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %60, i32 0, i32 3
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  store i32* %64, i32** %5, align 8
  %65 = load %struct.omp_region*, %struct.omp_region** %2, align 8
  %66 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %65, i32 0, i32 3
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %6, align 8
  %70 = load i32*, i32** %3, align 8
  %71 = call i32* @single_succ(i32* %70)
  %72 = load i32*, i32** %5, align 8
  %73 = icmp eq i32* %71, %72
  br i1 %73, label %74, label %144

74:                                               ; preds = %53
  %75 = load i32*, i32** %6, align 8
  %76 = call i32* @single_succ(i32* %75)
  %77 = load i32*, i32** %4, align 8
  %78 = icmp eq i32* %76, %77
  br i1 %78, label %79, label %144

79:                                               ; preds = %74
  %80 = load i32*, i32** %3, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = call i64 @workshare_safe_to_combine_p(i32* %80, i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %144

84:                                               ; preds = %79
  %85 = load i32*, i32** %3, align 8
  %86 = call i32* @last_stmt(i32* %85)
  %87 = call i64 @OMP_PARALLEL_COMBINED(i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %84
  %90 = load i32*, i32** %5, align 8
  %91 = call i64 @last_and_only_stmt(i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %144

93:                                               ; preds = %89
  %94 = load i32*, i32** %4, align 8
  %95 = call i64 @last_and_only_stmt(i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %144

97:                                               ; preds = %93, %84
  %98 = load i32*, i32** %5, align 8
  %99 = call i32* @last_stmt(i32* %98)
  store i32* %99, i32** %7, align 8
  %100 = load %struct.omp_region*, %struct.omp_region** %2, align 8
  %101 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %100, i32 0, i32 3
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @OMP_FOR, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %133

107:                                              ; preds = %97
  %108 = load i32*, i32** %7, align 8
  %109 = call i32* @OMP_FOR_CLAUSES(i32* %108)
  store i32* %109, i32** %8, align 8
  %110 = load i32*, i32** %8, align 8
  %111 = load i32, i32* @OMP_CLAUSE_SCHEDULE, align 4
  %112 = call i32* @find_omp_clause(i32* %110, i32 %111)
  store i32* %112, i32** %9, align 8
  %113 = load i32*, i32** %9, align 8
  %114 = icmp eq i32* %113, null
  br i1 %114, label %125, label %115

115:                                              ; preds = %107
  %116 = load i32*, i32** %9, align 8
  %117 = call i64 @OMP_CLAUSE_SCHEDULE_KIND(i32* %116)
  %118 = load i64, i64* @OMP_CLAUSE_SCHEDULE_STATIC, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %125, label %120

120:                                              ; preds = %115
  %121 = load i32*, i32** %8, align 8
  %122 = load i32, i32* @OMP_CLAUSE_ORDERED, align 4
  %123 = call i32* @find_omp_clause(i32* %121, i32 %122)
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %132

125:                                              ; preds = %120, %115, %107
  %126 = load %struct.omp_region*, %struct.omp_region** %2, align 8
  %127 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %126, i32 0, i32 1
  store i32 0, i32* %127, align 8
  %128 = load %struct.omp_region*, %struct.omp_region** %2, align 8
  %129 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %128, i32 0, i32 3
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 1
  store i32 0, i32* %131, align 8
  br label %144

132:                                              ; preds = %120
  br label %133

133:                                              ; preds = %132, %97
  %134 = load %struct.omp_region*, %struct.omp_region** %2, align 8
  %135 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %134, i32 0, i32 1
  store i32 1, i32* %135, align 8
  %136 = load %struct.omp_region*, %struct.omp_region** %2, align 8
  %137 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %136, i32 0, i32 3
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  store i32 1, i32* %139, align 8
  %140 = load i32*, i32** %7, align 8
  %141 = call i32 @get_ws_args_for(i32* %140)
  %142 = load %struct.omp_region*, %struct.omp_region** %2, align 8
  %143 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 4
  br label %144

144:                                              ; preds = %29, %52, %125, %133, %93, %89, %79, %74, %53
  ret void
}

declare dso_local i32* @single_succ(i32*) #1

declare dso_local i64 @workshare_safe_to_combine_p(i32*, i32*) #1

declare dso_local i64 @OMP_PARALLEL_COMBINED(i32*) #1

declare dso_local i32* @last_stmt(i32*) #1

declare dso_local i64 @last_and_only_stmt(i32*) #1

declare dso_local i32* @OMP_FOR_CLAUSES(i32*) #1

declare dso_local i32* @find_omp_clause(i32*, i32) #1

declare dso_local i64 @OMP_CLAUSE_SCHEDULE_KIND(i32*) #1

declare dso_local i32 @get_ws_args_for(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
