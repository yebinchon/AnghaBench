; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_windmc.c_do_sorts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_windmc.c_do_sorts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_13__*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_12__* }

@mc_nodes_lang_count = common dso_local global i32 0, align 4
@mc_nodes = common dso_local global %struct.TYPE_13__* null, align 8
@mc_nodes_lang = common dso_local global %struct.TYPE_12__** null, align 8
@sort_mc_node_lang = common dso_local global i32 0, align 4
@mc_facility_codes_count = common dso_local global i32 0, align 4
@mc_facility_codes = common dso_local global %struct.TYPE_12__** null, align 8
@sort_keyword_by_nval = common dso_local global i32 0, align 4
@mc_severity_codes_count = common dso_local global i32 0, align 4
@mc_severity_codes = common dso_local global %struct.TYPE_12__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_sorts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_sorts() #0 {
  %1 = alloca %struct.TYPE_13__*, align 8
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* @mc_nodes_lang_count, align 4
  %5 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mc_nodes, align 8
  store %struct.TYPE_13__* %5, %struct.TYPE_13__** %1, align 8
  br label %6

6:                                                ; preds = %22, %0
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %8 = icmp ne %struct.TYPE_13__* %7, null
  br i1 %8, label %9, label %26

9:                                                ; preds = %6
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %2, align 8
  br label %13

13:                                               ; preds = %16, %9
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %15 = icmp ne %struct.TYPE_12__* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load i32, i32* @mc_nodes_lang_count, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @mc_nodes_lang_count, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %2, align 8
  br label %13

22:                                               ; preds = %13
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %1, align 8
  br label %6

26:                                               ; preds = %6
  %27 = load i32, i32* @mc_nodes_lang_count, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %66

29:                                               ; preds = %26
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mc_nodes, align 8
  store %struct.TYPE_13__* %30, %struct.TYPE_13__** %1, align 8
  store i32 0, i32* %4, align 4
  %31 = load i32, i32* @mc_nodes_lang_count, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 8, %32
  %34 = trunc i64 %33 to i32
  %35 = call %struct.TYPE_12__** @xmalloc(i32 %34)
  store %struct.TYPE_12__** %35, %struct.TYPE_12__*** @mc_nodes_lang, align 8
  br label %36

36:                                               ; preds = %56, %29
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %38 = icmp ne %struct.TYPE_13__* %37, null
  br i1 %38, label %39, label %60

39:                                               ; preds = %36
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  store %struct.TYPE_12__* %42, %struct.TYPE_12__** %2, align 8
  br label %43

43:                                               ; preds = %46, %39
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %45 = icmp ne %struct.TYPE_12__* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %48 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @mc_nodes_lang, align 8
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %48, i64 %51
  store %struct.TYPE_12__* %47, %struct.TYPE_12__** %52, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  store %struct.TYPE_12__* %55, %struct.TYPE_12__** %2, align 8
  br label %43

56:                                               ; preds = %43
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %58, align 8
  store %struct.TYPE_13__* %59, %struct.TYPE_13__** %1, align 8
  br label %36

60:                                               ; preds = %36
  %61 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @mc_nodes_lang, align 8
  %62 = load i32, i32* @mc_nodes_lang_count, align 4
  %63 = sext i32 %62 to i64
  %64 = load i32, i32* @sort_mc_node_lang, align 4
  %65 = call i32 @qsort(%struct.TYPE_12__** %61, i64 %63, i32 8, i32 %64)
  br label %66

66:                                               ; preds = %60, %26
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %71, %66
  %68 = load i32, i32* %4, align 4
  %69 = call %struct.TYPE_12__* @enum_facility(i32 %68)
  store %struct.TYPE_12__* %69, %struct.TYPE_12__** %3, align 8
  %70 = icmp ne %struct.TYPE_12__* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %4, align 4
  br label %67

74:                                               ; preds = %67
  %75 = load i32, i32* %4, align 4
  store i32 %75, i32* @mc_facility_codes_count, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %101

78:                                               ; preds = %74
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = mul i64 8, %80
  %82 = trunc i64 %81 to i32
  %83 = call %struct.TYPE_12__** @xmalloc(i32 %82)
  store %struct.TYPE_12__** %83, %struct.TYPE_12__*** @mc_facility_codes, align 8
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %88, %78
  %85 = load i32, i32* %4, align 4
  %86 = call %struct.TYPE_12__* @enum_facility(i32 %85)
  store %struct.TYPE_12__* %86, %struct.TYPE_12__** %3, align 8
  %87 = icmp ne %struct.TYPE_12__* %86, null
  br i1 %87, label %88, label %95

88:                                               ; preds = %84
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %90 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @mc_facility_codes, align 8
  %91 = load i32, i32* %4, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %4, align 4
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %90, i64 %93
  store %struct.TYPE_12__* %89, %struct.TYPE_12__** %94, align 8
  br label %84

95:                                               ; preds = %84
  %96 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @mc_facility_codes, align 8
  %97 = load i32, i32* @mc_facility_codes_count, align 4
  %98 = sext i32 %97 to i64
  %99 = load i32, i32* @sort_keyword_by_nval, align 4
  %100 = call i32 @qsort(%struct.TYPE_12__** %96, i64 %98, i32 8, i32 %99)
  br label %101

101:                                              ; preds = %95, %74
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %106, %101
  %103 = load i32, i32* %4, align 4
  %104 = call %struct.TYPE_12__* @enum_severity(i32 %103)
  store %struct.TYPE_12__* %104, %struct.TYPE_12__** %3, align 8
  %105 = icmp ne %struct.TYPE_12__* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load i32, i32* %4, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %4, align 4
  br label %102

109:                                              ; preds = %102
  %110 = load i32, i32* %4, align 4
  store i32 %110, i32* @mc_severity_codes_count, align 4
  %111 = load i32, i32* %4, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %136

113:                                              ; preds = %109
  %114 = load i32, i32* %4, align 4
  %115 = sext i32 %114 to i64
  %116 = mul i64 8, %115
  %117 = trunc i64 %116 to i32
  %118 = call %struct.TYPE_12__** @xmalloc(i32 %117)
  store %struct.TYPE_12__** %118, %struct.TYPE_12__*** @mc_severity_codes, align 8
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %123, %113
  %120 = load i32, i32* %4, align 4
  %121 = call %struct.TYPE_12__* @enum_severity(i32 %120)
  store %struct.TYPE_12__* %121, %struct.TYPE_12__** %3, align 8
  %122 = icmp ne %struct.TYPE_12__* %121, null
  br i1 %122, label %123, label %130

123:                                              ; preds = %119
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %125 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @mc_severity_codes, align 8
  %126 = load i32, i32* %4, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %4, align 4
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %125, i64 %128
  store %struct.TYPE_12__* %124, %struct.TYPE_12__** %129, align 8
  br label %119

130:                                              ; preds = %119
  %131 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @mc_severity_codes, align 8
  %132 = load i32, i32* @mc_severity_codes_count, align 4
  %133 = sext i32 %132 to i64
  %134 = load i32, i32* @sort_keyword_by_nval, align 4
  %135 = call i32 @qsort(%struct.TYPE_12__** %131, i64 %133, i32 8, i32 %134)
  br label %136

136:                                              ; preds = %130, %109
  ret void
}

declare dso_local %struct.TYPE_12__** @xmalloc(i32) #1

declare dso_local i32 @qsort(%struct.TYPE_12__**, i64, i32, i32) #1

declare dso_local %struct.TYPE_12__* @enum_facility(i32) #1

declare dso_local %struct.TYPE_12__* @enum_severity(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
