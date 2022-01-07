; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_find_if_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_find_if_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_22__*, i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }

@EDGE_COMPLEX = common dso_local global i32 0, align 4
@EDGE_LOOP_EXIT = common dso_local global i32 0, align 4
@EDGE_FALLTHRU = common dso_local global i32 0, align 4
@HAVE_trap = common dso_local global i64 0, align 8
@HAVE_conditional_trap = common dso_local global i64 0, align 8
@dom_computed = common dso_local global i64* null, align 8
@CDI_POST_DOMINATORS = common dso_local global i64 0, align 8
@DOM_NO_FAST_QUERY = common dso_local global i64 0, align 8
@HAVE_conditional_execution = common dso_local global i32 0, align 4
@reload_completed = common dso_local global i64 0, align 8
@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Conversion succeeded on pass %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_22__* (%struct.TYPE_22__*, i32)* @find_if_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_22__* @find_if_header(%struct.TYPE_22__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @EDGE_COUNT(i32 %12)
  %14 = icmp ne i32 %13, 2
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %140

16:                                               ; preds = %2
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %18 = call %struct.TYPE_20__* @EDGE_SUCC(%struct.TYPE_22__* %17, i32 0)
  store %struct.TYPE_20__* %18, %struct.TYPE_20__** %7, align 8
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %20 = call %struct.TYPE_20__* @EDGE_SUCC(%struct.TYPE_22__* %19, i32 1)
  store %struct.TYPE_20__* %20, %struct.TYPE_20__** %8, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @EDGE_COMPLEX, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %16
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @EDGE_COMPLEX, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27, %16
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %140

35:                                               ; preds = %27
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @EDGE_LOOP_EXIT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @EDGE_LOOP_EXIT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42, %35
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %140

50:                                               ; preds = %42
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @EDGE_FALLTHRU, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %71

58:                                               ; preds = %50
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @EDGE_FALLTHRU, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  store %struct.TYPE_20__* %66, %struct.TYPE_20__** %9, align 8
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  store %struct.TYPE_20__* %67, %struct.TYPE_20__** %8, align 8
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  store %struct.TYPE_20__* %68, %struct.TYPE_20__** %7, align 8
  br label %70

69:                                               ; preds = %58
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %140

70:                                               ; preds = %65
  br label %71

71:                                               ; preds = %70, %57
  %72 = call i32 @memset(%struct.TYPE_21__* %6, i8 signext 0, i32 24)
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 1
  store %struct.TYPE_22__* %73, %struct.TYPE_22__** %74, align 8
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 3
  store i32 %77, i32* %78, align 4
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 2
  store i32 %81, i32* %82, align 8
  %83 = load i32, i32* %5, align 4
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 0
  store i32 %83, i32* %84, align 8
  %85 = call i64 @find_if_block(%struct.TYPE_21__* %6)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %71
  br label %130

88:                                               ; preds = %71
  %89 = load i64, i64* @HAVE_trap, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %88
  %92 = load i64, i64* @HAVE_conditional_trap, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %98 = call i64 @find_cond_trap(%struct.TYPE_22__* %95, %struct.TYPE_20__* %96, %struct.TYPE_20__* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %130

101:                                              ; preds = %94, %91, %88
  %102 = load i64*, i64** @dom_computed, align 8
  %103 = load i64, i64* @CDI_POST_DOMINATORS, align 8
  %104 = getelementptr inbounds i64, i64* %102, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @DOM_NO_FAST_QUERY, align 8
  %107 = icmp sge i64 %105, %106
  br i1 %107, label %108, label %129

108:                                              ; preds = %101
  %109 = load i32, i32* @HAVE_conditional_execution, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i64, i64* @reload_completed, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %129

114:                                              ; preds = %111, %108
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %118 = call i64 @find_if_case_1(%struct.TYPE_22__* %115, %struct.TYPE_20__* %116, %struct.TYPE_20__* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  br label %130

121:                                              ; preds = %114
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %125 = call i64 @find_if_case_2(%struct.TYPE_22__* %122, %struct.TYPE_20__* %123, %struct.TYPE_20__* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  br label %130

128:                                              ; preds = %121
  br label %129

129:                                              ; preds = %128, %111, %101
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %140

130:                                              ; preds = %127, %120, %100, %87
  %131 = load i64, i64* @dump_file, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %130
  %134 = load i64, i64* @dump_file, align 8
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @fprintf(i64 %134, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %133, %130
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 1
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %138, align 8
  store %struct.TYPE_22__* %139, %struct.TYPE_22__** %3, align 8
  br label %140

140:                                              ; preds = %137, %129, %69, %49, %34, %15
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  ret %struct.TYPE_22__* %141
}

declare dso_local i32 @EDGE_COUNT(i32) #1

declare dso_local %struct.TYPE_20__* @EDGE_SUCC(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_21__*, i8 signext, i32) #1

declare dso_local i64 @find_if_block(%struct.TYPE_21__*) #1

declare dso_local i64 @find_cond_trap(%struct.TYPE_22__*, %struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i64 @find_if_case_1(%struct.TYPE_22__*, %struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i64 @find_if_case_2(%struct.TYPE_22__*, %struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i32 @fprintf(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
