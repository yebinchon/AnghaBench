; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_unqualified_namespace_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_unqualified_namespace_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scope_binding = type { i64 }
%struct.cp_binding_level = type { i64, i32, %struct.cp_binding_level* }

@NULL_TREE = common dso_local global i64 0, align 8
@TV_NAME_LOOKUP = common dso_local global i32 0, align 4
@EMPTY_SCOPE_BINDING = common dso_local global %struct.scope_binding zeroinitializer, align 8
@current_binding_level = common dso_local global %struct.cp_binding_level* null, align 8
@sk_namespace = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@global_namespace = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32)* @unqualified_namespace_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @unqualified_namespace_lookup(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.cp_binding_level*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.scope_binding, align 8
  %12 = alloca i32*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = call i64 (...) @current_decl_namespace()
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* @NULL_TREE, align 8
  store i64 %15, i64* %10, align 8
  %16 = load i32, i32* @TV_NAME_LOOKUP, align 4
  %17 = call i32 @timevar_push(i32 %16)
  br label %18

18:                                               ; preds = %90, %2
  %19 = load i64, i64* %10, align 8
  %20 = icmp ne i64 %19, 0
  %21 = xor i1 %20, true
  br i1 %21, label %22, label %93

22:                                               ; preds = %18
  %23 = bitcast %struct.scope_binding* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.scope_binding* @EMPTY_SCOPE_BINDING to i8*), i64 8, i1 false)
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @NAMESPACE_LEVEL(i64 %24)
  %26 = load i64, i64* %4, align 8
  %27 = call i32* @cxx_scope_find_binding_for_name(i32 %25, i64 %26)
  store i32* %27, i32** %12, align 8
  %28 = load i32*, i32** %12, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load i32*, i32** %12, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @ambiguous_decl(%struct.scope_binding* %11, i32* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %22
  %35 = load %struct.cp_binding_level*, %struct.cp_binding_level** @current_binding_level, align 8
  store %struct.cp_binding_level* %35, %struct.cp_binding_level** %9, align 8
  br label %36

36:                                               ; preds = %56, %34
  %37 = load %struct.cp_binding_level*, %struct.cp_binding_level** %9, align 8
  %38 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @sk_namespace, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %36
  %43 = load i64, i64* %4, align 8
  %44 = load %struct.cp_binding_level*, %struct.cp_binding_level** %9, align 8
  %45 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @lookup_using_namespace(i64 %43, %struct.scope_binding* %11, i32 %46, i64 %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %42
  %52 = load i32, i32* @TV_NAME_LOOKUP, align 4
  %53 = load i64, i64* @error_mark_node, align 8
  %54 = call i32 @POP_TIMEVAR_AND_RETURN(i32 %52, i64 %53)
  br label %55

55:                                               ; preds = %51, %42
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.cp_binding_level*, %struct.cp_binding_level** %9, align 8
  %58 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %57, i32 0, i32 2
  %59 = load %struct.cp_binding_level*, %struct.cp_binding_level** %58, align 8
  store %struct.cp_binding_level* %59, %struct.cp_binding_level** %9, align 8
  br label %36

60:                                               ; preds = %36
  %61 = load i64, i64* %6, align 8
  store i64 %61, i64* %8, align 8
  br label %62

62:                                               ; preds = %60, %79
  %63 = load i64, i64* %4, align 8
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @DECL_NAMESPACE_USING(i64 %64)
  %66 = load i64, i64* %7, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @lookup_using_namespace(i64 %63, %struct.scope_binding* %11, i32 %65, i64 %66, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %62
  %71 = load i32, i32* @TV_NAME_LOOKUP, align 4
  %72 = load i64, i64* @error_mark_node, align 8
  %73 = call i32 @POP_TIMEVAR_AND_RETURN(i32 %71, i64 %72)
  br label %74

74:                                               ; preds = %70, %62
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* %7, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %82

79:                                               ; preds = %74
  %80 = load i64, i64* %8, align 8
  %81 = call i64 @CP_DECL_CONTEXT(i64 %80)
  store i64 %81, i64* %8, align 8
  br label %62

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.scope_binding, %struct.scope_binding* %11, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %10, align 8
  %85 = load i64, i64* %7, align 8
  %86 = load i64, i64* @global_namespace, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %93

89:                                               ; preds = %82
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %7, align 8
  %92 = call i64 @CP_DECL_CONTEXT(i64 %91)
  store i64 %92, i64* %7, align 8
  br label %18

93:                                               ; preds = %88, %18
  %94 = load i32, i32* @TV_NAME_LOOKUP, align 4
  %95 = load i64, i64* %10, align 8
  %96 = call i32 @POP_TIMEVAR_AND_RETURN(i32 %94, i64 %95)
  %97 = load i64, i64* %3, align 8
  ret i64 %97
}

declare dso_local i64 @current_decl_namespace(...) #1

declare dso_local i32 @timevar_push(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @cxx_scope_find_binding_for_name(i32, i64) #1

declare dso_local i32 @NAMESPACE_LEVEL(i64) #1

declare dso_local i32 @ambiguous_decl(%struct.scope_binding*, i32*, i32) #1

declare dso_local i32 @lookup_using_namespace(i64, %struct.scope_binding*, i32, i64, i32) #1

declare dso_local i32 @POP_TIMEVAR_AND_RETURN(i32, i64) #1

declare dso_local i32 @DECL_NAMESPACE_USING(i64) #1

declare dso_local i64 @CP_DECL_CONTEXT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
