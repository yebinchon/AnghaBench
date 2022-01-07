; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-threadupdate.c_redirect_edges.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-threadupdate.c_redirect_edges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 }
%struct.redirection_data = type { %struct.el*, %struct.TYPE_20__*, %struct.TYPE_16__* }
%struct.el = type { %struct.el*, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_19__*, %struct.TYPE_18__*, i64, i32* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.local_info = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_23__ = type { i32 }

@thread_stats = common dso_local global %struct.TYPE_22__ zeroinitializer, align 4
@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"  Threaded jump %d --> %d to %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"    basic block %d created\0A\00", align 1
@EDGE_TRUE_VALUE = common dso_local global i32 0, align 4
@EDGE_FALSE_VALUE = common dso_local global i32 0, align 4
@EDGE_ABNORMAL = common dso_local global i32 0, align 4
@EDGE_FALLTHRU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*)* @redirect_edges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redirect_edges(i8** %0, i8* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.redirection_data*, align 8
  %6 = alloca %struct.local_info*, align 8
  %7 = alloca %struct.el*, align 8
  %8 = alloca %struct.el*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  store i8** %0, i8*** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8**, i8*** %3, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = bitcast i8* %12 to %struct.redirection_data*
  store %struct.redirection_data* %13, %struct.redirection_data** %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.local_info*
  store %struct.local_info* %15, %struct.local_info** %6, align 8
  %16 = load %struct.redirection_data*, %struct.redirection_data** %5, align 8
  %17 = getelementptr inbounds %struct.redirection_data, %struct.redirection_data* %16, i32 0, i32 0
  %18 = load %struct.el*, %struct.el** %17, align 8
  store %struct.el* %18, %struct.el** %8, align 8
  br label %19

19:                                               ; preds = %188, %2
  %20 = load %struct.el*, %struct.el** %8, align 8
  %21 = icmp ne %struct.el* %20, null
  br i1 %21, label %22, label %190

22:                                               ; preds = %19
  %23 = load %struct.el*, %struct.el** %8, align 8
  %24 = getelementptr inbounds %struct.el, %struct.el* %23, i32 0, i32 1
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %24, align 8
  store %struct.TYPE_21__* %25, %struct.TYPE_21__** %9, align 8
  %26 = load %struct.el*, %struct.el** %8, align 8
  %27 = getelementptr inbounds %struct.el, %struct.el* %26, i32 0, i32 0
  %28 = load %struct.el*, %struct.el** %27, align 8
  store %struct.el* %28, %struct.el** %7, align 8
  %29 = load %struct.el*, %struct.el** %8, align 8
  %30 = call i32 @free(%struct.el* %29)
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 3
  store i32* null, i32** %32, align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @thread_stats, i32 0, i32 0), align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @thread_stats, i32 0, i32 0), align 4
  %35 = load %struct.redirection_data*, %struct.redirection_data** %5, align 8
  %36 = getelementptr inbounds %struct.redirection_data, %struct.redirection_data* %35, i32 0, i32 2
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %36, align 8
  %38 = icmp ne %struct.TYPE_16__* %37, null
  br i1 %38, label %39, label %130

39:                                               ; preds = %22
  %40 = load i64, i64* @dump_file, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %65

42:                                               ; preds = %39
  %43 = load i32, i32* @dump_flags, align 4
  %44 = load i32, i32* @TDF_DETAILS, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %42
  %48 = load i64, i64* @dump_file, align 8
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.redirection_data*, %struct.redirection_data** %5, align 8
  %60 = getelementptr inbounds %struct.redirection_data, %struct.redirection_data* %59, i32 0, i32 2
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i64, i8*, i32, ...) @fprintf(i64 %48, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %58, i32 %63)
  br label %65

65:                                               ; preds = %47, %42, %39
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.redirection_data*, %struct.redirection_data** %5, align 8
  %70 = getelementptr inbounds %struct.redirection_data, %struct.redirection_data* %69, i32 0, i32 2
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %68
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %72, align 4
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %78 = call i64 @EDGE_FREQUENCY(%struct.TYPE_21__* %77)
  %79 = load %struct.redirection_data*, %struct.redirection_data** %5, align 8
  %80 = getelementptr inbounds %struct.redirection_data, %struct.redirection_data* %79, i32 0, i32 2
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, %78
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %82, align 4
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.redirection_data*, %struct.redirection_data** %5, align 8
  %91 = getelementptr inbounds %struct.redirection_data, %struct.redirection_data* %90, i32 0, i32 2
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %91, align 8
  %93 = call %struct.TYPE_17__* @EDGE_SUCC(%struct.TYPE_16__* %92, i32 0)
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %96, %89
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %94, align 4
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %100 = load %struct.redirection_data*, %struct.redirection_data** %5, align 8
  %101 = getelementptr inbounds %struct.redirection_data, %struct.redirection_data* %100, i32 0, i32 2
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %101, align 8
  %103 = call %struct.TYPE_21__* @redirect_edge_and_branch(%struct.TYPE_21__* %99, %struct.TYPE_16__* %102)
  store %struct.TYPE_21__* %103, %struct.TYPE_21__** %10, align 8
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %105 = call i32 @flush_pending_stmts(%struct.TYPE_21__* %104)
  %106 = load i64, i64* @dump_file, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %129

108:                                              ; preds = %65
  %109 = load i32, i32* @dump_flags, align 4
  %110 = load i32, i32* @TDF_DETAILS, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %129

113:                                              ; preds = %108
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %115, align 8
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %118, align 8
  %120 = icmp ne %struct.TYPE_18__* %116, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %113
  %122 = load i64, i64* @dump_file, align 8
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 (i64, i8*, i32, ...) @fprintf(i64 %122, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %127)
  br label %129

129:                                              ; preds = %121, %113, %108, %65
  br label %187

130:                                              ; preds = %22
  %131 = load i64, i64* @dump_file, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %156

133:                                              ; preds = %130
  %134 = load i32, i32* @dump_flags, align 4
  %135 = load i32, i32* @TDF_DETAILS, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %156

138:                                              ; preds = %133
  %139 = load i64, i64* @dump_file, align 8
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.local_info*, %struct.local_info** %6, align 8
  %151 = getelementptr inbounds %struct.local_info, %struct.local_info* %150, i32 0, i32 1
  %152 = load %struct.TYPE_24__*, %struct.TYPE_24__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 (i64, i8*, i32, ...) @fprintf(i64 %139, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %144, i32 %149, i32 %154)
  br label %156

156:                                              ; preds = %138, %133, %130
  %157 = load %struct.local_info*, %struct.local_info** %6, align 8
  %158 = getelementptr inbounds %struct.local_info, %struct.local_info* %157, i32 0, i32 1
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %158, align 8
  %160 = load %struct.redirection_data*, %struct.redirection_data** %5, align 8
  %161 = getelementptr inbounds %struct.redirection_data, %struct.redirection_data* %160, i32 0, i32 1
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @remove_ctrl_stmt_and_useless_edges(%struct.TYPE_24__* %159, i32 %164)
  %166 = load i32, i32* @EDGE_TRUE_VALUE, align 4
  %167 = load i32, i32* @EDGE_FALSE_VALUE, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* @EDGE_ABNORMAL, align 4
  %170 = or i32 %168, %169
  %171 = xor i32 %170, -1
  %172 = load %struct.local_info*, %struct.local_info** %6, align 8
  %173 = getelementptr inbounds %struct.local_info, %struct.local_info* %172, i32 0, i32 1
  %174 = load %struct.TYPE_24__*, %struct.TYPE_24__** %173, align 8
  %175 = call %struct.TYPE_23__* @single_succ_edge(%struct.TYPE_24__* %174)
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = and i32 %177, %171
  store i32 %178, i32* %176, align 4
  %179 = load i32, i32* @EDGE_FALLTHRU, align 4
  %180 = load %struct.local_info*, %struct.local_info** %6, align 8
  %181 = getelementptr inbounds %struct.local_info, %struct.local_info* %180, i32 0, i32 1
  %182 = load %struct.TYPE_24__*, %struct.TYPE_24__** %181, align 8
  %183 = call %struct.TYPE_23__* @single_succ_edge(%struct.TYPE_24__* %182)
  %184 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, %179
  store i32 %186, i32* %184, align 4
  br label %187

187:                                              ; preds = %156, %129
  br label %188

188:                                              ; preds = %187
  %189 = load %struct.el*, %struct.el** %7, align 8
  store %struct.el* %189, %struct.el** %8, align 8
  br label %19

190:                                              ; preds = %19
  %191 = load %struct.redirection_data*, %struct.redirection_data** %5, align 8
  %192 = getelementptr inbounds %struct.redirection_data, %struct.redirection_data* %191, i32 0, i32 0
  %193 = load %struct.el*, %struct.el** %192, align 8
  %194 = icmp ne %struct.el* %193, null
  br i1 %194, label %195, label %198

195:                                              ; preds = %190
  %196 = load %struct.local_info*, %struct.local_info** %6, align 8
  %197 = getelementptr inbounds %struct.local_info, %struct.local_info* %196, i32 0, i32 0
  store i32 1, i32* %197, align 8
  br label %198

198:                                              ; preds = %195, %190
  ret i32 1
}

declare dso_local i32 @free(%struct.el*) #1

declare dso_local i32 @fprintf(i64, i8*, i32, ...) #1

declare dso_local i64 @EDGE_FREQUENCY(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_17__* @EDGE_SUCC(%struct.TYPE_16__*, i32) #1

declare dso_local %struct.TYPE_21__* @redirect_edge_and_branch(%struct.TYPE_21__*, %struct.TYPE_16__*) #1

declare dso_local i32 @flush_pending_stmts(%struct.TYPE_21__*) #1

declare dso_local i32 @remove_ctrl_stmt_and_useless_edges(%struct.TYPE_24__*, i32) #1

declare dso_local %struct.TYPE_23__* @single_succ_edge(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
