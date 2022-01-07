; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_push_inner_scope_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_push_inner_scope_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cp_binding_level = type { i64, %struct.cp_binding_level* }

@NAMESPACE_DECL = common dso_local global i64 0, align 8
@current_binding_level = common dso_local global %struct.cp_binding_level* null, align 8
@sk_template_parms = common dso_local global i64 0, align 8
@current_namespace = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @push_inner_scope_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @push_inner_scope_r(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cp_binding_level*, align 8
  %7 = alloca %struct.cp_binding_level*, align 8
  %8 = alloca %struct.cp_binding_level*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %21, label %12

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @TREE_CODE(i64 %13)
  %15 = load i64, i64* @NAMESPACE_DECL, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @CLASS_TYPE_P(i64 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17, %2
  br label %83

22:                                               ; preds = %17, %12
  %23 = load i64, i64* %4, align 8
  %24 = call i64 @TREE_CODE(i64 %23)
  %25 = load i64, i64* @NAMESPACE_DECL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i64, i64* %4, align 8
  br label %32

29:                                               ; preds = %22
  %30 = load i64, i64* %4, align 8
  %31 = call i64 @TYPE_NAME(i64 %30)
  br label %32

32:                                               ; preds = %29, %27
  %33 = phi i64 [ %28, %27 ], [ %31, %29 ]
  %34 = call i64 @CP_DECL_CONTEXT(i64 %33)
  store i64 %34, i64* %5, align 8
  %35 = load i64, i64* %3, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i64, i64* %3, align 8
  %40 = load i64, i64* %5, align 8
  call void @push_inner_scope_r(i64 %39, i64 %40)
  br label %41

41:                                               ; preds = %38, %32
  %42 = load i64, i64* %4, align 8
  %43 = call i64 @TREE_CODE(i64 %42)
  %44 = load i64, i64* @NAMESPACE_DECL, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %80

46:                                               ; preds = %41
  store %struct.cp_binding_level* null, %struct.cp_binding_level** %6, align 8
  br label %47

47:                                               ; preds = %53, %46
  %48 = load %struct.cp_binding_level*, %struct.cp_binding_level** @current_binding_level, align 8
  %49 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @sk_template_parms, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %47
  %54 = load %struct.cp_binding_level*, %struct.cp_binding_level** @current_binding_level, align 8
  store %struct.cp_binding_level* %54, %struct.cp_binding_level** %7, align 8
  %55 = load %struct.cp_binding_level*, %struct.cp_binding_level** %7, align 8
  %56 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %55, i32 0, i32 1
  %57 = load %struct.cp_binding_level*, %struct.cp_binding_level** %56, align 8
  store %struct.cp_binding_level* %57, %struct.cp_binding_level** @current_binding_level, align 8
  %58 = load %struct.cp_binding_level*, %struct.cp_binding_level** %6, align 8
  %59 = load %struct.cp_binding_level*, %struct.cp_binding_level** %7, align 8
  %60 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %59, i32 0, i32 1
  store %struct.cp_binding_level* %58, %struct.cp_binding_level** %60, align 8
  %61 = load %struct.cp_binding_level*, %struct.cp_binding_level** %7, align 8
  store %struct.cp_binding_level* %61, %struct.cp_binding_level** %6, align 8
  br label %47

62:                                               ; preds = %47
  %63 = load i64, i64* %4, align 8
  %64 = call i32 @NAMESPACE_LEVEL(i64 %63)
  %65 = call i32 @resume_scope(i32 %64)
  %66 = load i64, i64* %4, align 8
  store i64 %66, i64* @current_namespace, align 8
  br label %67

67:                                               ; preds = %70, %62
  %68 = load %struct.cp_binding_level*, %struct.cp_binding_level** %6, align 8
  %69 = icmp ne %struct.cp_binding_level* %68, null
  br i1 %69, label %70, label %79

70:                                               ; preds = %67
  %71 = load %struct.cp_binding_level*, %struct.cp_binding_level** %6, align 8
  store %struct.cp_binding_level* %71, %struct.cp_binding_level** %8, align 8
  %72 = load %struct.cp_binding_level*, %struct.cp_binding_level** %8, align 8
  %73 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %72, i32 0, i32 1
  %74 = load %struct.cp_binding_level*, %struct.cp_binding_level** %73, align 8
  store %struct.cp_binding_level* %74, %struct.cp_binding_level** %6, align 8
  %75 = load %struct.cp_binding_level*, %struct.cp_binding_level** @current_binding_level, align 8
  %76 = load %struct.cp_binding_level*, %struct.cp_binding_level** %8, align 8
  %77 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %76, i32 0, i32 1
  store %struct.cp_binding_level* %75, %struct.cp_binding_level** %77, align 8
  %78 = load %struct.cp_binding_level*, %struct.cp_binding_level** %8, align 8
  store %struct.cp_binding_level* %78, %struct.cp_binding_level** @current_binding_level, align 8
  br label %67

79:                                               ; preds = %67
  br label %83

80:                                               ; preds = %41
  %81 = load i64, i64* %4, align 8
  %82 = call i32 @pushclass(i64 %81)
  br label %83

83:                                               ; preds = %21, %80, %79
  ret void
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @CLASS_TYPE_P(i64) #1

declare dso_local i64 @CP_DECL_CONTEXT(i64) #1

declare dso_local i64 @TYPE_NAME(i64) #1

declare dso_local i32 @resume_scope(i32) #1

declare dso_local i32 @NAMESPACE_LEVEL(i64) #1

declare dso_local i32 @pushclass(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
