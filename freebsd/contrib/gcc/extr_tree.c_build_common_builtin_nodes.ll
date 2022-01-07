; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_build_common_builtin_nodes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_build_common_builtin_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* (i32, i32)* }

@built_in_decls = common dso_local global i32** null, align 8
@BUILT_IN_MEMCPY = common dso_local global i64 0, align 8
@BUILT_IN_MEMMOVE = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@size_type_node = common dso_local global i32* null, align 8
@void_list_node = common dso_local global i32* null, align 8
@const_ptr_type_node = common dso_local global i32* null, align 8
@ptr_type_node = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"__builtin_memcpy\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"memcpy\00", align 1
@ECF_NOTHROW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"__builtin_memmove\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"memmove\00", align 1
@BUILT_IN_MEMCMP = common dso_local global i64 0, align 8
@integer_type_node = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"__builtin_memcmp\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"memcmp\00", align 1
@ECF_PURE = common dso_local global i32 0, align 4
@BUILT_IN_MEMSET = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [17 x i8] c"__builtin_memset\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"memset\00", align 1
@BUILT_IN_ALLOCA = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [17 x i8] c"__builtin_alloca\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"alloca\00", align 1
@ECF_MALLOC = common dso_local global i32 0, align 4
@void_type_node = common dso_local global i32* null, align 8
@.str.10 = private unnamed_addr constant [26 x i8] c"__builtin_init_trampoline\00", align 1
@BUILT_IN_INIT_TRAMPOLINE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [28 x i8] c"__builtin_adjust_trampoline\00", align 1
@BUILT_IN_ADJUST_TRAMPOLINE = common dso_local global i32 0, align 4
@ECF_CONST = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [24 x i8] c"__builtin_nonlocal_goto\00", align 1
@BUILT_IN_NONLOCAL_GOTO = common dso_local global i32 0, align 4
@ECF_NORETURN = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [23 x i8] c"__builtin_setjmp_setup\00", align 1
@BUILT_IN_SETJMP_SETUP = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [28 x i8] c"__builtin_setjmp_dispatcher\00", align 1
@BUILT_IN_SETJMP_DISPATCHER = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [26 x i8] c"__builtin_setjmp_receiver\00", align 1
@BUILT_IN_SETJMP_RECEIVER = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [21 x i8] c"__builtin_stack_save\00", align 1
@BUILT_IN_STACK_SAVE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [24 x i8] c"__builtin_stack_restore\00", align 1
@BUILT_IN_STACK_RESTORE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [29 x i8] c"__builtin_profile_func_enter\00", align 1
@BUILT_IN_PROFILE_FUNC_ENTER = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [19 x i8] c"profile_func_enter\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"__builtin_profile_func_exit\00", align 1
@BUILT_IN_PROFILE_FUNC_EXIT = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [18 x i8] c"profile_func_exit\00", align 1
@MIN_MODE_COMPLEX_FLOAT = common dso_local global i32 0, align 4
@MAX_MODE_COMPLEX_FLOAT = common dso_local global i32 0, align 4
@lang_hooks = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@BUILT_IN_COMPLEX_MUL_MIN = common dso_local global i32 0, align 4
@BUILT_IN_COMPLEX_DIV_MIN = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [6 x i8] c"__mul\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@built_in_names = common dso_local global i8** null, align 8
@.str.24 = private unnamed_addr constant [6 x i8] c"__div\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @build_common_builtin_nodes() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [4 x i8], align 1
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = load i32**, i32*** @built_in_decls, align 8
  %12 = load i64, i64* @BUILT_IN_MEMCPY, align 8
  %13 = getelementptr inbounds i32*, i32** %11, i64 %12
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %0
  %17 = load i32**, i32*** @built_in_decls, align 8
  %18 = load i64, i64* @BUILT_IN_MEMMOVE, align 8
  %19 = getelementptr inbounds i32*, i32** %17, i64 %18
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %62

22:                                               ; preds = %16, %0
  %23 = load i32, i32* @NULL_TREE, align 4
  %24 = load i32*, i32** @size_type_node, align 8
  %25 = load i32*, i32** @void_list_node, align 8
  %26 = call i32* @tree_cons(i32 %23, i32* %24, i32* %25)
  store i32* %26, i32** %1, align 8
  %27 = load i32, i32* @NULL_TREE, align 4
  %28 = load i32*, i32** @const_ptr_type_node, align 8
  %29 = load i32*, i32** %1, align 8
  %30 = call i32* @tree_cons(i32 %27, i32* %28, i32* %29)
  store i32* %30, i32** %1, align 8
  %31 = load i32, i32* @NULL_TREE, align 4
  %32 = load i32*, i32** @ptr_type_node, align 8
  %33 = load i32*, i32** %1, align 8
  %34 = call i32* @tree_cons(i32 %31, i32* %32, i32* %33)
  store i32* %34, i32** %1, align 8
  %35 = load i32*, i32** @ptr_type_node, align 8
  %36 = load i32*, i32** %1, align 8
  %37 = call i32* @build_function_type(i32* %35, i32* %36)
  store i32* %37, i32** %2, align 8
  %38 = load i32**, i32*** @built_in_decls, align 8
  %39 = load i64, i64* @BUILT_IN_MEMCPY, align 8
  %40 = getelementptr inbounds i32*, i32** %38, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %22
  %44 = load i32*, i32** %2, align 8
  %45 = load i64, i64* @BUILT_IN_MEMCPY, align 8
  %46 = trunc i64 %45 to i32
  %47 = load i32, i32* @ECF_NOTHROW, align 4
  %48 = call i32 @local_define_builtin(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %44, i32 %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %43, %22
  %50 = load i32**, i32*** @built_in_decls, align 8
  %51 = load i64, i64* @BUILT_IN_MEMMOVE, align 8
  %52 = getelementptr inbounds i32*, i32** %50, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load i32*, i32** %2, align 8
  %57 = load i64, i64* @BUILT_IN_MEMMOVE, align 8
  %58 = trunc i64 %57 to i32
  %59 = load i32, i32* @ECF_NOTHROW, align 4
  %60 = call i32 @local_define_builtin(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32* %56, i32 %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %55, %49
  br label %62

62:                                               ; preds = %61, %16
  %63 = load i32**, i32*** @built_in_decls, align 8
  %64 = load i64, i64* @BUILT_IN_MEMCMP, align 8
  %65 = getelementptr inbounds i32*, i32** %63, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %91

68:                                               ; preds = %62
  %69 = load i32, i32* @NULL_TREE, align 4
  %70 = load i32*, i32** @size_type_node, align 8
  %71 = load i32*, i32** @void_list_node, align 8
  %72 = call i32* @tree_cons(i32 %69, i32* %70, i32* %71)
  store i32* %72, i32** %1, align 8
  %73 = load i32, i32* @NULL_TREE, align 4
  %74 = load i32*, i32** @const_ptr_type_node, align 8
  %75 = load i32*, i32** %1, align 8
  %76 = call i32* @tree_cons(i32 %73, i32* %74, i32* %75)
  store i32* %76, i32** %1, align 8
  %77 = load i32, i32* @NULL_TREE, align 4
  %78 = load i32*, i32** @const_ptr_type_node, align 8
  %79 = load i32*, i32** %1, align 8
  %80 = call i32* @tree_cons(i32 %77, i32* %78, i32* %79)
  store i32* %80, i32** %1, align 8
  %81 = load i32*, i32** @integer_type_node, align 8
  %82 = load i32*, i32** %1, align 8
  %83 = call i32* @build_function_type(i32* %81, i32* %82)
  store i32* %83, i32** %2, align 8
  %84 = load i32*, i32** %2, align 8
  %85 = load i64, i64* @BUILT_IN_MEMCMP, align 8
  %86 = trunc i64 %85 to i32
  %87 = load i32, i32* @ECF_PURE, align 4
  %88 = load i32, i32* @ECF_NOTHROW, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @local_define_builtin(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32* %84, i32 %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %68, %62
  %92 = load i32**, i32*** @built_in_decls, align 8
  %93 = load i64, i64* @BUILT_IN_MEMSET, align 8
  %94 = getelementptr inbounds i32*, i32** %92, i64 %93
  %95 = load i32*, i32** %94, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %118

97:                                               ; preds = %91
  %98 = load i32, i32* @NULL_TREE, align 4
  %99 = load i32*, i32** @size_type_node, align 8
  %100 = load i32*, i32** @void_list_node, align 8
  %101 = call i32* @tree_cons(i32 %98, i32* %99, i32* %100)
  store i32* %101, i32** %1, align 8
  %102 = load i32, i32* @NULL_TREE, align 4
  %103 = load i32*, i32** @integer_type_node, align 8
  %104 = load i32*, i32** %1, align 8
  %105 = call i32* @tree_cons(i32 %102, i32* %103, i32* %104)
  store i32* %105, i32** %1, align 8
  %106 = load i32, i32* @NULL_TREE, align 4
  %107 = load i32*, i32** @ptr_type_node, align 8
  %108 = load i32*, i32** %1, align 8
  %109 = call i32* @tree_cons(i32 %106, i32* %107, i32* %108)
  store i32* %109, i32** %1, align 8
  %110 = load i32*, i32** @ptr_type_node, align 8
  %111 = load i32*, i32** %1, align 8
  %112 = call i32* @build_function_type(i32* %110, i32* %111)
  store i32* %112, i32** %2, align 8
  %113 = load i32*, i32** %2, align 8
  %114 = load i64, i64* @BUILT_IN_MEMSET, align 8
  %115 = trunc i64 %114 to i32
  %116 = load i32, i32* @ECF_NOTHROW, align 4
  %117 = call i32 @local_define_builtin(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32* %113, i32 %115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %97, %91
  %119 = load i32**, i32*** @built_in_decls, align 8
  %120 = load i64, i64* @BUILT_IN_ALLOCA, align 8
  %121 = getelementptr inbounds i32*, i32** %119, i64 %120
  %122 = load i32*, i32** %121, align 8
  %123 = icmp eq i32* %122, null
  br i1 %123, label %124, label %139

124:                                              ; preds = %118
  %125 = load i32, i32* @NULL_TREE, align 4
  %126 = load i32*, i32** @size_type_node, align 8
  %127 = load i32*, i32** @void_list_node, align 8
  %128 = call i32* @tree_cons(i32 %125, i32* %126, i32* %127)
  store i32* %128, i32** %1, align 8
  %129 = load i32*, i32** @ptr_type_node, align 8
  %130 = load i32*, i32** %1, align 8
  %131 = call i32* @build_function_type(i32* %129, i32* %130)
  store i32* %131, i32** %2, align 8
  %132 = load i32*, i32** %2, align 8
  %133 = load i64, i64* @BUILT_IN_ALLOCA, align 8
  %134 = trunc i64 %133 to i32
  %135 = load i32, i32* @ECF_NOTHROW, align 4
  %136 = load i32, i32* @ECF_MALLOC, align 4
  %137 = or i32 %135, %136
  %138 = call i32 @local_define_builtin(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32* %132, i32 %134, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %137)
  br label %139

139:                                              ; preds = %124, %118
  %140 = load i32, i32* @NULL_TREE, align 4
  %141 = load i32*, i32** @ptr_type_node, align 8
  %142 = load i32*, i32** @void_list_node, align 8
  %143 = call i32* @tree_cons(i32 %140, i32* %141, i32* %142)
  store i32* %143, i32** %1, align 8
  %144 = load i32, i32* @NULL_TREE, align 4
  %145 = load i32*, i32** @ptr_type_node, align 8
  %146 = load i32*, i32** %1, align 8
  %147 = call i32* @tree_cons(i32 %144, i32* %145, i32* %146)
  store i32* %147, i32** %1, align 8
  %148 = load i32, i32* @NULL_TREE, align 4
  %149 = load i32*, i32** @ptr_type_node, align 8
  %150 = load i32*, i32** %1, align 8
  %151 = call i32* @tree_cons(i32 %148, i32* %149, i32* %150)
  store i32* %151, i32** %1, align 8
  %152 = load i32*, i32** @void_type_node, align 8
  %153 = load i32*, i32** %1, align 8
  %154 = call i32* @build_function_type(i32* %152, i32* %153)
  store i32* %154, i32** %2, align 8
  %155 = load i32*, i32** %2, align 8
  %156 = load i32, i32* @BUILT_IN_INIT_TRAMPOLINE, align 4
  %157 = load i32, i32* @ECF_NOTHROW, align 4
  %158 = call i32 @local_define_builtin(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32* %155, i32 %156, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %157)
  %159 = load i32, i32* @NULL_TREE, align 4
  %160 = load i32*, i32** @ptr_type_node, align 8
  %161 = load i32*, i32** @void_list_node, align 8
  %162 = call i32* @tree_cons(i32 %159, i32* %160, i32* %161)
  store i32* %162, i32** %1, align 8
  %163 = load i32*, i32** @ptr_type_node, align 8
  %164 = load i32*, i32** %1, align 8
  %165 = call i32* @build_function_type(i32* %163, i32* %164)
  store i32* %165, i32** %2, align 8
  %166 = load i32*, i32** %2, align 8
  %167 = load i32, i32* @BUILT_IN_ADJUST_TRAMPOLINE, align 4
  %168 = load i32, i32* @ECF_CONST, align 4
  %169 = load i32, i32* @ECF_NOTHROW, align 4
  %170 = or i32 %168, %169
  %171 = call i32 @local_define_builtin(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32* %166, i32 %167, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 %170)
  %172 = load i32, i32* @NULL_TREE, align 4
  %173 = load i32*, i32** @ptr_type_node, align 8
  %174 = load i32*, i32** @void_list_node, align 8
  %175 = call i32* @tree_cons(i32 %172, i32* %173, i32* %174)
  store i32* %175, i32** %1, align 8
  %176 = load i32, i32* @NULL_TREE, align 4
  %177 = load i32*, i32** @ptr_type_node, align 8
  %178 = load i32*, i32** %1, align 8
  %179 = call i32* @tree_cons(i32 %176, i32* %177, i32* %178)
  store i32* %179, i32** %1, align 8
  %180 = load i32*, i32** @void_type_node, align 8
  %181 = load i32*, i32** %1, align 8
  %182 = call i32* @build_function_type(i32* %180, i32* %181)
  store i32* %182, i32** %2, align 8
  %183 = load i32*, i32** %2, align 8
  %184 = load i32, i32* @BUILT_IN_NONLOCAL_GOTO, align 4
  %185 = load i32, i32* @ECF_NORETURN, align 4
  %186 = load i32, i32* @ECF_NOTHROW, align 4
  %187 = or i32 %185, %186
  %188 = call i32 @local_define_builtin(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32* %183, i32 %184, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32 %187)
  %189 = load i32, i32* @NULL_TREE, align 4
  %190 = load i32*, i32** @ptr_type_node, align 8
  %191 = load i32*, i32** @void_list_node, align 8
  %192 = call i32* @tree_cons(i32 %189, i32* %190, i32* %191)
  store i32* %192, i32** %1, align 8
  %193 = load i32, i32* @NULL_TREE, align 4
  %194 = load i32*, i32** @ptr_type_node, align 8
  %195 = load i32*, i32** %1, align 8
  %196 = call i32* @tree_cons(i32 %193, i32* %194, i32* %195)
  store i32* %196, i32** %1, align 8
  %197 = load i32*, i32** @void_type_node, align 8
  %198 = load i32*, i32** %1, align 8
  %199 = call i32* @build_function_type(i32* %197, i32* %198)
  store i32* %199, i32** %2, align 8
  %200 = load i32*, i32** %2, align 8
  %201 = load i32, i32* @BUILT_IN_SETJMP_SETUP, align 4
  %202 = load i32, i32* @ECF_NOTHROW, align 4
  %203 = call i32 @local_define_builtin(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i32* %200, i32 %201, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i32 %202)
  %204 = load i32, i32* @NULL_TREE, align 4
  %205 = load i32*, i32** @ptr_type_node, align 8
  %206 = load i32*, i32** @void_list_node, align 8
  %207 = call i32* @tree_cons(i32 %204, i32* %205, i32* %206)
  store i32* %207, i32** %1, align 8
  %208 = load i32*, i32** @ptr_type_node, align 8
  %209 = load i32*, i32** %1, align 8
  %210 = call i32* @build_function_type(i32* %208, i32* %209)
  store i32* %210, i32** %2, align 8
  %211 = load i32*, i32** %2, align 8
  %212 = load i32, i32* @BUILT_IN_SETJMP_DISPATCHER, align 4
  %213 = load i32, i32* @ECF_PURE, align 4
  %214 = load i32, i32* @ECF_NOTHROW, align 4
  %215 = or i32 %213, %214
  %216 = call i32 @local_define_builtin(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i32* %211, i32 %212, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i32 %215)
  %217 = load i32, i32* @NULL_TREE, align 4
  %218 = load i32*, i32** @ptr_type_node, align 8
  %219 = load i32*, i32** @void_list_node, align 8
  %220 = call i32* @tree_cons(i32 %217, i32* %218, i32* %219)
  store i32* %220, i32** %1, align 8
  %221 = load i32*, i32** @void_type_node, align 8
  %222 = load i32*, i32** %1, align 8
  %223 = call i32* @build_function_type(i32* %221, i32* %222)
  store i32* %223, i32** %2, align 8
  %224 = load i32*, i32** %2, align 8
  %225 = load i32, i32* @BUILT_IN_SETJMP_RECEIVER, align 4
  %226 = load i32, i32* @ECF_NOTHROW, align 4
  %227 = call i32 @local_define_builtin(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0), i32* %224, i32 %225, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0), i32 %226)
  %228 = load i32*, i32** @ptr_type_node, align 8
  %229 = load i32*, i32** @void_list_node, align 8
  %230 = call i32* @build_function_type(i32* %228, i32* %229)
  store i32* %230, i32** %2, align 8
  %231 = load i32*, i32** %2, align 8
  %232 = load i32, i32* @BUILT_IN_STACK_SAVE, align 4
  %233 = load i32, i32* @ECF_NOTHROW, align 4
  %234 = call i32 @local_define_builtin(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i32* %231, i32 %232, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i32 %233)
  %235 = load i32, i32* @NULL_TREE, align 4
  %236 = load i32*, i32** @ptr_type_node, align 8
  %237 = load i32*, i32** @void_list_node, align 8
  %238 = call i32* @tree_cons(i32 %235, i32* %236, i32* %237)
  store i32* %238, i32** %1, align 8
  %239 = load i32*, i32** @void_type_node, align 8
  %240 = load i32*, i32** %1, align 8
  %241 = call i32* @build_function_type(i32* %239, i32* %240)
  store i32* %241, i32** %2, align 8
  %242 = load i32*, i32** %2, align 8
  %243 = load i32, i32* @BUILT_IN_STACK_RESTORE, align 4
  %244 = load i32, i32* @ECF_NOTHROW, align 4
  %245 = call i32 @local_define_builtin(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i32* %242, i32 %243, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i32 %244)
  %246 = load i32*, i32** @void_type_node, align 8
  %247 = load i32*, i32** @void_list_node, align 8
  %248 = call i32* @build_function_type(i32* %246, i32* %247)
  store i32* %248, i32** %2, align 8
  %249 = load i32*, i32** %2, align 8
  %250 = load i32, i32* @BUILT_IN_PROFILE_FUNC_ENTER, align 4
  %251 = call i32 @local_define_builtin(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0), i32* %249, i32 %250, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0), i32 0)
  %252 = load i32*, i32** %2, align 8
  %253 = load i32, i32* @BUILT_IN_PROFILE_FUNC_EXIT, align 4
  %254 = call i32 @local_define_builtin(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i64 0, i64 0), i32* %252, i32 %253, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0), i32 0)
  %255 = load i32, i32* @MIN_MODE_COMPLEX_FLOAT, align 4
  store i32 %255, i32* %3, align 4
  br label %256

256:                                              ; preds = %362, %139
  %257 = load i32, i32* %3, align 4
  %258 = load i32, i32* @MAX_MODE_COMPLEX_FLOAT, align 4
  %259 = icmp ule i32 %257, %258
  br i1 %259, label %260, label %365

260:                                              ; preds = %256
  %261 = load i32* (i32, i32)*, i32* (i32, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %262 = load i32, i32* %3, align 4
  %263 = call i32* %261(i32 %262, i32 0)
  store i32* %263, i32** %9, align 8
  %264 = load i32*, i32** %9, align 8
  %265 = icmp eq i32* %264, null
  br i1 %265, label %266, label %267

266:                                              ; preds = %260
  br label %362

267:                                              ; preds = %260
  %268 = load i32*, i32** %9, align 8
  %269 = call i32* @TREE_TYPE(i32* %268)
  store i32* %269, i32** %10, align 8
  %270 = load i32, i32* @NULL_TREE, align 4
  %271 = load i32*, i32** %10, align 8
  %272 = load i32*, i32** @void_list_node, align 8
  %273 = call i32* @tree_cons(i32 %270, i32* %271, i32* %272)
  store i32* %273, i32** %1, align 8
  %274 = load i32, i32* @NULL_TREE, align 4
  %275 = load i32*, i32** %10, align 8
  %276 = load i32*, i32** %1, align 8
  %277 = call i32* @tree_cons(i32 %274, i32* %275, i32* %276)
  store i32* %277, i32** %1, align 8
  %278 = load i32, i32* @NULL_TREE, align 4
  %279 = load i32*, i32** %10, align 8
  %280 = load i32*, i32** %1, align 8
  %281 = call i32* @tree_cons(i32 %278, i32* %279, i32* %280)
  store i32* %281, i32** %1, align 8
  %282 = load i32, i32* @NULL_TREE, align 4
  %283 = load i32*, i32** %10, align 8
  %284 = load i32*, i32** %1, align 8
  %285 = call i32* @tree_cons(i32 %282, i32* %283, i32* %284)
  store i32* %285, i32** %1, align 8
  %286 = load i32*, i32** %9, align 8
  %287 = load i32*, i32** %1, align 8
  %288 = call i32* @build_function_type(i32* %286, i32* %287)
  store i32* %288, i32** %2, align 8
  %289 = load i32, i32* @BUILT_IN_COMPLEX_MUL_MIN, align 4
  %290 = load i32, i32* %3, align 4
  %291 = add i32 %289, %290
  %292 = load i32, i32* @MIN_MODE_COMPLEX_FLOAT, align 4
  %293 = sub i32 %291, %292
  store i32 %293, i32* %7, align 4
  %294 = load i32, i32* @BUILT_IN_COMPLEX_DIV_MIN, align 4
  %295 = load i32, i32* %3, align 4
  %296 = add i32 %294, %295
  %297 = load i32, i32* @MIN_MODE_COMPLEX_FLOAT, align 4
  %298 = sub i32 %296, %297
  store i32 %298, i32* %8, align 4
  %299 = load i32, i32* %3, align 4
  %300 = call i8* @GET_MODE_NAME(i32 %299)
  store i8* %300, i8** %6, align 8
  %301 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  store i8* %301, i8** %5, align 8
  br label %302

302:                                              ; preds = %311, %267
  %303 = load i8*, i8** %6, align 8
  %304 = load i8, i8* %303, align 1
  %305 = icmp ne i8 %304, 0
  br i1 %305, label %306, label %316

306:                                              ; preds = %302
  %307 = load i8*, i8** %6, align 8
  %308 = load i8, i8* %307, align 1
  %309 = call signext i8 @TOLOWER(i8 signext %308)
  %310 = load i8*, i8** %5, align 8
  store i8 %309, i8* %310, align 1
  br label %311

311:                                              ; preds = %306
  %312 = load i8*, i8** %6, align 8
  %313 = getelementptr inbounds i8, i8* %312, i32 1
  store i8* %313, i8** %6, align 8
  %314 = load i8*, i8** %5, align 8
  %315 = getelementptr inbounds i8, i8* %314, i32 1
  store i8* %315, i8** %5, align 8
  br label %302

316:                                              ; preds = %302
  %317 = load i8*, i8** %5, align 8
  store i8 0, i8* %317, align 1
  %318 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %319 = call i8* @concat(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i8* %318, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i32* null)
  %320 = load i8**, i8*** @built_in_names, align 8
  %321 = load i32, i32* %7, align 4
  %322 = zext i32 %321 to i64
  %323 = getelementptr inbounds i8*, i8** %320, i64 %322
  store i8* %319, i8** %323, align 8
  %324 = load i8**, i8*** @built_in_names, align 8
  %325 = load i32, i32* %7, align 4
  %326 = zext i32 %325 to i64
  %327 = getelementptr inbounds i8*, i8** %324, i64 %326
  %328 = load i8*, i8** %327, align 8
  %329 = load i32*, i32** %2, align 8
  %330 = load i32, i32* %7, align 4
  %331 = load i8**, i8*** @built_in_names, align 8
  %332 = load i32, i32* %7, align 4
  %333 = zext i32 %332 to i64
  %334 = getelementptr inbounds i8*, i8** %331, i64 %333
  %335 = load i8*, i8** %334, align 8
  %336 = load i32, i32* @ECF_CONST, align 4
  %337 = load i32, i32* @ECF_NOTHROW, align 4
  %338 = or i32 %336, %337
  %339 = call i32 @local_define_builtin(i8* %328, i32* %329, i32 %330, i8* %335, i32 %338)
  %340 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %341 = call i8* @concat(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i8* %340, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i32* null)
  %342 = load i8**, i8*** @built_in_names, align 8
  %343 = load i32, i32* %8, align 4
  %344 = zext i32 %343 to i64
  %345 = getelementptr inbounds i8*, i8** %342, i64 %344
  store i8* %341, i8** %345, align 8
  %346 = load i8**, i8*** @built_in_names, align 8
  %347 = load i32, i32* %8, align 4
  %348 = zext i32 %347 to i64
  %349 = getelementptr inbounds i8*, i8** %346, i64 %348
  %350 = load i8*, i8** %349, align 8
  %351 = load i32*, i32** %2, align 8
  %352 = load i32, i32* %8, align 4
  %353 = load i8**, i8*** @built_in_names, align 8
  %354 = load i32, i32* %8, align 4
  %355 = zext i32 %354 to i64
  %356 = getelementptr inbounds i8*, i8** %353, i64 %355
  %357 = load i8*, i8** %356, align 8
  %358 = load i32, i32* @ECF_CONST, align 4
  %359 = load i32, i32* @ECF_NOTHROW, align 4
  %360 = or i32 %358, %359
  %361 = call i32 @local_define_builtin(i8* %350, i32* %351, i32 %352, i8* %357, i32 %360)
  br label %362

362:                                              ; preds = %316, %266
  %363 = load i32, i32* %3, align 4
  %364 = add i32 %363, 1
  store i32 %364, i32* %3, align 4
  br label %256

365:                                              ; preds = %256
  ret void
}

declare dso_local i32* @tree_cons(i32, i32*, i32*) #1

declare dso_local i32* @build_function_type(i32*, i32*) #1

declare dso_local i32 @local_define_builtin(i8*, i32*, i32, i8*, i32) #1

declare dso_local i32* @TREE_TYPE(i32*) #1

declare dso_local i8* @GET_MODE_NAME(i32) #1

declare dso_local signext i8 @TOLOWER(i8 signext) #1

declare dso_local i8* @concat(i8*, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
