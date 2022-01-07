; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_lookup_name_innermost_nonclass_level.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_lookup_name_innermost_nonclass_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cp_binding_level = type { i64, %struct.cp_binding_level* }
%struct.TYPE_4__ = type { i64, %struct.cp_binding_level* }

@NULL_TREE = common dso_local global i64 0, align 8
@TV_NAME_LOOKUP = common dso_local global i32 0, align 4
@sk_namespace = common dso_local global i64 0, align 8
@TREE_LIST = common dso_local global i64 0, align 8
@VAR_DECL = common dso_local global i64 0, align 8
@sk_cleanup = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @lookup_name_innermost_nonclass_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lookup_name_innermost_nonclass_level(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.cp_binding_level*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* @NULL_TREE, align 8
  store i64 %7, i64* %5, align 8
  %8 = load i32, i32* @TV_NAME_LOOKUP, align 4
  %9 = call i32 @timevar_push(i32 %8)
  %10 = call %struct.cp_binding_level* (...) @innermost_nonclass_level()
  store %struct.cp_binding_level* %10, %struct.cp_binding_level** %4, align 8
  %11 = load %struct.cp_binding_level*, %struct.cp_binding_level** %4, align 8
  %12 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @sk_namespace, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %1
  %17 = load i64, i64* %3, align 8
  %18 = call i64 @IDENTIFIER_NAMESPACE_VALUE(i64 %17)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @NULL_TREE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @TREE_CODE(i64 %23)
  %25 = load i64, i64* @TREE_LIST, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i64, i64* %5, align 8
  %29 = call i64 @TREE_VALUE(i64 %28)
  store i64 %29, i64* %5, align 8
  br label %30

30:                                               ; preds = %27, %22, %16
  br label %82

31:                                               ; preds = %1
  %32 = load i64, i64* %3, align 8
  %33 = call %struct.TYPE_4__* @IDENTIFIER_BINDING(i64 %32)
  %34 = icmp ne %struct.TYPE_4__* %33, null
  br i1 %34, label %35, label %81

35:                                               ; preds = %31
  %36 = load i64, i64* %3, align 8
  %37 = call %struct.TYPE_4__* @IDENTIFIER_BINDING(i64 %36)
  %38 = call i64 @LOCAL_BINDING_P(%struct.TYPE_4__* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %81

40:                                               ; preds = %35
  %41 = load i64, i64* %3, align 8
  %42 = call %struct.TYPE_4__* @IDENTIFIER_BINDING(i64 %41)
  store %struct.TYPE_4__* %42, %struct.TYPE_4__** %6, align 8
  br label %43

43:                                               ; preds = %40, %79
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load %struct.cp_binding_level*, %struct.cp_binding_level** %45, align 8
  %47 = load %struct.cp_binding_level*, %struct.cp_binding_level** %4, align 8
  %48 = icmp eq %struct.cp_binding_level* %46, %47
  br i1 %48, label %49, label %68

49:                                               ; preds = %43
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @TREE_CODE(i64 %52)
  %54 = load i64, i64* @VAR_DECL, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @DECL_DEAD_FOR_LOCAL(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %56, %49
  %63 = load i32, i32* @TV_NAME_LOOKUP, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @POP_TIMEVAR_AND_RETURN(i32 %63, i64 %66)
  br label %68

68:                                               ; preds = %62, %56, %43
  %69 = load %struct.cp_binding_level*, %struct.cp_binding_level** %4, align 8
  %70 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @sk_cleanup, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load %struct.cp_binding_level*, %struct.cp_binding_level** %4, align 8
  %76 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %75, i32 0, i32 1
  %77 = load %struct.cp_binding_level*, %struct.cp_binding_level** %76, align 8
  store %struct.cp_binding_level* %77, %struct.cp_binding_level** %4, align 8
  br label %79

78:                                               ; preds = %68
  br label %80

79:                                               ; preds = %74
  br label %43

80:                                               ; preds = %78
  br label %81

81:                                               ; preds = %80, %35, %31
  br label %82

82:                                               ; preds = %81, %30
  %83 = load i32, i32* @TV_NAME_LOOKUP, align 4
  %84 = load i64, i64* %5, align 8
  %85 = call i32 @POP_TIMEVAR_AND_RETURN(i32 %83, i64 %84)
  %86 = load i64, i64* %2, align 8
  ret i64 %86
}

declare dso_local i32 @timevar_push(i32) #1

declare dso_local %struct.cp_binding_level* @innermost_nonclass_level(...) #1

declare dso_local i64 @IDENTIFIER_NAMESPACE_VALUE(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local %struct.TYPE_4__* @IDENTIFIER_BINDING(i64) #1

declare dso_local i64 @LOCAL_BINDING_P(%struct.TYPE_4__*) #1

declare dso_local i64 @DECL_DEAD_FOR_LOCAL(i64) #1

declare dso_local i32 @POP_TIMEVAR_AND_RETURN(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
