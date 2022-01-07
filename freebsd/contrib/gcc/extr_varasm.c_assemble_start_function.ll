; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_assemble_start_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_assemble_start_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i8*, i64, i32*, i32*, i32* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 (i32)* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (i8*)* }

@cfun = common dso_local global %struct.TYPE_9__* null, align 8
@first_function_block_is_cold = common dso_local global i32 0, align 4
@flag_reorder_blocks_and_partition = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"LHOTB\00", align 1
@const_labelno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"LCOLDB\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"LHOTE\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"LCOLDE\00", align 1
@CONSTANT_POOL_BEFORE_FUNCTION = common dso_local global i64 0, align 8
@flag_function_sections = common dso_local global i32 0, align 4
@asm_out_file = common dso_local global i32 0, align 4
@current_function_is_thunk = common dso_local global i32 0, align 4
@ENTRY_BLOCK_PTR = common dso_local global %struct.TYPE_10__* null, align 8
@BB_COLD_PARTITION = common dso_local global i64 0, align 8
@text_section = common dso_local global i32 0, align 4
@in_cold_section_p = common dso_local global i32 0, align 4
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@align_functions_log = common dso_local global i32 0, align 4
@FUNCTION_FREQUENCY_UNLIKELY_EXECUTED = common dso_local global i64 0, align 8
@debug_hooks = common dso_local global %struct.TYPE_8__* null, align 8
@targetm = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@align_functions = common dso_local global i64 0, align 8
@current_function_decl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @assemble_start_function(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [100 x i8], align 16
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cfun, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 3
  store i32* null, i32** %9, align 8
  store i32 0, i32* @first_function_block_is_cold, align 4
  %10 = load i64, i64* @flag_reorder_blocks_and_partition, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %45

12:                                               ; preds = %2
  %13 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %14 = load i32, i32* @const_labelno, align 4
  %15 = call i32 @ASM_GENERATE_INTERNAL_LABEL(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %17 = call i8* @ggc_strdup(i8* %16)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cfun, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %21 = load i32, i32* @const_labelno, align 4
  %22 = call i32 @ASM_GENERATE_INTERNAL_LABEL(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %24 = call i8* @ggc_strdup(i8* %23)
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cfun, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %28 = load i32, i32* @const_labelno, align 4
  %29 = call i32 @ASM_GENERATE_INTERNAL_LABEL(i8* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %31 = call i8* @ggc_strdup(i8* %30)
  %32 = bitcast i8* %31 to i32*
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cfun, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 5
  store i32* %32, i32** %34, align 8
  %35 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %36 = load i32, i32* @const_labelno, align 4
  %37 = call i32 @ASM_GENERATE_INTERNAL_LABEL(i8* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  %38 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %39 = call i8* @ggc_strdup(i8* %38)
  %40 = bitcast i8* %39 to i32*
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cfun, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 4
  store i32* %40, i32** %42, align 8
  %43 = load i32, i32* @const_labelno, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* @const_labelno, align 4
  br label %54

45:                                               ; preds = %2
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cfun, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  store i8* null, i8** %47, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cfun, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  store i8* null, i8** %49, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cfun, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 5
  store i32* null, i32** %51, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cfun, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 4
  store i32* null, i32** %53, align 8
  br label %54

54:                                               ; preds = %45, %12
  %55 = call i32 (...) @app_disable()
  %56 = load i64, i64* @CONSTANT_POOL_BEFORE_FUNCTION, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i8*, i8** %4, align 8
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @output_constant_pool(i8* %59, i32 %60)
  br label %62

62:                                               ; preds = %58, %54
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @flag_function_sections, align 4
  %65 = call i32 @resolve_unique_section(i32 %63, i32 0, i32 %64)
  %66 = load i64, i64* @flag_reorder_blocks_and_partition, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %100

68:                                               ; preds = %62
  %69 = call i32 (...) @unlikely_text_section()
  %70 = call i32 @switch_to_section(i32 %69)
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @DECL_ALIGN(i32 %71)
  %73 = call i32 @assemble_align(i32 %72)
  %74 = load i32, i32* @asm_out_file, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cfun, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @ASM_OUTPUT_LABEL(i32 %74, i8* %77)
  %79 = load i32, i32* @current_function_is_thunk, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %99, label %81

81:                                               ; preds = %68
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ENTRY_BLOCK_PTR, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @BB_PARTITION(i32 %84)
  %86 = load i64, i64* @BB_COLD_PARTITION, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %81
  %89 = load i32, i32* @text_section, align 4
  %90 = call i32 @switch_to_section(i32 %89)
  %91 = load i32, i32* %3, align 4
  %92 = call i32 @DECL_ALIGN(i32 %91)
  %93 = call i32 @assemble_align(i32 %92)
  %94 = load i32, i32* @asm_out_file, align 4
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cfun, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @ASM_OUTPUT_LABEL(i32 %94, i8* %97)
  store i32 1, i32* %7, align 4
  store i32 1, i32* @first_function_block_is_cold, align 4
  br label %99

99:                                               ; preds = %88, %81, %68
  br label %122

100:                                              ; preds = %62
  %101 = load i32, i32* %3, align 4
  %102 = call i64 @DECL_SECTION_NAME(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %121

104:                                              ; preds = %100
  %105 = call i32 (...) @initialize_cold_section_name()
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cfun, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %120

110:                                              ; preds = %104
  %111 = load i32, i32* %3, align 4
  %112 = call i64 @DECL_SECTION_NAME(i32 %111)
  %113 = call i32 @TREE_STRING_POINTER(i64 %112)
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cfun, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = call i64 @strcmp(i32 %113, i32* %116)
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %110
  store i32 1, i32* @first_function_block_is_cold, align 4
  br label %120

120:                                              ; preds = %119, %110, %104
  br label %121

121:                                              ; preds = %120, %100
  br label %122

122:                                              ; preds = %121, %99
  %123 = load i32, i32* @first_function_block_is_cold, align 4
  store i32 %123, i32* @in_cold_section_p, align 4
  %124 = load i32, i32* %3, align 4
  %125 = call i32 @function_section(i32 %124)
  %126 = call i32 @switch_to_section(i32 %125)
  %127 = load i64, i64* @flag_reorder_blocks_and_partition, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %122
  %130 = load i32, i32* %7, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %129
  %133 = load i32, i32* @asm_out_file, align 4
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cfun, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @ASM_OUTPUT_LABEL(i32 %133, i8* %136)
  br label %138

138:                                              ; preds = %132, %129, %122
  %139 = load i32, i32* %3, align 4
  %140 = call i32 @DECL_ALIGN(i32 %139)
  %141 = load i32, i32* @BITS_PER_UNIT, align 4
  %142 = sdiv i32 %140, %141
  %143 = call i32 @floor_log2(i32 %142)
  store i32 %143, i32* %5, align 4
  %144 = load i32, i32* %5, align 4
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %138
  %147 = load i32, i32* @asm_out_file, align 4
  %148 = load i32, i32* %5, align 4
  %149 = call i32 @ASM_OUTPUT_ALIGN(i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %146, %138
  %151 = load i32, i32* %3, align 4
  %152 = call i32 @DECL_USER_ALIGN(i32 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %168, label %154

154:                                              ; preds = %150
  %155 = load i32, i32* @align_functions_log, align 4
  %156 = load i32, i32* %5, align 4
  %157 = icmp sgt i32 %155, %156
  br i1 %157, label %158, label %168

158:                                              ; preds = %154
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cfun, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @FUNCTION_FREQUENCY_UNLIKELY_EXECUTED, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %158
  %165 = load i32, i32* @asm_out_file, align 4
  %166 = load i32, i32* @align_functions_log, align 4
  %167 = call i32 @ASM_OUTPUT_ALIGN(i32 %165, i32 %166)
  br label %168

168:                                              ; preds = %164, %158, %154, %150
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** @debug_hooks, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = load i32 (i32)*, i32 (i32)** %170, align 8
  %172 = load i32, i32* %3, align 4
  %173 = call i32 %171(i32 %172)
  %174 = load i32, i32* %3, align 4
  %175 = call i64 @TREE_PUBLIC(i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %168
  %178 = load i32, i32* %3, align 4
  %179 = call i32 @notice_global_symbol(i32 %178)
  %180 = load i32, i32* %3, align 4
  %181 = call i32 @globalize_decl(i32 %180)
  %182 = load i32, i32* %3, align 4
  %183 = call i32 @maybe_assemble_visibility(i32 %182)
  br label %184

184:                                              ; preds = %177, %168
  %185 = load i32, i32* %3, align 4
  %186 = call i64 @DECL_PRESERVE_P(i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %184
  %189 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @targetm, i32 0, i32 0, i32 0), align 8
  %190 = load i8*, i8** %4, align 8
  %191 = call i32 %189(i8* %190)
  br label %192

192:                                              ; preds = %188, %184
  %193 = load i32, i32* @asm_out_file, align 4
  %194 = load i8*, i8** %4, align 8
  %195 = call i32 @ASM_OUTPUT_LABEL(i32 %193, i8* %194)
  ret void
}

declare dso_local i32 @ASM_GENERATE_INTERNAL_LABEL(i8*, i8*, i32) #1

declare dso_local i8* @ggc_strdup(i8*) #1

declare dso_local i32 @app_disable(...) #1

declare dso_local i32 @output_constant_pool(i8*, i32) #1

declare dso_local i32 @resolve_unique_section(i32, i32, i32) #1

declare dso_local i32 @switch_to_section(i32) #1

declare dso_local i32 @unlikely_text_section(...) #1

declare dso_local i32 @assemble_align(i32) #1

declare dso_local i32 @DECL_ALIGN(i32) #1

declare dso_local i32 @ASM_OUTPUT_LABEL(i32, i8*) #1

declare dso_local i64 @BB_PARTITION(i32) #1

declare dso_local i64 @DECL_SECTION_NAME(i32) #1

declare dso_local i32 @initialize_cold_section_name(...) #1

declare dso_local i64 @strcmp(i32, i32*) #1

declare dso_local i32 @TREE_STRING_POINTER(i64) #1

declare dso_local i32 @function_section(i32) #1

declare dso_local i32 @floor_log2(i32) #1

declare dso_local i32 @ASM_OUTPUT_ALIGN(i32, i32) #1

declare dso_local i32 @DECL_USER_ALIGN(i32) #1

declare dso_local i64 @TREE_PUBLIC(i32) #1

declare dso_local i32 @notice_global_symbol(i32) #1

declare dso_local i32 @globalize_decl(i32) #1

declare dso_local i32 @maybe_assemble_visibility(i32) #1

declare dso_local i64 @DECL_PRESERVE_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
