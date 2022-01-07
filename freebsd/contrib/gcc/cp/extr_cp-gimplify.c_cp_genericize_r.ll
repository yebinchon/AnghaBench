; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cp-gimplify.c_cp_genericize_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cp-gimplify.c_cp_genericize_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.pointer_set_t = type { i32 }
%struct.cxx_int_tree_map = type { i32*, i32 }

@current_function_decl = common dso_local global i32 0, align 4
@PARM_DECL = common dso_local global i64 0, align 8
@cp_function_chain = common dso_local global %struct.TYPE_2__* null, align 8
@FUNCTION_DECL = common dso_local global i64 0, align 8
@VAR_DECL = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32* null, align 8
@ADDR_EXPR = common dso_local global i64 0, align 8
@RETURN_EXPR = common dso_local global i64 0, align 8
@OMP_CLAUSE = common dso_local global i64 0, align 8
@CLEANUP_STMT = common dso_local global i64 0, align 8
@TRY_CATCH_EXPR = common dso_local global i32 0, align 4
@TRY_FINALLY_EXPR = common dso_local global i32 0, align 4
@void_type_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32*, i8*)* @cp_genericize_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @cp_genericize_r(i32** %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.pointer_set_t*, align 8
  %10 = alloca %struct.cxx_int_tree_map*, align 8
  %11 = alloca %struct.cxx_int_tree_map, align 8
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i32**, i32*** %5, align 8
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %8, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.pointer_set_t*
  store %struct.pointer_set_t* %15, %struct.pointer_set_t** %9, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = call i64 @is_invisiref_parm(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %3
  %20 = load i32, i32* @current_function_decl, align 4
  %21 = call i64 @DECL_THUNK_P(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i32*, i32** %8, align 8
  %25 = call i64 @TREE_CODE(i32* %24)
  %26 = load i64, i64* @PARM_DECL, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %33, label %28

28:                                               ; preds = %23, %19
  %29 = load i32*, i32** %8, align 8
  %30 = call i32* @convert_from_reference(i32* %29)
  %31 = load i32**, i32*** %5, align 8
  store i32* %30, i32** %31, align 8
  %32 = load i32*, i32** %6, align 8
  store i32 0, i32* %32, align 4
  store i32* null, i32** %4, align 8
  br label %177

33:                                               ; preds = %23, %3
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cp_function_chain, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %72

38:                                               ; preds = %33
  %39 = load i32*, i32** %8, align 8
  %40 = call i64 @TREE_CODE(i32* %39)
  %41 = load i64, i64* @FUNCTION_DECL, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load i32*, i32** %8, align 8
  %45 = call i64 @TREE_CODE(i32* %44)
  %46 = load i64, i64* @VAR_DECL, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %72

48:                                               ; preds = %43, %38
  %49 = load i32*, i32** %8, align 8
  %50 = call i64 @DECL_EXTERNAL(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %72

52:                                               ; preds = %48
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @DECL_UID(i32* %53)
  %55 = getelementptr inbounds %struct.cxx_int_tree_map, %struct.cxx_int_tree_map* %11, i32 0, i32 1
  store i32 %54, i32* %55, align 8
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cp_function_chain, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.cxx_int_tree_map, %struct.cxx_int_tree_map* %11, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @htab_find_with_hash(i64 %58, %struct.cxx_int_tree_map* %11, i32 %60)
  %62 = inttoptr i64 %61 to %struct.cxx_int_tree_map*
  store %struct.cxx_int_tree_map* %62, %struct.cxx_int_tree_map** %10, align 8
  %63 = load %struct.cxx_int_tree_map*, %struct.cxx_int_tree_map** %10, align 8
  %64 = icmp ne %struct.cxx_int_tree_map* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %52
  %66 = load %struct.cxx_int_tree_map*, %struct.cxx_int_tree_map** %10, align 8
  %67 = getelementptr inbounds %struct.cxx_int_tree_map, %struct.cxx_int_tree_map* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32**, i32*** %5, align 8
  store i32* %68, i32** %69, align 8
  %70 = load i32*, i32** %6, align 8
  store i32 0, i32* %70, align 4
  store i32* null, i32** %4, align 8
  br label %177

71:                                               ; preds = %52
  br label %72

72:                                               ; preds = %71, %48, %43, %33
  %73 = load %struct.pointer_set_t*, %struct.pointer_set_t** %9, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = call i64 @pointer_set_contains(%struct.pointer_set_t* %73, i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32*, i32** %6, align 8
  store i32 0, i32* %78, align 4
  %79 = load i32*, i32** @NULL_TREE, align 8
  store i32* %79, i32** %4, align 8
  br label %177

80:                                               ; preds = %72
  %81 = load i32*, i32** %8, align 8
  %82 = call i64 @TREE_CODE(i32* %81)
  %83 = load i64, i64* @ADDR_EXPR, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %98

85:                                               ; preds = %80
  %86 = load i32*, i32** %8, align 8
  %87 = call i32* @TREE_OPERAND(i32* %86, i32 0)
  %88 = call i64 @is_invisiref_parm(i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %85
  %91 = load i32*, i32** %8, align 8
  %92 = call i32 @TREE_TYPE(i32* %91)
  %93 = load i32*, i32** %8, align 8
  %94 = call i32* @TREE_OPERAND(i32* %93, i32 0)
  %95 = call i32* @convert(i32 %92, i32* %94)
  %96 = load i32**, i32*** %5, align 8
  store i32* %95, i32** %96, align 8
  %97 = load i32*, i32** %6, align 8
  store i32 0, i32* %97, align 4
  br label %172

98:                                               ; preds = %85, %80
  %99 = load i32*, i32** %8, align 8
  %100 = call i64 @TREE_CODE(i32* %99)
  %101 = load i64, i64* @RETURN_EXPR, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %114

103:                                              ; preds = %98
  %104 = load i32*, i32** %8, align 8
  %105 = call i32* @TREE_OPERAND(i32* %104, i32 0)
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %114

107:                                              ; preds = %103
  %108 = load i32*, i32** %8, align 8
  %109 = call i32* @TREE_OPERAND(i32* %108, i32 0)
  %110 = call i64 @is_invisiref_parm(i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load i32*, i32** %6, align 8
  store i32 0, i32* %113, align 4
  br label %171

114:                                              ; preds = %107, %103, %98
  %115 = load i32*, i32** %8, align 8
  %116 = call i64 @TREE_CODE(i32* %115)
  %117 = load i64, i64* @OMP_CLAUSE, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %140

119:                                              ; preds = %114
  %120 = load i32*, i32** %8, align 8
  %121 = call i32 @OMP_CLAUSE_CODE(i32* %120)
  switch i32 %121, label %138 [
    i32 130, label %122
    i32 128, label %122
    i32 132, label %122
    i32 131, label %122
    i32 134, label %122
    i32 133, label %122
    i32 129, label %130
  ]

122:                                              ; preds = %119, %119, %119, %119, %119, %119
  %123 = load i32*, i32** %8, align 8
  %124 = call i32* @OMP_CLAUSE_DECL(i32* %123)
  %125 = call i64 @is_invisiref_parm(i32* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = load i32*, i32** %6, align 8
  store i32 0, i32* %128, align 4
  br label %129

129:                                              ; preds = %127, %122
  br label %139

130:                                              ; preds = %119
  %131 = load i32*, i32** %8, align 8
  %132 = call i32* @OMP_CLAUSE_DECL(i32* %131)
  %133 = call i64 @is_invisiref_parm(i32* %132)
  %134 = icmp ne i64 %133, 0
  %135 = xor i1 %134, true
  %136 = zext i1 %135 to i32
  %137 = call i32 @gcc_assert(i32 %136)
  br label %139

138:                                              ; preds = %119
  br label %139

139:                                              ; preds = %138, %130, %129
  br label %170

140:                                              ; preds = %114
  %141 = load i32*, i32** %8, align 8
  %142 = call i64 @IS_TYPE_OR_DECL_P(i32* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  %145 = load i32*, i32** %6, align 8
  store i32 0, i32* %145, align 4
  br label %169

146:                                              ; preds = %140
  %147 = load i32*, i32** %8, align 8
  %148 = call i64 @TREE_CODE(i32* %147)
  %149 = load i64, i64* @CLEANUP_STMT, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %168

151:                                              ; preds = %146
  %152 = load i32*, i32** %8, align 8
  %153 = call i64 @CLEANUP_EH_ONLY(i32* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %151
  %156 = load i32, i32* @TRY_CATCH_EXPR, align 4
  br label %159

157:                                              ; preds = %151
  %158 = load i32, i32* @TRY_FINALLY_EXPR, align 4
  br label %159

159:                                              ; preds = %157, %155
  %160 = phi i32 [ %156, %155 ], [ %158, %157 ]
  %161 = load i32, i32* @void_type_node, align 4
  %162 = load i32*, i32** %8, align 8
  %163 = call i32 @CLEANUP_BODY(i32* %162)
  %164 = load i32*, i32** %8, align 8
  %165 = call i32 @CLEANUP_EXPR(i32* %164)
  %166 = call i32* @build2(i32 %160, i32 %161, i32 %163, i32 %165)
  %167 = load i32**, i32*** %5, align 8
  store i32* %166, i32** %167, align 8
  br label %168

168:                                              ; preds = %159, %146
  br label %169

169:                                              ; preds = %168, %144
  br label %170

170:                                              ; preds = %169, %139
  br label %171

171:                                              ; preds = %170, %112
  br label %172

172:                                              ; preds = %171, %90
  %173 = load %struct.pointer_set_t*, %struct.pointer_set_t** %9, align 8
  %174 = load i32**, i32*** %5, align 8
  %175 = load i32*, i32** %174, align 8
  %176 = call i32 @pointer_set_insert(%struct.pointer_set_t* %173, i32* %175)
  store i32* null, i32** %4, align 8
  br label %177

177:                                              ; preds = %172, %77, %65, %28
  %178 = load i32*, i32** %4, align 8
  ret i32* %178
}

declare dso_local i64 @is_invisiref_parm(i32*) #1

declare dso_local i64 @DECL_THUNK_P(i32) #1

declare dso_local i64 @TREE_CODE(i32*) #1

declare dso_local i32* @convert_from_reference(i32*) #1

declare dso_local i64 @DECL_EXTERNAL(i32*) #1

declare dso_local i32 @DECL_UID(i32*) #1

declare dso_local i64 @htab_find_with_hash(i64, %struct.cxx_int_tree_map*, i32) #1

declare dso_local i64 @pointer_set_contains(%struct.pointer_set_t*, i32*) #1

declare dso_local i32* @TREE_OPERAND(i32*, i32) #1

declare dso_local i32* @convert(i32, i32*) #1

declare dso_local i32 @TREE_TYPE(i32*) #1

declare dso_local i32 @OMP_CLAUSE_CODE(i32*) #1

declare dso_local i32* @OMP_CLAUSE_DECL(i32*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @IS_TYPE_OR_DECL_P(i32*) #1

declare dso_local i32* @build2(i32, i32, i32, i32) #1

declare dso_local i64 @CLEANUP_EH_ONLY(i32*) #1

declare dso_local i32 @CLEANUP_BODY(i32*) #1

declare dso_local i32 @CLEANUP_EXPR(i32*) #1

declare dso_local i32 @pointer_set_insert(%struct.pointer_set_t*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
