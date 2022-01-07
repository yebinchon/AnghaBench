; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_hist.c_hists__calc_col_len.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_hist.c_hists__calc_col_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hists = type { i32 }
%struct.hist_entry = type { %struct.TYPE_11__*, %struct.TYPE_14__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_20__, %struct.TYPE_17__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__*, %struct.TYPE_18__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_16__*, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@BITS_PER_LONG = common dso_local global i32 0, align 4
@HISTC_SYMBOL = common dso_local global i32 0, align 4
@HISTC_DSO = common dso_local global i32 0, align 4
@HISTC_COMM = common dso_local global i32 0, align 4
@HISTC_THREAD = common dso_local global i32 0, align 4
@HISTC_SYMBOL_FROM = common dso_local global i32 0, align 4
@HISTC_DSO_FROM = common dso_local global i32 0, align 4
@HISTC_SYMBOL_TO = common dso_local global i32 0, align 4
@HISTC_DSO_TO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hists__calc_col_len(%struct.hists* %0, %struct.hist_entry* %1) #0 {
  %3 = alloca %struct.hists*, align 8
  %4 = alloca %struct.hist_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hists* %0, %struct.hists** %3, align 8
  store %struct.hist_entry* %1, %struct.hist_entry** %4, align 8
  %8 = load i32, i32* @BITS_PER_LONG, align 4
  %9 = sdiv i32 %8, 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %11 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %14 = icmp ne %struct.TYPE_12__* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load %struct.hists*, %struct.hists** %3, align 8
  %17 = load i32, i32* @HISTC_SYMBOL, align 4
  %18 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %19 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 4
  %25 = call i64 @hists__new_col_len(%struct.hists* %16, i32 %17, i32 %24)
  br label %30

26:                                               ; preds = %2
  %27 = load %struct.hists*, %struct.hists** %3, align 8
  %28 = load i32, i32* @HISTC_DSO, align 4
  %29 = call i32 @hists__set_unres_dso_col_len(%struct.hists* %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %15
  %31 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %32 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @thread__comm_len(i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load %struct.hists*, %struct.hists** %3, align 8
  %36 = load i32, i32* @HISTC_COMM, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @hists__new_col_len(%struct.hists* %35, i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %30
  %41 = load %struct.hists*, %struct.hists** %3, align 8
  %42 = load i32, i32* @HISTC_THREAD, align 4
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 6
  %45 = call i32 @hists__set_col_len(%struct.hists* %41, i32 %42, i32 %44)
  br label %46

46:                                               ; preds = %40, %30
  %47 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %48 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  %51 = icmp ne %struct.TYPE_13__* %50, null
  br i1 %51, label %52, label %64

52:                                               ; preds = %46
  %53 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %54 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dso__name_len(i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load %struct.hists*, %struct.hists** %3, align 8
  %61 = load i32, i32* @HISTC_DSO, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i64 @hists__new_col_len(%struct.hists* %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %52, %46
  %65 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %66 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %65, i32 0, i32 0
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = icmp ne %struct.TYPE_11__* %67, null
  br i1 %68, label %69, label %164

69:                                               ; preds = %64
  %70 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %71 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %70, i32 0, i32 0
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %74, align 8
  %76 = icmp ne %struct.TYPE_15__* %75, null
  br i1 %76, label %77, label %105

77:                                               ; preds = %69
  %78 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %79 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %78, i32 0, i32 0
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = add nsw i32 %86, 4
  store i32 %87, i32* %7, align 4
  %88 = load %struct.hists*, %struct.hists** %3, align 8
  %89 = load i32, i32* @HISTC_SYMBOL_FROM, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i64 @hists__new_col_len(%struct.hists* %88, i32 %89, i32 %90)
  %92 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %93 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %92, i32 0, i32 0
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @dso__name_len(i32 %99)
  store i32 %100, i32* %7, align 4
  %101 = load %struct.hists*, %struct.hists** %3, align 8
  %102 = load i32, i32* @HISTC_DSO_FROM, align 4
  %103 = load i32, i32* %7, align 4
  %104 = call i64 @hists__new_col_len(%struct.hists* %101, i32 %102, i32 %103)
  br label %116

105:                                              ; preds = %69
  %106 = load i32, i32* %5, align 4
  %107 = add i32 %106, 4
  %108 = add i32 %107, 2
  store i32 %108, i32* %7, align 4
  %109 = load %struct.hists*, %struct.hists** %3, align 8
  %110 = load i32, i32* @HISTC_SYMBOL_FROM, align 4
  %111 = load i32, i32* %7, align 4
  %112 = call i64 @hists__new_col_len(%struct.hists* %109, i32 %110, i32 %111)
  %113 = load %struct.hists*, %struct.hists** %3, align 8
  %114 = load i32, i32* @HISTC_DSO_FROM, align 4
  %115 = call i32 @hists__set_unres_dso_col_len(%struct.hists* %113, i32 %114)
  br label %116

116:                                              ; preds = %105, %77
  %117 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %118 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %117, i32 0, i32 0
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %121, align 8
  %123 = icmp ne %struct.TYPE_18__* %122, null
  br i1 %123, label %124, label %152

124:                                              ; preds = %116
  %125 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %126 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %125, i32 0, i32 0
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = trunc i64 %132 to i32
  %134 = add nsw i32 %133, 4
  store i32 %134, i32* %7, align 4
  %135 = load %struct.hists*, %struct.hists** %3, align 8
  %136 = load i32, i32* @HISTC_SYMBOL_TO, align 4
  %137 = load i32, i32* %7, align 4
  %138 = call i64 @hists__new_col_len(%struct.hists* %135, i32 %136, i32 %137)
  %139 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %140 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %139, i32 0, i32 0
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @dso__name_len(i32 %146)
  store i32 %147, i32* %7, align 4
  %148 = load %struct.hists*, %struct.hists** %3, align 8
  %149 = load i32, i32* @HISTC_DSO_TO, align 4
  %150 = load i32, i32* %7, align 4
  %151 = call i64 @hists__new_col_len(%struct.hists* %148, i32 %149, i32 %150)
  br label %163

152:                                              ; preds = %116
  %153 = load i32, i32* %5, align 4
  %154 = add i32 %153, 4
  %155 = add i32 %154, 2
  store i32 %155, i32* %7, align 4
  %156 = load %struct.hists*, %struct.hists** %3, align 8
  %157 = load i32, i32* @HISTC_SYMBOL_TO, align 4
  %158 = load i32, i32* %7, align 4
  %159 = call i64 @hists__new_col_len(%struct.hists* %156, i32 %157, i32 %158)
  %160 = load %struct.hists*, %struct.hists** %3, align 8
  %161 = load i32, i32* @HISTC_DSO_TO, align 4
  %162 = call i32 @hists__set_unres_dso_col_len(%struct.hists* %160, i32 %161)
  br label %163

163:                                              ; preds = %152, %124
  br label %164

164:                                              ; preds = %163, %64
  ret void
}

declare dso_local i64 @hists__new_col_len(%struct.hists*, i32, i32) #1

declare dso_local i32 @hists__set_unres_dso_col_len(%struct.hists*, i32) #1

declare dso_local i32 @thread__comm_len(i32) #1

declare dso_local i32 @hists__set_col_len(%struct.hists*, i32, i32) #1

declare dso_local i32 @dso__name_len(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
