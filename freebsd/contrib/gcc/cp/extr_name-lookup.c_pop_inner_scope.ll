; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_pop_inner_scope.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_pop_inner_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cp_binding_level = type { i64, %struct.cp_binding_level* }

@NAMESPACE_DECL = common dso_local global i64 0, align 8
@current_binding_level = common dso_local global %struct.cp_binding_level* null, align 8
@sk_template_parms = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pop_inner_scope(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.cp_binding_level*, align 8
  %6 = alloca %struct.cp_binding_level*, align 8
  %7 = alloca %struct.cp_binding_level*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %20, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = call i64 @TREE_CODE(i64 %12)
  %14 = load i64, i64* @NAMESPACE_DECL, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @CLASS_TYPE_P(i64 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16, %2
  br label %77

21:                                               ; preds = %16, %11
  br label %22

22:                                               ; preds = %74, %21
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %77

26:                                               ; preds = %22
  %27 = load i64, i64* %4, align 8
  %28 = call i64 @TREE_CODE(i64 %27)
  %29 = load i64, i64* @NAMESPACE_DECL, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %62

31:                                               ; preds = %26
  store %struct.cp_binding_level* null, %struct.cp_binding_level** %5, align 8
  br label %32

32:                                               ; preds = %38, %31
  %33 = load %struct.cp_binding_level*, %struct.cp_binding_level** @current_binding_level, align 8
  %34 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @sk_template_parms, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = load %struct.cp_binding_level*, %struct.cp_binding_level** @current_binding_level, align 8
  store %struct.cp_binding_level* %39, %struct.cp_binding_level** %6, align 8
  %40 = load %struct.cp_binding_level*, %struct.cp_binding_level** %6, align 8
  %41 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %40, i32 0, i32 1
  %42 = load %struct.cp_binding_level*, %struct.cp_binding_level** %41, align 8
  store %struct.cp_binding_level* %42, %struct.cp_binding_level** @current_binding_level, align 8
  %43 = load %struct.cp_binding_level*, %struct.cp_binding_level** %5, align 8
  %44 = load %struct.cp_binding_level*, %struct.cp_binding_level** %6, align 8
  %45 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %44, i32 0, i32 1
  store %struct.cp_binding_level* %43, %struct.cp_binding_level** %45, align 8
  %46 = load %struct.cp_binding_level*, %struct.cp_binding_level** %6, align 8
  store %struct.cp_binding_level* %46, %struct.cp_binding_level** %5, align 8
  br label %32

47:                                               ; preds = %32
  %48 = call i32 (...) @pop_namespace()
  br label %49

49:                                               ; preds = %52, %47
  %50 = load %struct.cp_binding_level*, %struct.cp_binding_level** %5, align 8
  %51 = icmp ne %struct.cp_binding_level* %50, null
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load %struct.cp_binding_level*, %struct.cp_binding_level** %5, align 8
  store %struct.cp_binding_level* %53, %struct.cp_binding_level** %7, align 8
  %54 = load %struct.cp_binding_level*, %struct.cp_binding_level** %7, align 8
  %55 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %54, i32 0, i32 1
  %56 = load %struct.cp_binding_level*, %struct.cp_binding_level** %55, align 8
  store %struct.cp_binding_level* %56, %struct.cp_binding_level** %5, align 8
  %57 = load %struct.cp_binding_level*, %struct.cp_binding_level** @current_binding_level, align 8
  %58 = load %struct.cp_binding_level*, %struct.cp_binding_level** %7, align 8
  %59 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %58, i32 0, i32 1
  store %struct.cp_binding_level* %57, %struct.cp_binding_level** %59, align 8
  %60 = load %struct.cp_binding_level*, %struct.cp_binding_level** %7, align 8
  store %struct.cp_binding_level* %60, %struct.cp_binding_level** @current_binding_level, align 8
  br label %49

61:                                               ; preds = %49
  br label %64

62:                                               ; preds = %26
  %63 = call i32 (...) @popclass()
  br label %64

64:                                               ; preds = %62, %61
  %65 = load i64, i64* %4, align 8
  %66 = call i64 @TREE_CODE(i64 %65)
  %67 = load i64, i64* @NAMESPACE_DECL, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i64, i64* %4, align 8
  br label %74

71:                                               ; preds = %64
  %72 = load i64, i64* %4, align 8
  %73 = call i64 @TYPE_NAME(i64 %72)
  br label %74

74:                                               ; preds = %71, %69
  %75 = phi i64 [ %70, %69 ], [ %73, %71 ]
  %76 = call i64 @CP_DECL_CONTEXT(i64 %75)
  store i64 %76, i64* %4, align 8
  br label %22

77:                                               ; preds = %20, %22
  ret void
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @CLASS_TYPE_P(i64) #1

declare dso_local i32 @pop_namespace(...) #1

declare dso_local i32 @popclass(...) #1

declare dso_local i64 @CP_DECL_CONTEXT(i64) #1

declare dso_local i64 @TYPE_NAME(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
