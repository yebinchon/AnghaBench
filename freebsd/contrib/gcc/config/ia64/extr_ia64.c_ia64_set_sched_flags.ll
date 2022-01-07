; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_set_sched_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_set_sched_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i64 }

@current_sched_info = common dso_local global %struct.TYPE_5__* null, align 8
@SCHED_RGN = common dso_local global i32 0, align 4
@SCHED_EBB = common dso_local global i32 0, align 4
@mflag_sched_br_data_spec = common dso_local global i64 0, align 8
@reload_completed = common dso_local global i64 0, align 8
@optimize = common dso_local global i64 0, align 8
@mflag_sched_ar_data_spec = common dso_local global i64 0, align 8
@BEGIN_DATA = common dso_local global i32 0, align 4
@mflag_sched_br_in_data_spec = common dso_local global i64 0, align 8
@mflag_sched_ar_in_data_spec = common dso_local global i64 0, align 8
@BE_IN_DATA = common dso_local global i32 0, align 4
@mflag_sched_control_spec = common dso_local global i64 0, align 8
@BEGIN_CONTROL = common dso_local global i32 0, align 4
@mflag_sched_in_control_spec = common dso_local global i64 0, align 8
@BE_IN_CONTROL = common dso_local global i32 0, align 4
@USE_GLAT = common dso_local global i32 0, align 4
@USE_DEPS_LIST = common dso_local global i32 0, align 4
@DETACH_LIFE_INFO = common dso_local global i32 0, align 4
@DO_SPECULATION = common dso_local global i32 0, align 4
@DATA_SPEC = common dso_local global i32 0, align 4
@mflag_sched_prefer_non_data_spec_insns = common dso_local global i64 0, align 8
@PREFER_NON_DATA_SPEC = common dso_local global i32 0, align 4
@CONTROL_SPEC = common dso_local global i32 0, align 4
@mflag_sched_prefer_non_control_spec_insns = common dso_local global i64 0, align 8
@PREFER_NON_CONTROL_SPEC = common dso_local global i32 0, align 4
@mflag_sched_spec_verbose = common dso_local global i64 0, align 8
@sched_verbose = common dso_local global i32 0, align 4
@sched_dump = common dso_local global i64 0, align 8
@stderr = common dso_local global i64 0, align 8
@mflag_sched_count_spec_in_critical_path = common dso_local global i64 0, align 8
@COUNT_SPEC_IN_CRITICAL_PATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @ia64_set_sched_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ia64_set_sched_flags(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current_sched_info, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SCHED_RGN, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SCHED_EBB, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %145

18:                                               ; preds = %12, %1
  store i32 0, i32* %4, align 4
  %19 = load i64, i64* @mflag_sched_br_data_spec, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i64, i64* @reload_completed, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i64, i64* @optimize, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %24, %21, %18
  %28 = load i64, i64* @mflag_sched_ar_data_spec, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %27
  %31 = load i64, i64* @reload_completed, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %30, %24
  %34 = load i32, i32* @BEGIN_DATA, align 4
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load i64, i64* @mflag_sched_br_in_data_spec, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i64, i64* @reload_completed, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39, %33
  %43 = load i64, i64* @mflag_sched_ar_in_data_spec, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i64, i64* @reload_completed, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45, %39
  %49 = load i32, i32* @BE_IN_DATA, align 4
  %50 = load i32, i32* %4, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %48, %45, %42
  br label %53

53:                                               ; preds = %52, %30, %27
  %54 = load i64, i64* @mflag_sched_control_spec, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %53
  %57 = load i32, i32* @BEGIN_CONTROL, align 4
  %58 = load i32, i32* %4, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %4, align 4
  %60 = load i64, i64* @mflag_sched_in_control_spec, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i32, i32* @BE_IN_CONTROL, align 4
  %64 = load i32, i32* %4, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %62, %56
  br label %67

67:                                               ; preds = %66, %53
  %68 = load i32*, i32** %3, align 8
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @USE_GLAT, align 4
  %71 = and i32 %69, %70
  %72 = call i32 @gcc_assert(i32 %71)
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %144

75:                                               ; preds = %67
  %76 = load i32, i32* @USE_DEPS_LIST, align 4
  %77 = load i32, i32* @DETACH_LIFE_INFO, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @DO_SPECULATION, align 4
  %80 = or i32 %78, %79
  %81 = load i32*, i32** %3, align 8
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %80
  store i32 %83, i32* %81, align 4
  %84 = load i32, i32* %4, align 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  store i32 0, i32* %88, align 4
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @DATA_SPEC, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %75
  %94 = load i64, i64* @mflag_sched_prefer_non_data_spec_insns, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = load i32, i32* @PREFER_NON_DATA_SPEC, align 4
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %96, %93, %75
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* @CONTROL_SPEC, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %102
  %108 = load i64, i64* @mflag_sched_prefer_non_control_spec_insns, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = load i32, i32* @PREFER_NON_CONTROL_SPEC, align 4
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %110, %107, %102
  %117 = load i64, i64* @mflag_sched_spec_verbose, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %116
  %120 = load i32, i32* @sched_verbose, align 4
  %121 = icmp sge i32 %120, 1
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load i64, i64* @sched_dump, align 8
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 2
  store i64 %123, i64* %125, align 8
  br label %130

126:                                              ; preds = %119
  %127 = load i64, i64* @stderr, align 8
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 2
  store i64 %127, i64* %129, align 8
  br label %130

130:                                              ; preds = %126, %122
  br label %134

131:                                              ; preds = %116
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 2
  store i64 0, i64* %133, align 8
  br label %134

134:                                              ; preds = %131, %130
  %135 = load i64, i64* @mflag_sched_count_spec_in_critical_path, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %134
  %138 = load i32, i32* @COUNT_SPEC_IN_CRITICAL_PATH, align 4
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %137, %134
  br label %144

144:                                              ; preds = %143, %67
  br label %145

145:                                              ; preds = %144, %12
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
