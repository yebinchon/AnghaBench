; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_opts.c_decode_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_opts.c_decode_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i32, i8**)*, i32 (i32)* }
%struct.TYPE_3__ = type { i64, i32, i32 }

@lang_hooks = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@global_dc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"-O\00", align 1
@optimize = common dso_local global i32 0, align 4
@optimize_size = common dso_local global i32 0, align 4
@flag_merge_constants = common dso_local global i64 0, align 8
@flag_defer_pop = common dso_local global i32 0, align 4
@flag_guess_branch_prob = common dso_local global i32 0, align 4
@flag_cprop_registers = common dso_local global i32 0, align 4
@flag_if_conversion = common dso_local global i32 0, align 4
@flag_if_conversion2 = common dso_local global i32 0, align 4
@flag_ipa_pure_const = common dso_local global i32 0, align 4
@flag_ipa_reference = common dso_local global i32 0, align 4
@flag_tree_ccp = common dso_local global i32 0, align 4
@flag_tree_dce = common dso_local global i32 0, align 4
@flag_tree_dom = common dso_local global i32 0, align 4
@flag_tree_dse = common dso_local global i32 0, align 4
@flag_tree_ter = common dso_local global i32 0, align 4
@flag_tree_live_range_split = common dso_local global i32 0, align 4
@flag_tree_sra = common dso_local global i32 0, align 4
@flag_tree_copyrename = common dso_local global i32 0, align 4
@flag_tree_fre = common dso_local global i32 0, align 4
@flag_tree_copy_prop = common dso_local global i32 0, align 4
@flag_tree_sink = common dso_local global i32 0, align 4
@flag_tree_salias = common dso_local global i32 0, align 4
@no_unit_at_a_time_default = common dso_local global i32 0, align 4
@flag_unit_at_a_time = common dso_local global i32 0, align 4
@flag_tree_ch = common dso_local global i32 0, align 4
@flag_thread_jumps = common dso_local global i32 0, align 4
@flag_crossjumping = common dso_local global i32 0, align 4
@flag_optimize_sibling_calls = common dso_local global i32 0, align 4
@flag_cse_follow_jumps = common dso_local global i32 0, align 4
@flag_cse_skip_blocks = common dso_local global i32 0, align 4
@flag_gcse = common dso_local global i32 0, align 4
@flag_expensive_optimizations = common dso_local global i32 0, align 4
@flag_ipa_type_escape = common dso_local global i32 0, align 4
@flag_rerun_cse_after_loop = common dso_local global i32 0, align 4
@flag_caller_saves = common dso_local global i32 0, align 4
@flag_peephole2 = common dso_local global i32 0, align 4
@flag_regmove = common dso_local global i32 0, align 4
@flag_strict_aliasing = common dso_local global i32 0, align 4
@flag_strict_overflow = common dso_local global i32 0, align 4
@flag_delete_null_pointer_checks = common dso_local global i32 0, align 4
@flag_reorder_blocks = common dso_local global i32 0, align 4
@flag_reorder_functions = common dso_local global i32 0, align 4
@flag_tree_store_ccp = common dso_local global i32 0, align 4
@flag_tree_store_copy_prop = common dso_local global i32 0, align 4
@flag_tree_pre = common dso_local global i32 0, align 4
@flag_inline_functions = common dso_local global i32 0, align 4
@flag_unswitch_loops = common dso_local global i32 0, align 4
@flag_gcse_after_reload = common dso_local global i32 0, align 4
@align_loops = common dso_local global i32 0, align 4
@align_jumps = common dso_local global i32 0, align 4
@align_labels = common dso_local global i32 0, align 4
@align_functions = common dso_local global i32 0, align 4
@flag_reorder_blocks_and_partition = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"max-inline-insns-single\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"max-inline-insns-auto\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"min-crossjump-insns\00", align 1
@DEFAULT_SIGNED_CHAR = common dso_local global i32 0, align 4
@flag_signed_char = common dso_local global i32 0, align 4
@flag_short_enums = common dso_local global i32 0, align 4
@targetm = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@target_flags = common dso_local global i32 0, align 4
@flag_unwind_tables = common dso_local global i64 0, align 8
@flag_pie = common dso_local global i64 0, align 8
@flag_pic = common dso_local global i64 0, align 8
@flag_shlib = common dso_local global i32 0, align 4
@flag_no_inline = common dso_local global i32 0, align 4
@flag_really_no_inline = common dso_local global i32 0, align 4
@warn_inline = common dso_local global i64 0, align 8
@warn_uninitialized = common dso_local global i32 0, align 4
@OPT_Wuninitialized = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"-Wuninitialized is not supported without -O\00", align 1
@flag_exceptions = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [61 x i8] c"-freorder-blocks-and-partition does not work with exceptions\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"-freorder-blocks-and-partition does not support unwind info\00", align 1
@.str.7 = private unnamed_addr constant [66 x i8] c"-freorder-blocks-and-partition does not work on this architecture\00", align 1
@flag_delayed_branch = common dso_local global i32 0, align 4
@flag_omit_frame_pointer = common dso_local global i32 0, align 4
@flag_schedule_insns = common dso_local global i32 0, align 4
@flag_schedule_insns_after_reload = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decode_options(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %9 = load i32 (i32, i8**)*, i32 (i32, i8**)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 0), align 8
  %10 = load i32, i32* %3, align 4
  %11 = load i8**, i8*** %4, align 8
  %12 = call i32 %9(i32 %10, i8** %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 1), align 8
  %14 = load i32, i32* @global_dc, align 4
  %15 = call i32 %13(i32 %14)
  store i32 1, i32* %5, align 4
  br label %16

16:                                               ; preds = %81, %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %84

20:                                               ; preds = %16
  %21 = load i8**, i8*** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  store i32 1, i32* @optimize, align 4
  store i32 0, i32* @optimize_size, align 4
  br label %80

29:                                               ; preds = %20
  %30 = load i8**, i8*** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 45
  br i1 %38, label %39, label %79

39:                                               ; preds = %29
  %40 = load i8**, i8*** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 79
  br i1 %48, label %49, label %79

49:                                               ; preds = %39
  %50 = load i8**, i8*** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 2
  store i8* %55, i8** %7, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 115
  br i1 %60, label %61, label %68

61:                                               ; preds = %49
  %62 = load i8*, i8** %7, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  store i32 1, i32* @optimize_size, align 4
  store i32 2, i32* @optimize, align 4
  br label %78

68:                                               ; preds = %61, %49
  %69 = load i8*, i8** %7, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 -2
  %72 = call i32 @read_integral_parameter(i8* %69, i8* %71, i32 -1)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, -1
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* @optimize, align 4
  store i32 0, i32* @optimize_size, align 4
  br label %77

77:                                               ; preds = %75, %68
  br label %78

78:                                               ; preds = %77, %67
  br label %79

79:                                               ; preds = %78, %39, %29
  br label %80

80:                                               ; preds = %79, %28
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %5, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %16

84:                                               ; preds = %16
  %85 = load i32, i32* @optimize, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %84
  store i64 0, i64* @flag_merge_constants, align 8
  br label %88

88:                                               ; preds = %87, %84
  %89 = load i32, i32* @optimize, align 4
  %90 = icmp sge i32 %89, 1
  br i1 %90, label %91, label %100

91:                                               ; preds = %88
  store i32 1, i32* @flag_defer_pop, align 4
  store i32 1, i32* @flag_guess_branch_prob, align 4
  store i32 1, i32* @flag_cprop_registers, align 4
  store i32 1, i32* @flag_if_conversion, align 4
  store i32 1, i32* @flag_if_conversion2, align 4
  store i32 1, i32* @flag_ipa_pure_const, align 4
  store i32 1, i32* @flag_ipa_reference, align 4
  store i32 1, i32* @flag_tree_ccp, align 4
  store i32 1, i32* @flag_tree_dce, align 4
  store i32 1, i32* @flag_tree_dom, align 4
  store i32 1, i32* @flag_tree_dse, align 4
  store i32 1, i32* @flag_tree_ter, align 4
  store i32 1, i32* @flag_tree_live_range_split, align 4
  store i32 1, i32* @flag_tree_sra, align 4
  store i32 1, i32* @flag_tree_copyrename, align 4
  store i32 1, i32* @flag_tree_fre, align 4
  store i32 1, i32* @flag_tree_copy_prop, align 4
  store i32 1, i32* @flag_tree_sink, align 4
  store i32 1, i32* @flag_tree_salias, align 4
  %92 = load i32, i32* @no_unit_at_a_time_default, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %91
  store i32 1, i32* @flag_unit_at_a_time, align 4
  br label %95

95:                                               ; preds = %94, %91
  %96 = load i32, i32* @optimize_size, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %95
  store i32 1, i32* @flag_tree_ch, align 4
  br label %99

99:                                               ; preds = %98, %95
  br label %100

100:                                              ; preds = %99, %88
  %101 = load i32, i32* @optimize, align 4
  %102 = icmp sge i32 %101, 2
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  store i32 1, i32* @flag_thread_jumps, align 4
  store i32 1, i32* @flag_crossjumping, align 4
  store i32 1, i32* @flag_optimize_sibling_calls, align 4
  store i32 1, i32* @flag_cse_follow_jumps, align 4
  store i32 1, i32* @flag_cse_skip_blocks, align 4
  store i32 1, i32* @flag_gcse, align 4
  store i32 1, i32* @flag_expensive_optimizations, align 4
  store i32 1, i32* @flag_ipa_type_escape, align 4
  store i32 1, i32* @flag_rerun_cse_after_loop, align 4
  store i32 1, i32* @flag_caller_saves, align 4
  store i32 1, i32* @flag_peephole2, align 4
  store i32 1, i32* @flag_regmove, align 4
  store i32 1, i32* @flag_strict_aliasing, align 4
  store i32 1, i32* @flag_strict_overflow, align 4
  store i32 1, i32* @flag_delete_null_pointer_checks, align 4
  store i32 1, i32* @flag_reorder_blocks, align 4
  store i32 1, i32* @flag_reorder_functions, align 4
  store i32 1, i32* @flag_tree_store_ccp, align 4
  store i32 1, i32* @flag_tree_store_copy_prop, align 4
  %104 = load i32, i32* @optimize_size, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %103
  store i32 1, i32* @flag_tree_pre, align 4
  br label %107

107:                                              ; preds = %106, %103
  br label %108

108:                                              ; preds = %107, %100
  %109 = load i32, i32* @optimize, align 4
  %110 = icmp sge i32 %109, 3
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  store i32 1, i32* @flag_inline_functions, align 4
  store i32 1, i32* @flag_unswitch_loops, align 4
  store i32 1, i32* @flag_gcse_after_reload, align 4
  br label %112

112:                                              ; preds = %111, %108
  %113 = load i32, i32* @optimize_size, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  store i32 1, i32* @align_loops, align 4
  store i32 1, i32* @align_jumps, align 4
  store i32 1, i32* @align_labels, align 4
  store i32 1, i32* @align_functions, align 4
  store i32 0, i32* @flag_reorder_blocks, align 4
  store i64 0, i64* @flag_reorder_blocks_and_partition, align 8
  br label %116

116:                                              ; preds = %115, %112
  %117 = load i32, i32* @optimize_size, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = call i32 @set_param_value(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %121 = call i32 @set_param_value(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 5)
  store i32 1, i32* @flag_inline_functions, align 4
  %122 = call i32 @set_param_value(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 1)
  br label %123

123:                                              ; preds = %119, %116
  %124 = load i32, i32* @DEFAULT_SIGNED_CHAR, align 4
  store i32 %124, i32* @flag_signed_char, align 4
  store i32 2, i32* @flag_short_enums, align 4
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @targetm, i32 0, i32 2), align 4
  store i32 %125, i32* @target_flags, align 4
  %126 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @targetm, i32 0, i32 0), align 8
  store i64 %126, i64* @flag_unwind_tables, align 8
  %127 = load i32, i32* %3, align 4
  %128 = load i8**, i8*** %4, align 8
  %129 = load i32, i32* %6, align 4
  %130 = call i32 @handle_options(i32 %127, i8** %128, i32 %129)
  %131 = load i64, i64* @flag_pie, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %123
  %134 = load i64, i64* @flag_pie, align 8
  store i64 %134, i64* @flag_pic, align 8
  br label %135

135:                                              ; preds = %133, %123
  %136 = load i64, i64* @flag_pic, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = load i64, i64* @flag_pie, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %138
  store i32 1, i32* @flag_shlib, align 4
  br label %142

142:                                              ; preds = %141, %138, %135
  %143 = load i32, i32* @flag_no_inline, align 4
  %144 = icmp eq i32 %143, 2
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  store i32 0, i32* @flag_no_inline, align 4
  br label %148

146:                                              ; preds = %142
  %147 = load i32, i32* @flag_no_inline, align 4
  store i32 %147, i32* @flag_really_no_inline, align 4
  br label %148

148:                                              ; preds = %146, %145
  %149 = load i32, i32* @optimize, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %148
  store i32 1, i32* @flag_no_inline, align 4
  store i64 0, i64* @warn_inline, align 8
  %152 = load i32, i32* @warn_uninitialized, align 4
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load i32, i32* @OPT_Wuninitialized, align 4
  %156 = call i32 @warning(i32 %155, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %157

157:                                              ; preds = %154, %151
  br label %158

158:                                              ; preds = %157, %148
  %159 = load i32, i32* @flag_really_no_inline, align 4
  %160 = icmp eq i32 %159, 2
  br i1 %160, label %161, label %163

161:                                              ; preds = %158
  %162 = load i32, i32* @flag_no_inline, align 4
  store i32 %162, i32* @flag_really_no_inline, align 4
  br label %163

163:                                              ; preds = %161, %158
  %164 = load i64, i64* @flag_exceptions, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %163
  %167 = load i64, i64* @flag_reorder_blocks_and_partition, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %166
  %170 = call i32 @inform(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0))
  store i64 0, i64* @flag_reorder_blocks_and_partition, align 8
  store i32 1, i32* @flag_reorder_blocks, align 4
  br label %171

171:                                              ; preds = %169, %166, %163
  %172 = load i64, i64* @flag_unwind_tables, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %182

174:                                              ; preds = %171
  %175 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @targetm, i32 0, i32 0), align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %182, label %177

177:                                              ; preds = %174
  %178 = load i64, i64* @flag_reorder_blocks_and_partition, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %177
  %181 = call i32 @inform(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0))
  store i64 0, i64* @flag_reorder_blocks_and_partition, align 8
  store i32 1, i32* @flag_reorder_blocks, align 4
  br label %182

182:                                              ; preds = %180, %177, %174, %171
  %183 = load i64, i64* @flag_reorder_blocks_and_partition, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %196

185:                                              ; preds = %182
  %186 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @targetm, i32 0, i32 1), align 8
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %185
  %189 = load i64, i64* @flag_unwind_tables, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %188
  %192 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @targetm, i32 0, i32 0), align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %191, %185
  %195 = call i32 @inform(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.7, i64 0, i64 0))
  store i64 0, i64* @flag_reorder_blocks_and_partition, align 8
  store i32 1, i32* @flag_reorder_blocks, align 4
  br label %196

196:                                              ; preds = %194, %191, %188, %182
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @read_integral_parameter(i8*, i8*, i32) #1

declare dso_local i32 @set_param_value(i8*, i32) #1

declare dso_local i32 @handle_options(i32, i8**, i32) #1

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i32 @inform(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
