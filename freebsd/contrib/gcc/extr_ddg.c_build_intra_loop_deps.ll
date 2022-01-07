; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ddg.c_build_intra_loop_deps.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ddg.c_build_intra_loop_deps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.deps = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @build_intra_loop_deps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_intra_loop_deps(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.deps, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %12 = call i32 (...) @init_deps_global()
  %13 = call i32 @init_deps(%struct.deps* %4)
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @get_ebb_head_tail(i32 %16, i32 %19, i64* %5, i64* %6)
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @sched_analyze(%struct.deps* %4, i64 %21, i64 %22)
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %118, %1
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %121

30:                                               ; preds = %24
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i64 %35
  store %struct.TYPE_13__* %36, %struct.TYPE_13__** %8, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @INSN_P(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %30
  br label %118

43:                                               ; preds = %30
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @LOG_LINKS(i32 %46)
  store i64 %47, i64* %7, align 8
  br label %48

48:                                               ; preds = %73, %43
  %49 = load i64, i64* %7, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %76

51:                                               ; preds = %48
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call i64 @XEXP(i64 %53, i32 0)
  %55 = call %struct.TYPE_13__* @get_node_of_insn(%struct.TYPE_12__* %52, i64 %54)
  store %struct.TYPE_13__* %55, %struct.TYPE_13__** %9, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %57 = icmp ne %struct.TYPE_13__* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  br label %73

59:                                               ; preds = %51
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @add_forw_dep(i32 %62, i64 %63)
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @INSN_DEPEND(i32 %70)
  %72 = call i32 @create_ddg_dependence(%struct.TYPE_12__* %65, %struct.TYPE_13__* %66, %struct.TYPE_13__* %67, i32 %71)
  br label %73

73:                                               ; preds = %59, %58
  %74 = load i64, i64* %7, align 8
  %75 = call i64 @XEXP(i64 %74, i32 1)
  store i64 %75, i64* %7, align 8
  br label %48

76:                                               ; preds = %48
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @mem_access_insn_p(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %117

82:                                               ; preds = %76
  store i32 0, i32* %10, align 4
  br label %83

83:                                               ; preds = %113, %82
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %3, align 4
  %86 = icmp sle i32 %84, %85
  br i1 %86, label %87, label %116

87:                                               ; preds = %83
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i64 %92
  store %struct.TYPE_13__* %93, %struct.TYPE_13__** %11, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @mem_access_insn_p(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %87
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @TEST_BIT(i32 %102, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %99
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %110 = call i32 @add_inter_loop_mem_dep(%struct.TYPE_12__* %107, %struct.TYPE_13__* %108, %struct.TYPE_13__* %109)
  br label %111

111:                                              ; preds = %106, %99
  br label %112

112:                                              ; preds = %111, %87
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %10, align 4
  br label %83

116:                                              ; preds = %83
  br label %117

117:                                              ; preds = %116, %76
  br label %118

118:                                              ; preds = %117, %42
  %119 = load i32, i32* %3, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %3, align 4
  br label %24

121:                                              ; preds = %24
  %122 = call i32 (...) @finish_deps_global()
  %123 = call i32 @free_deps(%struct.deps* %4)
  ret void
}

declare dso_local i32 @init_deps_global(...) #1

declare dso_local i32 @init_deps(%struct.deps*) #1

declare dso_local i32 @get_ebb_head_tail(i32, i32, i64*, i64*) #1

declare dso_local i32 @sched_analyze(%struct.deps*, i64, i64) #1

declare dso_local i32 @INSN_P(i32) #1

declare dso_local i64 @LOG_LINKS(i32) #1

declare dso_local %struct.TYPE_13__* @get_node_of_insn(%struct.TYPE_12__*, i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @add_forw_dep(i32, i64) #1

declare dso_local i32 @create_ddg_dependence(%struct.TYPE_12__*, %struct.TYPE_13__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @INSN_DEPEND(i32) #1

declare dso_local i64 @mem_access_insn_p(i32) #1

declare dso_local i32 @TEST_BIT(i32, i32) #1

declare dso_local i32 @add_inter_loop_mem_dep(%struct.TYPE_12__*, %struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @finish_deps_global(...) #1

declare dso_local i32 @free_deps(%struct.deps*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
