; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_analyze_indirect_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_analyze_indirect_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_reference = type { i32 }
%struct.loop = type { i32 }
%struct.ptr_info_def = type { i32 }

@NULL_TREE = common dso_local global i64 0, align 8
@SSA_NAME = common dso_local global i64 0, align 8
@chrec_dont_know = common dso_local global i64 0, align 8
@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"\0ABad access function of ptr: \00", align 1
@TDF_SLIM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"\0AAccess function of ptr: \00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"\0Ainitial condition is not loop invariant.\0A\00", align 1
@INTEGER_CST = common dso_local global i64 0, align 8
@ssizetype = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"\0Anon constant step for ptr access.\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"\0Aunknown evolution of ptr.\0A\00", align 1
@POINTER_REF_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.data_reference* (i64, i64, i32)* @analyze_indirect_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.data_reference* @analyze_indirect_ref(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.data_reference*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.loop*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.ptr_info_def*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i64, i64* %5, align 8
  %17 = call %struct.loop* @loop_containing_stmt(i64 %16)
  store %struct.loop* %17, %struct.loop** %8, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i64 @TREE_OPERAND(i64 %18, i32 0)
  store i64 %19, i64* %9, align 8
  %20 = load %struct.loop*, %struct.loop** %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call i64 @analyze_scalar_evolution(%struct.loop* %20, i64 %21)
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load %struct.loop*, %struct.loop** %8, align 8
  %25 = getelementptr inbounds %struct.loop, %struct.loop* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @initial_condition_in_loop_num(i64 %23, i32 %26)
  store i64 %27, i64* %11, align 8
  %28 = load i64, i64* @NULL_TREE, align 8
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* @NULL_TREE, align 8
  store i64 %29, i64* %14, align 8
  store %struct.ptr_info_def* null, %struct.ptr_info_def** %15, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i64 @TREE_CODE(i64 %30)
  %32 = load i64, i64* @SSA_NAME, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %3
  %35 = load i64, i64* %9, align 8
  %36 = call %struct.ptr_info_def* @SSA_NAME_PTR_INFO(i64 %35)
  store %struct.ptr_info_def* %36, %struct.ptr_info_def** %15, align 8
  br label %37

37:                                               ; preds = %34, %3
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @STRIP_NOPS(i64 %38)
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* @chrec_dont_know, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %50, label %43

43:                                               ; preds = %37
  %44 = load i64, i64* %11, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* @chrec_dont_know, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %68

50:                                               ; preds = %46, %43, %37
  %51 = load i64, i64* @dump_file, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %50
  %54 = load i32, i32* @dump_flags, align 4
  %55 = load i32, i32* @TDF_DETAILS, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = load i64, i64* @dump_file, align 8
  %60 = call i32 @fprintf(i64 %59, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %61 = load i64, i64* @dump_file, align 8
  %62 = load i64, i64* %6, align 8
  %63 = load i32, i32* @TDF_SLIM, align 4
  %64 = call i32 @print_generic_expr(i64 %61, i64 %62, i32 %63)
  %65 = load i64, i64* @dump_file, align 8
  %66 = call i32 @fprintf(i64 %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %58, %53, %50
  store %struct.data_reference* null, %struct.data_reference** %4, align 8
  br label %167

68:                                               ; preds = %46
  %69 = load i64, i64* @dump_file, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %68
  %72 = load i32, i32* @dump_flags, align 4
  %73 = load i32, i32* @TDF_DETAILS, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %71
  %77 = load i64, i64* @dump_file, align 8
  %78 = call i32 @fprintf(i64 %77, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %79 = load i64, i64* @dump_file, align 8
  %80 = load i64, i64* %10, align 8
  %81 = load i32, i32* @TDF_SLIM, align 4
  %82 = call i32 @print_generic_expr(i64 %79, i64 %80, i32 %81)
  %83 = load i64, i64* @dump_file, align 8
  %84 = call i32 @fprintf(i64 %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %85

85:                                               ; preds = %76, %71, %68
  %86 = load %struct.loop*, %struct.loop** %8, align 8
  %87 = load i64, i64* %11, align 8
  %88 = call i32 @expr_invariant_in_loop_p(%struct.loop* %86, i64 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %102, label %90

90:                                               ; preds = %85
  %91 = load i64, i64* @dump_file, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %90
  %94 = load i32, i32* @dump_flags, align 4
  %95 = load i32, i32* @TDF_DETAILS, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i64, i64* @dump_file, align 8
  %100 = call i32 @fprintf(i64 %99, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %101

101:                                              ; preds = %98, %93, %90
  br label %153

102:                                              ; preds = %85
  %103 = load i64, i64* %11, align 8
  store i64 %103, i64* %12, align 8
  %104 = load i64, i64* %10, align 8
  %105 = load %struct.loop*, %struct.loop** %8, align 8
  %106 = getelementptr inbounds %struct.loop, %struct.loop* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @evolution_part_in_loop_num(i64 %104, i32 %107)
  store i64 %108, i64* %13, align 8
  %109 = load i64, i64* %13, align 8
  %110 = load i64, i64* @chrec_dont_know, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %140

112:                                              ; preds = %102
  %113 = load i64, i64* %13, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %112
  %116 = call i64 @ssize_int(i32 0)
  store i64 %116, i64* %14, align 8
  br label %139

117:                                              ; preds = %112
  %118 = load i64, i64* %13, align 8
  %119 = call i64 @TREE_CODE(i64 %118)
  %120 = load i64, i64* @INTEGER_CST, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load i32, i32* @ssizetype, align 4
  %124 = load i64, i64* %13, align 8
  %125 = call i64 @fold_convert(i32 %123, i64 %124)
  store i64 %125, i64* %14, align 8
  br label %138

126:                                              ; preds = %117
  %127 = load i64, i64* @dump_file, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %126
  %130 = load i32, i32* @dump_flags, align 4
  %131 = load i32, i32* @TDF_DETAILS, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load i64, i64* @dump_file, align 8
  %136 = call i32 @fprintf(i64 %135, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %137

137:                                              ; preds = %134, %129, %126
  br label %138

138:                                              ; preds = %137, %122
  br label %139

139:                                              ; preds = %138, %115
  br label %152

140:                                              ; preds = %102
  %141 = load i64, i64* @dump_file, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %140
  %144 = load i32, i32* @dump_flags, align 4
  %145 = load i32, i32* @TDF_DETAILS, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load i64, i64* @dump_file, align 8
  %150 = call i32 @fprintf(i64 %149, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %151

151:                                              ; preds = %148, %143, %140
  br label %152

152:                                              ; preds = %151, %139
  br label %153

153:                                              ; preds = %152, %101
  %154 = load i64, i64* %5, align 8
  %155 = load i64, i64* %6, align 8
  %156 = load i64, i64* @NULL_TREE, align 8
  %157 = load i64, i64* %10, align 8
  %158 = load i32, i32* %7, align 4
  %159 = load i64, i64* %12, align 8
  %160 = load i64, i64* @NULL_TREE, align 8
  %161 = load i64, i64* %14, align 8
  %162 = load i64, i64* @NULL_TREE, align 8
  %163 = load i64, i64* @NULL_TREE, align 8
  %164 = load %struct.ptr_info_def*, %struct.ptr_info_def** %15, align 8
  %165 = load i32, i32* @POINTER_REF_TYPE, align 4
  %166 = call %struct.data_reference* @init_data_ref(i64 %154, i64 %155, i64 %156, i64 %157, i32 %158, i64 %159, i64 %160, i64 %161, i64 %162, i64 %163, %struct.ptr_info_def* %164, i32 %165)
  store %struct.data_reference* %166, %struct.data_reference** %4, align 8
  br label %167

167:                                              ; preds = %153, %67
  %168 = load %struct.data_reference*, %struct.data_reference** %4, align 8
  ret %struct.data_reference* %168
}

declare dso_local %struct.loop* @loop_containing_stmt(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @analyze_scalar_evolution(%struct.loop*, i64) #1

declare dso_local i64 @initial_condition_in_loop_num(i64, i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local %struct.ptr_info_def* @SSA_NAME_PTR_INFO(i64) #1

declare dso_local i32 @STRIP_NOPS(i64) #1

declare dso_local i32 @fprintf(i64, i8*) #1

declare dso_local i32 @print_generic_expr(i64, i64, i32) #1

declare dso_local i32 @expr_invariant_in_loop_p(%struct.loop*, i64) #1

declare dso_local i64 @evolution_part_in_loop_num(i64, i32) #1

declare dso_local i64 @ssize_int(i32) #1

declare dso_local i64 @fold_convert(i32, i64) #1

declare dso_local %struct.data_reference* @init_data_ref(i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, %struct.ptr_info_def*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
