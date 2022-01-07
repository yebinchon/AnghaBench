; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_init_builtins.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_init_builtins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdesc_map = type { i64, i64, %struct.builtin_description* }
%struct.builtin_description = type { i32, i64, i32 }
%struct.TYPE_2__ = type { i32 (i32, i32, i32, i32, i32*, i32*)* }

@MIPS_MAX_FTYPE_MAX = common dso_local global i64 0, align 8
@TARGET_PAIRED_SINGLE_FLOAT = common dso_local global i64 0, align 8
@TARGET_DSP = common dso_local global i64 0, align 8
@float_type_node = common dso_local global i32 0, align 4
@V2SFmode = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@MIPS_V2SF_FTYPE_V2SF = common dso_local global i64 0, align 8
@MIPS_V2SF_FTYPE_V2SF_V2SF = common dso_local global i64 0, align 8
@integer_type_node = common dso_local global i32 0, align 4
@MIPS_V2SF_FTYPE_V2SF_V2SF_INT = common dso_local global i64 0, align 8
@MIPS_V2SF_FTYPE_V2SF_V2SF_V2SF_V2SF = common dso_local global i64 0, align 8
@MIPS_V2SF_FTYPE_SF_SF = common dso_local global i64 0, align 8
@MIPS_INT_FTYPE_V2SF_V2SF = common dso_local global i64 0, align 8
@MIPS_INT_FTYPE_V2SF_V2SF_V2SF_V2SF = common dso_local global i64 0, align 8
@MIPS_INT_FTYPE_SF_SF = common dso_local global i64 0, align 8
@double_type_node = common dso_local global i32 0, align 4
@MIPS_INT_FTYPE_DF_DF = common dso_local global i64 0, align 8
@MIPS_SF_FTYPE_V2SF = common dso_local global i64 0, align 8
@MIPS_SF_FTYPE_SF = common dso_local global i64 0, align 8
@MIPS_SF_FTYPE_SF_SF = common dso_local global i64 0, align 8
@MIPS_DF_FTYPE_DF = common dso_local global i64 0, align 8
@MIPS_DF_FTYPE_DF_DF = common dso_local global i64 0, align 8
@intHI_type_node = common dso_local global i32 0, align 4
@V2HImode = common dso_local global i32 0, align 4
@intQI_type_node = common dso_local global i32 0, align 4
@V4QImode = common dso_local global i32 0, align 4
@MIPS_V2HI_FTYPE_V2HI_V2HI = common dso_local global i64 0, align 8
@intSI_type_node = common dso_local global i32 0, align 4
@MIPS_SI_FTYPE_SI_SI = common dso_local global i64 0, align 8
@MIPS_V4QI_FTYPE_V4QI_V4QI = common dso_local global i64 0, align 8
@MIPS_SI_FTYPE_V4QI = common dso_local global i64 0, align 8
@MIPS_V2HI_FTYPE_V2HI = common dso_local global i64 0, align 8
@MIPS_SI_FTYPE_SI = common dso_local global i64 0, align 8
@MIPS_V4QI_FTYPE_V2HI_V2HI = common dso_local global i64 0, align 8
@MIPS_V2HI_FTYPE_SI_SI = common dso_local global i64 0, align 8
@MIPS_SI_FTYPE_V2HI = common dso_local global i64 0, align 8
@MIPS_V2HI_FTYPE_V4QI = common dso_local global i64 0, align 8
@MIPS_V4QI_FTYPE_V4QI_SI = common dso_local global i64 0, align 8
@MIPS_V2HI_FTYPE_V2HI_SI = common dso_local global i64 0, align 8
@MIPS_V2HI_FTYPE_V4QI_V2HI = common dso_local global i64 0, align 8
@MIPS_SI_FTYPE_V2HI_V2HI = common dso_local global i64 0, align 8
@intDI_type_node = common dso_local global i32 0, align 4
@MIPS_DI_FTYPE_DI_V4QI_V4QI = common dso_local global i64 0, align 8
@MIPS_DI_FTYPE_DI_V2HI_V2HI = common dso_local global i64 0, align 8
@MIPS_DI_FTYPE_DI_SI_SI = common dso_local global i64 0, align 8
@MIPS_V4QI_FTYPE_SI = common dso_local global i64 0, align 8
@MIPS_V2HI_FTYPE_SI = common dso_local global i64 0, align 8
@void_type_node = common dso_local global i32 0, align 4
@MIPS_VOID_FTYPE_V4QI_V4QI = common dso_local global i64 0, align 8
@MIPS_SI_FTYPE_V4QI_V4QI = common dso_local global i64 0, align 8
@MIPS_VOID_FTYPE_V2HI_V2HI = common dso_local global i64 0, align 8
@MIPS_SI_FTYPE_DI_SI = common dso_local global i64 0, align 8
@MIPS_DI_FTYPE_DI_SI = common dso_local global i64 0, align 8
@MIPS_VOID_FTYPE_SI_SI = common dso_local global i64 0, align 8
@ptr_type_node = common dso_local global i32 0, align 4
@MIPS_SI_FTYPE_PTR_SI = common dso_local global i64 0, align 8
@void_list_node = common dso_local global i32 0, align 4
@MIPS_SI_FTYPE_VOID = common dso_local global i64 0, align 8
@bdesc_arrays = common dso_local global %struct.bdesc_map* null, align 8
@PROCESSOR_MAX = common dso_local global i64 0, align 8
@mips_arch = common dso_local global i64 0, align 8
@target_flags = common dso_local global i32 0, align 4
@lang_hooks = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@BUILT_IN_MD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mips_init_builtins() #0 {
  %1 = alloca %struct.builtin_description*, align 8
  %2 = alloca %struct.bdesc_map*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i64, i64* @MIPS_MAX_FTYPE_MAX, align 8
  %11 = trunc i64 %10 to i32
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %3, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %4, align 8
  %15 = load i64, i64* @TARGET_PAIRED_SINGLE_FLOAT, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %0
  %18 = load i64, i64* @TARGET_DSP, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store i32 1, i32* %9, align 4
  br label %406

21:                                               ; preds = %17, %0
  %22 = load i64, i64* @TARGET_PAIRED_SINGLE_FLOAT, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %127

24:                                               ; preds = %21
  %25 = load i32, i32* @float_type_node, align 4
  %26 = load i32, i32* @V2SFmode, align 4
  %27 = call i32 @build_vector_type_for_mode(i32 %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @NULL_TREE, align 4
  %31 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %28, i32 %29, i32 %30)
  %32 = load i64, i64* @MIPS_V2SF_FTYPE_V2SF, align 8
  %33 = getelementptr inbounds i32, i32* %14, i64 %32
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @NULL_TREE, align 4
  %38 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %34, i32 %35, i32 %36, i32 %37)
  %39 = load i64, i64* @MIPS_V2SF_FTYPE_V2SF_V2SF, align 8
  %40 = getelementptr inbounds i32, i32* %14, i64 %39
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @integer_type_node, align 4
  %45 = load i32, i32* @NULL_TREE, align 4
  %46 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %41, i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = load i64, i64* @MIPS_V2SF_FTYPE_V2SF_V2SF_INT, align 8
  %48 = getelementptr inbounds i32, i32* %14, i64 %47
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @NULL_TREE, align 4
  %55 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %49, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54)
  %56 = load i64, i64* @MIPS_V2SF_FTYPE_V2SF_V2SF_V2SF_V2SF, align 8
  %57 = getelementptr inbounds i32, i32* %14, i64 %56
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @float_type_node, align 4
  %60 = load i32, i32* @float_type_node, align 4
  %61 = load i32, i32* @NULL_TREE, align 4
  %62 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %58, i32 %59, i32 %60, i32 %61)
  %63 = load i64, i64* @MIPS_V2SF_FTYPE_SF_SF, align 8
  %64 = getelementptr inbounds i32, i32* %14, i64 %63
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @integer_type_node, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @NULL_TREE, align 4
  %69 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %65, i32 %66, i32 %67, i32 %68)
  %70 = load i64, i64* @MIPS_INT_FTYPE_V2SF_V2SF, align 8
  %71 = getelementptr inbounds i32, i32* %14, i64 %70
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @integer_type_node, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @NULL_TREE, align 4
  %78 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %72, i32 %73, i32 %74, i32 %75, i32 %76, i32 %77)
  %79 = load i64, i64* @MIPS_INT_FTYPE_V2SF_V2SF_V2SF_V2SF, align 8
  %80 = getelementptr inbounds i32, i32* %14, i64 %79
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @integer_type_node, align 4
  %82 = load i32, i32* @float_type_node, align 4
  %83 = load i32, i32* @float_type_node, align 4
  %84 = load i32, i32* @NULL_TREE, align 4
  %85 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %81, i32 %82, i32 %83, i32 %84)
  %86 = load i64, i64* @MIPS_INT_FTYPE_SF_SF, align 8
  %87 = getelementptr inbounds i32, i32* %14, i64 %86
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @integer_type_node, align 4
  %89 = load i32, i32* @double_type_node, align 4
  %90 = load i32, i32* @double_type_node, align 4
  %91 = load i32, i32* @NULL_TREE, align 4
  %92 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %88, i32 %89, i32 %90, i32 %91)
  %93 = load i64, i64* @MIPS_INT_FTYPE_DF_DF, align 8
  %94 = getelementptr inbounds i32, i32* %14, i64 %93
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @float_type_node, align 4
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @NULL_TREE, align 4
  %98 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %95, i32 %96, i32 %97)
  %99 = load i64, i64* @MIPS_SF_FTYPE_V2SF, align 8
  %100 = getelementptr inbounds i32, i32* %14, i64 %99
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @float_type_node, align 4
  %102 = load i32, i32* @float_type_node, align 4
  %103 = load i32, i32* @NULL_TREE, align 4
  %104 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %101, i32 %102, i32 %103)
  %105 = load i64, i64* @MIPS_SF_FTYPE_SF, align 8
  %106 = getelementptr inbounds i32, i32* %14, i64 %105
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @float_type_node, align 4
  %108 = load i32, i32* @float_type_node, align 4
  %109 = load i32, i32* @float_type_node, align 4
  %110 = load i32, i32* @NULL_TREE, align 4
  %111 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %107, i32 %108, i32 %109, i32 %110)
  %112 = load i64, i64* @MIPS_SF_FTYPE_SF_SF, align 8
  %113 = getelementptr inbounds i32, i32* %14, i64 %112
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* @double_type_node, align 4
  %115 = load i32, i32* @double_type_node, align 4
  %116 = load i32, i32* @NULL_TREE, align 4
  %117 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %114, i32 %115, i32 %116)
  %118 = load i64, i64* @MIPS_DF_FTYPE_DF, align 8
  %119 = getelementptr inbounds i32, i32* %14, i64 %118
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* @double_type_node, align 4
  %121 = load i32, i32* @double_type_node, align 4
  %122 = load i32, i32* @double_type_node, align 4
  %123 = load i32, i32* @NULL_TREE, align 4
  %124 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %120, i32 %121, i32 %122, i32 %123)
  %125 = load i64, i64* @MIPS_DF_FTYPE_DF_DF, align 8
  %126 = getelementptr inbounds i32, i32* %14, i64 %125
  store i32 %124, i32* %126, align 4
  br label %127

127:                                              ; preds = %24, %21
  %128 = load i64, i64* @TARGET_DSP, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %320

130:                                              ; preds = %127
  %131 = load i32, i32* @intHI_type_node, align 4
  %132 = load i32, i32* @V2HImode, align 4
  %133 = call i32 @build_vector_type_for_mode(i32 %131, i32 %132)
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* @intQI_type_node, align 4
  %135 = load i32, i32* @V4QImode, align 4
  %136 = call i32 @build_vector_type_for_mode(i32 %134, i32 %135)
  store i32 %136, i32* %7, align 4
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* @NULL_TREE, align 4
  %141 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %137, i32 %138, i32 %139, i32 %140)
  %142 = load i64, i64* @MIPS_V2HI_FTYPE_V2HI_V2HI, align 8
  %143 = getelementptr inbounds i32, i32* %14, i64 %142
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* @intSI_type_node, align 4
  %145 = load i32, i32* @intSI_type_node, align 4
  %146 = load i32, i32* @intSI_type_node, align 4
  %147 = load i32, i32* @NULL_TREE, align 4
  %148 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %144, i32 %145, i32 %146, i32 %147)
  %149 = load i64, i64* @MIPS_SI_FTYPE_SI_SI, align 8
  %150 = getelementptr inbounds i32, i32* %14, i64 %149
  store i32 %148, i32* %150, align 4
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* @NULL_TREE, align 4
  %155 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %151, i32 %152, i32 %153, i32 %154)
  %156 = load i64, i64* @MIPS_V4QI_FTYPE_V4QI_V4QI, align 8
  %157 = getelementptr inbounds i32, i32* %14, i64 %156
  store i32 %155, i32* %157, align 4
  %158 = load i32, i32* @intSI_type_node, align 4
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* @NULL_TREE, align 4
  %161 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %158, i32 %159, i32 %160)
  %162 = load i64, i64* @MIPS_SI_FTYPE_V4QI, align 8
  %163 = getelementptr inbounds i32, i32* %14, i64 %162
  store i32 %161, i32* %163, align 4
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* %6, align 4
  %166 = load i32, i32* @NULL_TREE, align 4
  %167 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %164, i32 %165, i32 %166)
  %168 = load i64, i64* @MIPS_V2HI_FTYPE_V2HI, align 8
  %169 = getelementptr inbounds i32, i32* %14, i64 %168
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* @intSI_type_node, align 4
  %171 = load i32, i32* @intSI_type_node, align 4
  %172 = load i32, i32* @NULL_TREE, align 4
  %173 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %170, i32 %171, i32 %172)
  %174 = load i64, i64* @MIPS_SI_FTYPE_SI, align 8
  %175 = getelementptr inbounds i32, i32* %14, i64 %174
  store i32 %173, i32* %175, align 4
  %176 = load i32, i32* %7, align 4
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* %6, align 4
  %179 = load i32, i32* @NULL_TREE, align 4
  %180 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %176, i32 %177, i32 %178, i32 %179)
  %181 = load i64, i64* @MIPS_V4QI_FTYPE_V2HI_V2HI, align 8
  %182 = getelementptr inbounds i32, i32* %14, i64 %181
  store i32 %180, i32* %182, align 4
  %183 = load i32, i32* %6, align 4
  %184 = load i32, i32* @intSI_type_node, align 4
  %185 = load i32, i32* @intSI_type_node, align 4
  %186 = load i32, i32* @NULL_TREE, align 4
  %187 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %183, i32 %184, i32 %185, i32 %186)
  %188 = load i64, i64* @MIPS_V2HI_FTYPE_SI_SI, align 8
  %189 = getelementptr inbounds i32, i32* %14, i64 %188
  store i32 %187, i32* %189, align 4
  %190 = load i32, i32* @intSI_type_node, align 4
  %191 = load i32, i32* %6, align 4
  %192 = load i32, i32* @NULL_TREE, align 4
  %193 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %190, i32 %191, i32 %192)
  %194 = load i64, i64* @MIPS_SI_FTYPE_V2HI, align 8
  %195 = getelementptr inbounds i32, i32* %14, i64 %194
  store i32 %193, i32* %195, align 4
  %196 = load i32, i32* %6, align 4
  %197 = load i32, i32* %7, align 4
  %198 = load i32, i32* @NULL_TREE, align 4
  %199 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %196, i32 %197, i32 %198)
  %200 = load i64, i64* @MIPS_V2HI_FTYPE_V4QI, align 8
  %201 = getelementptr inbounds i32, i32* %14, i64 %200
  store i32 %199, i32* %201, align 4
  %202 = load i32, i32* %7, align 4
  %203 = load i32, i32* %7, align 4
  %204 = load i32, i32* @intSI_type_node, align 4
  %205 = load i32, i32* @NULL_TREE, align 4
  %206 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %202, i32 %203, i32 %204, i32 %205)
  %207 = load i64, i64* @MIPS_V4QI_FTYPE_V4QI_SI, align 8
  %208 = getelementptr inbounds i32, i32* %14, i64 %207
  store i32 %206, i32* %208, align 4
  %209 = load i32, i32* %6, align 4
  %210 = load i32, i32* %6, align 4
  %211 = load i32, i32* @intSI_type_node, align 4
  %212 = load i32, i32* @NULL_TREE, align 4
  %213 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %209, i32 %210, i32 %211, i32 %212)
  %214 = load i64, i64* @MIPS_V2HI_FTYPE_V2HI_SI, align 8
  %215 = getelementptr inbounds i32, i32* %14, i64 %214
  store i32 %213, i32* %215, align 4
  %216 = load i32, i32* %6, align 4
  %217 = load i32, i32* %7, align 4
  %218 = load i32, i32* %6, align 4
  %219 = load i32, i32* @NULL_TREE, align 4
  %220 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %216, i32 %217, i32 %218, i32 %219)
  %221 = load i64, i64* @MIPS_V2HI_FTYPE_V4QI_V2HI, align 8
  %222 = getelementptr inbounds i32, i32* %14, i64 %221
  store i32 %220, i32* %222, align 4
  %223 = load i32, i32* @intSI_type_node, align 4
  %224 = load i32, i32* %6, align 4
  %225 = load i32, i32* %6, align 4
  %226 = load i32, i32* @NULL_TREE, align 4
  %227 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %223, i32 %224, i32 %225, i32 %226)
  %228 = load i64, i64* @MIPS_SI_FTYPE_V2HI_V2HI, align 8
  %229 = getelementptr inbounds i32, i32* %14, i64 %228
  store i32 %227, i32* %229, align 4
  %230 = load i32, i32* @intDI_type_node, align 4
  %231 = load i32, i32* @intDI_type_node, align 4
  %232 = load i32, i32* %7, align 4
  %233 = load i32, i32* %7, align 4
  %234 = load i32, i32* @NULL_TREE, align 4
  %235 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %230, i32 %231, i32 %232, i32 %233, i32 %234)
  %236 = load i64, i64* @MIPS_DI_FTYPE_DI_V4QI_V4QI, align 8
  %237 = getelementptr inbounds i32, i32* %14, i64 %236
  store i32 %235, i32* %237, align 4
  %238 = load i32, i32* @intDI_type_node, align 4
  %239 = load i32, i32* @intDI_type_node, align 4
  %240 = load i32, i32* %6, align 4
  %241 = load i32, i32* %6, align 4
  %242 = load i32, i32* @NULL_TREE, align 4
  %243 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %238, i32 %239, i32 %240, i32 %241, i32 %242)
  %244 = load i64, i64* @MIPS_DI_FTYPE_DI_V2HI_V2HI, align 8
  %245 = getelementptr inbounds i32, i32* %14, i64 %244
  store i32 %243, i32* %245, align 4
  %246 = load i32, i32* @intDI_type_node, align 4
  %247 = load i32, i32* @intDI_type_node, align 4
  %248 = load i32, i32* @intSI_type_node, align 4
  %249 = load i32, i32* @intSI_type_node, align 4
  %250 = load i32, i32* @NULL_TREE, align 4
  %251 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %246, i32 %247, i32 %248, i32 %249, i32 %250)
  %252 = load i64, i64* @MIPS_DI_FTYPE_DI_SI_SI, align 8
  %253 = getelementptr inbounds i32, i32* %14, i64 %252
  store i32 %251, i32* %253, align 4
  %254 = load i32, i32* %7, align 4
  %255 = load i32, i32* @intSI_type_node, align 4
  %256 = load i32, i32* @NULL_TREE, align 4
  %257 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %254, i32 %255, i32 %256)
  %258 = load i64, i64* @MIPS_V4QI_FTYPE_SI, align 8
  %259 = getelementptr inbounds i32, i32* %14, i64 %258
  store i32 %257, i32* %259, align 4
  %260 = load i32, i32* %6, align 4
  %261 = load i32, i32* @intSI_type_node, align 4
  %262 = load i32, i32* @NULL_TREE, align 4
  %263 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %260, i32 %261, i32 %262)
  %264 = load i64, i64* @MIPS_V2HI_FTYPE_SI, align 8
  %265 = getelementptr inbounds i32, i32* %14, i64 %264
  store i32 %263, i32* %265, align 4
  %266 = load i32, i32* @void_type_node, align 4
  %267 = load i32, i32* %7, align 4
  %268 = load i32, i32* %7, align 4
  %269 = load i32, i32* @NULL_TREE, align 4
  %270 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %266, i32 %267, i32 %268, i32 %269)
  %271 = load i64, i64* @MIPS_VOID_FTYPE_V4QI_V4QI, align 8
  %272 = getelementptr inbounds i32, i32* %14, i64 %271
  store i32 %270, i32* %272, align 4
  %273 = load i32, i32* @intSI_type_node, align 4
  %274 = load i32, i32* %7, align 4
  %275 = load i32, i32* %7, align 4
  %276 = load i32, i32* @NULL_TREE, align 4
  %277 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %273, i32 %274, i32 %275, i32 %276)
  %278 = load i64, i64* @MIPS_SI_FTYPE_V4QI_V4QI, align 8
  %279 = getelementptr inbounds i32, i32* %14, i64 %278
  store i32 %277, i32* %279, align 4
  %280 = load i32, i32* @void_type_node, align 4
  %281 = load i32, i32* %6, align 4
  %282 = load i32, i32* %6, align 4
  %283 = load i32, i32* @NULL_TREE, align 4
  %284 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %280, i32 %281, i32 %282, i32 %283)
  %285 = load i64, i64* @MIPS_VOID_FTYPE_V2HI_V2HI, align 8
  %286 = getelementptr inbounds i32, i32* %14, i64 %285
  store i32 %284, i32* %286, align 4
  %287 = load i32, i32* @intSI_type_node, align 4
  %288 = load i32, i32* @intDI_type_node, align 4
  %289 = load i32, i32* @intSI_type_node, align 4
  %290 = load i32, i32* @NULL_TREE, align 4
  %291 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %287, i32 %288, i32 %289, i32 %290)
  %292 = load i64, i64* @MIPS_SI_FTYPE_DI_SI, align 8
  %293 = getelementptr inbounds i32, i32* %14, i64 %292
  store i32 %291, i32* %293, align 4
  %294 = load i32, i32* @intDI_type_node, align 4
  %295 = load i32, i32* @intDI_type_node, align 4
  %296 = load i32, i32* @intSI_type_node, align 4
  %297 = load i32, i32* @NULL_TREE, align 4
  %298 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %294, i32 %295, i32 %296, i32 %297)
  %299 = load i64, i64* @MIPS_DI_FTYPE_DI_SI, align 8
  %300 = getelementptr inbounds i32, i32* %14, i64 %299
  store i32 %298, i32* %300, align 4
  %301 = load i32, i32* @void_type_node, align 4
  %302 = load i32, i32* @intSI_type_node, align 4
  %303 = load i32, i32* @intSI_type_node, align 4
  %304 = load i32, i32* @NULL_TREE, align 4
  %305 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %301, i32 %302, i32 %303, i32 %304)
  %306 = load i64, i64* @MIPS_VOID_FTYPE_SI_SI, align 8
  %307 = getelementptr inbounds i32, i32* %14, i64 %306
  store i32 %305, i32* %307, align 4
  %308 = load i32, i32* @intSI_type_node, align 4
  %309 = load i32, i32* @ptr_type_node, align 4
  %310 = load i32, i32* @intSI_type_node, align 4
  %311 = load i32, i32* @NULL_TREE, align 4
  %312 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %308, i32 %309, i32 %310, i32 %311)
  %313 = load i64, i64* @MIPS_SI_FTYPE_PTR_SI, align 8
  %314 = getelementptr inbounds i32, i32* %14, i64 %313
  store i32 %312, i32* %314, align 4
  %315 = load i32, i32* @intSI_type_node, align 4
  %316 = load i32, i32* @void_list_node, align 4
  %317 = call i32 @build_function_type(i32 %315, i32 %316)
  %318 = load i64, i64* @MIPS_SI_FTYPE_VOID, align 8
  %319 = getelementptr inbounds i32, i32* %14, i64 %318
  store i32 %317, i32* %319, align 4
  br label %320

320:                                              ; preds = %130, %127
  store i32 0, i32* %8, align 4
  %321 = load %struct.bdesc_map*, %struct.bdesc_map** @bdesc_arrays, align 8
  store %struct.bdesc_map* %321, %struct.bdesc_map** %2, align 8
  br label %322

322:                                              ; preds = %402, %320
  %323 = load %struct.bdesc_map*, %struct.bdesc_map** %2, align 8
  %324 = load %struct.bdesc_map*, %struct.bdesc_map** @bdesc_arrays, align 8
  %325 = load %struct.bdesc_map*, %struct.bdesc_map** @bdesc_arrays, align 8
  %326 = call i64 @ARRAY_SIZE(%struct.bdesc_map* %325)
  %327 = getelementptr inbounds %struct.bdesc_map, %struct.bdesc_map* %324, i64 %326
  %328 = icmp ult %struct.bdesc_map* %323, %327
  br i1 %328, label %329, label %405

329:                                              ; preds = %322
  %330 = load %struct.bdesc_map*, %struct.bdesc_map** %2, align 8
  %331 = getelementptr inbounds %struct.bdesc_map, %struct.bdesc_map* %330, i32 0, i32 0
  %332 = load i64, i64* %331, align 8
  %333 = load i64, i64* @PROCESSOR_MAX, align 8
  %334 = icmp eq i64 %332, %333
  br i1 %334, label %341, label %335

335:                                              ; preds = %329
  %336 = load %struct.bdesc_map*, %struct.bdesc_map** %2, align 8
  %337 = getelementptr inbounds %struct.bdesc_map, %struct.bdesc_map* %336, i32 0, i32 0
  %338 = load i64, i64* %337, align 8
  %339 = load i64, i64* @mips_arch, align 8
  %340 = icmp eq i64 %338, %339
  br i1 %340, label %341, label %394

341:                                              ; preds = %335, %329
  %342 = load %struct.bdesc_map*, %struct.bdesc_map** %2, align 8
  %343 = getelementptr inbounds %struct.bdesc_map, %struct.bdesc_map* %342, i32 0, i32 2
  %344 = load %struct.builtin_description*, %struct.builtin_description** %343, align 8
  store %struct.builtin_description* %344, %struct.builtin_description** %1, align 8
  br label %345

345:                                              ; preds = %390, %341
  %346 = load %struct.builtin_description*, %struct.builtin_description** %1, align 8
  %347 = load %struct.bdesc_map*, %struct.bdesc_map** %2, align 8
  %348 = getelementptr inbounds %struct.bdesc_map, %struct.bdesc_map* %347, i32 0, i32 2
  %349 = load %struct.builtin_description*, %struct.builtin_description** %348, align 8
  %350 = load %struct.bdesc_map*, %struct.bdesc_map** %2, align 8
  %351 = getelementptr inbounds %struct.bdesc_map, %struct.bdesc_map* %350, i32 0, i32 1
  %352 = load i64, i64* %351, align 8
  %353 = getelementptr inbounds %struct.builtin_description, %struct.builtin_description* %349, i64 %352
  %354 = icmp ult %struct.builtin_description* %346, %353
  br i1 %354, label %355, label %393

355:                                              ; preds = %345
  %356 = load %struct.builtin_description*, %struct.builtin_description** %1, align 8
  %357 = getelementptr inbounds %struct.builtin_description, %struct.builtin_description* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = load i32, i32* @target_flags, align 4
  %360 = and i32 %358, %359
  %361 = load %struct.builtin_description*, %struct.builtin_description** %1, align 8
  %362 = getelementptr inbounds %struct.builtin_description, %struct.builtin_description* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 8
  %364 = icmp eq i32 %360, %363
  br i1 %364, label %365, label %389

365:                                              ; preds = %355
  %366 = load i32 (i32, i32, i32, i32, i32*, i32*)*, i32 (i32, i32, i32, i32, i32*, i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lang_hooks, i32 0, i32 0), align 8
  %367 = load %struct.builtin_description*, %struct.builtin_description** %1, align 8
  %368 = getelementptr inbounds %struct.builtin_description, %struct.builtin_description* %367, i32 0, i32 2
  %369 = load i32, i32* %368, align 8
  %370 = load %struct.builtin_description*, %struct.builtin_description** %1, align 8
  %371 = getelementptr inbounds %struct.builtin_description, %struct.builtin_description* %370, i32 0, i32 1
  %372 = load i64, i64* %371, align 8
  %373 = getelementptr inbounds i32, i32* %14, i64 %372
  %374 = load i32, i32* %373, align 4
  %375 = load %struct.builtin_description*, %struct.builtin_description** %1, align 8
  %376 = load %struct.bdesc_map*, %struct.bdesc_map** %2, align 8
  %377 = getelementptr inbounds %struct.bdesc_map, %struct.bdesc_map* %376, i32 0, i32 2
  %378 = load %struct.builtin_description*, %struct.builtin_description** %377, align 8
  %379 = ptrtoint %struct.builtin_description* %375 to i64
  %380 = ptrtoint %struct.builtin_description* %378 to i64
  %381 = sub i64 %379, %380
  %382 = sdiv exact i64 %381, 24
  %383 = load i32, i32* %8, align 4
  %384 = zext i32 %383 to i64
  %385 = add nsw i64 %382, %384
  %386 = trunc i64 %385 to i32
  %387 = load i32, i32* @BUILT_IN_MD, align 4
  %388 = call i32 %366(i32 %369, i32 %374, i32 %386, i32 %387, i32* null, i32* null)
  br label %389

389:                                              ; preds = %365, %355
  br label %390

390:                                              ; preds = %389
  %391 = load %struct.builtin_description*, %struct.builtin_description** %1, align 8
  %392 = getelementptr inbounds %struct.builtin_description, %struct.builtin_description* %391, i32 1
  store %struct.builtin_description* %392, %struct.builtin_description** %1, align 8
  br label %345

393:                                              ; preds = %345
  br label %394

394:                                              ; preds = %393, %335
  %395 = load %struct.bdesc_map*, %struct.bdesc_map** %2, align 8
  %396 = getelementptr inbounds %struct.bdesc_map, %struct.bdesc_map* %395, i32 0, i32 1
  %397 = load i64, i64* %396, align 8
  %398 = load i32, i32* %8, align 4
  %399 = zext i32 %398 to i64
  %400 = add i64 %399, %397
  %401 = trunc i64 %400 to i32
  store i32 %401, i32* %8, align 4
  br label %402

402:                                              ; preds = %394
  %403 = load %struct.bdesc_map*, %struct.bdesc_map** %2, align 8
  %404 = getelementptr inbounds %struct.bdesc_map, %struct.bdesc_map* %403, i32 1
  store %struct.bdesc_map* %404, %struct.bdesc_map** %2, align 8
  br label %322

405:                                              ; preds = %322
  store i32 0, i32* %9, align 4
  br label %406

406:                                              ; preds = %405, %20
  %407 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %407)
  %408 = load i32, i32* %9, align 4
  switch i32 %408, label %410 [
    i32 0, label %409
    i32 1, label %409
  ]

409:                                              ; preds = %406, %406
  ret void

410:                                              ; preds = %406
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @build_vector_type_for_mode(i32, i32) #2

declare dso_local i32 @build_function_type_list(i32, i32, i32, ...) #2

declare dso_local i32 @build_function_type(i32, i32) #2

declare dso_local i64 @ARRAY_SIZE(%struct.bdesc_map*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
