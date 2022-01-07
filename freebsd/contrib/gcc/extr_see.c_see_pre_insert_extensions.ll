; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_see_pre_insert_extensions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_see_pre_insert_extensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32* }
%struct.see_pre_extension_expr = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@edge_list = common dso_local global i32 0, align 4
@pre_insert_map = common dso_local global %struct.TYPE_11__** null, align 8
@see_pre_extension_hash = common dso_local global i32 0, align 4
@EDGE_ABNORMAL = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"PRE: end of bb %d, insn %d, \00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"inserting expression %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"PRE: edge (%d,%d), \00", align 1
@SBITMAP_ELT_BITS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.see_pre_extension_expr**)* @see_pre_insert_extensions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @see_pre_insert_extensions(%struct.see_pre_extension_expr** %0) #0 {
  %2 = alloca %struct.see_pre_extension_expr**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.see_pre_extension_expr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca i32*, align 8
  store %struct.see_pre_extension_expr** %0, %struct.see_pre_extension_expr*** %2, align 8
  %18 = load i32, i32* @edge_list, align 4
  %19 = call i32 @NUM_EDGES(i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @pre_insert_map, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %20, i64 0
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* @see_pre_extension_hash, align 4
  %26 = call i64 @htab_elements(i32 %25)
  store i64 %26, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %158, %1
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %161

31:                                               ; preds = %27
  %32 = load i32, i32* @edge_list, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call %struct.TYPE_10__* @INDEX_EDGE_PRED_BB(i32 %32, i32 %33)
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %11, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %149, %31
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %157

39:                                               ; preds = %35
  %40 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @pre_insert_map, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %40, i64 %42
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %143, %39
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i32, i32* %9, align 4
  %57 = load i64, i64* %5, align 8
  %58 = trunc i64 %57 to i32
  %59 = icmp slt i32 %56, %58
  br label %60

60:                                               ; preds = %55, %52
  %61 = phi i1 [ false, %52 ], [ %59, %55 ]
  br i1 %61, label %62, label %148

62:                                               ; preds = %60
  %63 = load i32, i32* %12, align 4
  %64 = and i32 %63, 1
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %142

66:                                               ; preds = %62
  %67 = load %struct.see_pre_extension_expr**, %struct.see_pre_extension_expr*** %2, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.see_pre_extension_expr*, %struct.see_pre_extension_expr** %67, i64 %69
  %71 = load %struct.see_pre_extension_expr*, %struct.see_pre_extension_expr** %70, align 8
  store %struct.see_pre_extension_expr* %71, %struct.see_pre_extension_expr** %13, align 8
  %72 = load %struct.see_pre_extension_expr*, %struct.see_pre_extension_expr** %13, align 8
  %73 = getelementptr inbounds %struct.see_pre_extension_expr, %struct.see_pre_extension_expr* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %14, align 4
  store i32* null, i32** %15, align 8
  %75 = load i32, i32* @edge_list, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call %struct.TYPE_9__* @INDEX_EDGE(i32 %75, i32 %76)
  store %struct.TYPE_9__* %77, %struct.TYPE_9__** %16, align 8
  %78 = call i32 (...) @start_sequence()
  %79 = load %struct.see_pre_extension_expr*, %struct.see_pre_extension_expr** %13, align 8
  %80 = getelementptr inbounds %struct.see_pre_extension_expr, %struct.see_pre_extension_expr* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @PATTERN(i32 %81)
  %83 = call i32 @emit_insn(i32 %82)
  %84 = call i32* (...) @get_insns()
  store i32* %84, i32** %15, align 8
  %85 = call i32 (...) @end_sequence()
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @EDGE_ABNORMAL, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %120

92:                                               ; preds = %66
  store i32* null, i32** %17, align 8
  %93 = load i32*, i32** %15, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %95 = call i32* @insert_insn_end_bb_new(i32* %93, %struct.TYPE_10__* %94)
  store i32* %95, i32** %17, align 8
  %96 = load i32*, i32** %17, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load i32*, i32** %17, align 8
  %100 = call i64 @INSN_P(i32* %99)
  %101 = icmp ne i64 %100, 0
  br label %102

102:                                              ; preds = %98, %92
  %103 = phi i1 [ false, %92 ], [ %101, %98 ]
  %104 = zext i1 %103 to i32
  %105 = call i32 @gcc_assert(i32 %104)
  %106 = load i64, i64* @dump_file, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %102
  %109 = load i64, i64* @dump_file, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %17, align 8
  %114 = call i32 @INSN_UID(i32* %113)
  %115 = call i32 (i64, i8*, i32, ...) @fprintf(i64 %109, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %112, i32 %114)
  %116 = load i64, i64* @dump_file, align 8
  %117 = load i32, i32* %14, align 4
  %118 = call i32 (i64, i8*, i32, ...) @fprintf(i64 %116, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %108, %102
  br label %141

120:                                              ; preds = %66
  %121 = load i32*, i32** %15, align 8
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %123 = call i32 @insert_insn_on_edge(i32* %121, %struct.TYPE_9__* %122)
  %124 = load i64, i64* @dump_file, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %140

126:                                              ; preds = %120
  %127 = load i64, i64* @dump_file, align 8
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @edge_list, align 4
  %132 = load i32, i32* %7, align 4
  %133 = call %struct.TYPE_12__* @INDEX_EDGE_SUCC_BB(i32 %131, i32 %132)
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 (i64, i8*, i32, ...) @fprintf(i64 %127, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %130, i32 %135)
  %137 = load i64, i64* @dump_file, align 8
  %138 = load i32, i32* %14, align 4
  %139 = call i32 (i64, i8*, i32, ...) @fprintf(i64 %137, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %138)
  br label %140

140:                                              ; preds = %126, %120
  br label %141

141:                                              ; preds = %140, %119
  store i32 1, i32* %6, align 4
  br label %142

142:                                              ; preds = %141, %62
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %9, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* %12, align 4
  %147 = ashr i32 %146, 1
  store i32 %147, i32* %12, align 4
  br label %52

148:                                              ; preds = %60
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %8, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %8, align 4
  %152 = load i64, i64* @SBITMAP_ELT_BITS, align 8
  %153 = load i32, i32* %10, align 4
  %154 = sext i32 %153 to i64
  %155 = add nsw i64 %154, %152
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %10, align 4
  br label %35

157:                                              ; preds = %35
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %7, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %7, align 4
  br label %27

161:                                              ; preds = %27
  %162 = load i32, i32* %6, align 4
  ret i32 %162
}

declare dso_local i32 @NUM_EDGES(i32) #1

declare dso_local i64 @htab_elements(i32) #1

declare dso_local %struct.TYPE_10__* @INDEX_EDGE_PRED_BB(i32, i32) #1

declare dso_local %struct.TYPE_9__* @INDEX_EDGE(i32, i32) #1

declare dso_local i32 @start_sequence(...) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @PATTERN(i32) #1

declare dso_local i32* @get_insns(...) #1

declare dso_local i32 @end_sequence(...) #1

declare dso_local i32* @insert_insn_end_bb_new(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @INSN_P(i32*) #1

declare dso_local i32 @fprintf(i64, i8*, i32, ...) #1

declare dso_local i32 @INSN_UID(i32*) #1

declare dso_local i32 @insert_insn_on_edge(i32*, %struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_12__* @INDEX_EDGE_SUCC_BB(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
