; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_pushdecl_with_scope.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_pushdecl_with_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cp_binding_level = type { i64 }

@current_function_decl = common dso_local global i32 0, align 4
@TV_NAME_LOOKUP = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@sk_class = common dso_local global i64 0, align 8
@class_binding_level = common dso_local global %struct.cp_binding_level* null, align 8
@current_binding_level = common dso_local global %struct.cp_binding_level* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pushdecl_with_scope(i32 %0, %struct.cp_binding_level* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cp_binding_level*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cp_binding_level*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.cp_binding_level* %1, %struct.cp_binding_level** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @current_function_decl, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* @TV_NAME_LOOKUP, align 4
  %12 = call i32 @timevar_push(i32 %11)
  %13 = load i32, i32* @NULL_TREE, align 4
  store i32 %13, i32* @current_function_decl, align 4
  %14 = load %struct.cp_binding_level*, %struct.cp_binding_level** %6, align 8
  %15 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @sk_class, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.cp_binding_level*, %struct.cp_binding_level** @class_binding_level, align 8
  store %struct.cp_binding_level* %20, %struct.cp_binding_level** %8, align 8
  %21 = load %struct.cp_binding_level*, %struct.cp_binding_level** %6, align 8
  store %struct.cp_binding_level* %21, %struct.cp_binding_level** @class_binding_level, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @pushdecl_class_level(i32 %22)
  %24 = load %struct.cp_binding_level*, %struct.cp_binding_level** %8, align 8
  store %struct.cp_binding_level* %24, %struct.cp_binding_level** @class_binding_level, align 8
  br label %32

25:                                               ; preds = %3
  %26 = load %struct.cp_binding_level*, %struct.cp_binding_level** @current_binding_level, align 8
  store %struct.cp_binding_level* %26, %struct.cp_binding_level** %8, align 8
  %27 = load %struct.cp_binding_level*, %struct.cp_binding_level** %6, align 8
  store %struct.cp_binding_level* %27, %struct.cp_binding_level** @current_binding_level, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @pushdecl_maybe_friend(i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load %struct.cp_binding_level*, %struct.cp_binding_level** %8, align 8
  store %struct.cp_binding_level* %31, %struct.cp_binding_level** @current_binding_level, align 8
  br label %32

32:                                               ; preds = %25, %19
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* @current_function_decl, align 4
  %34 = load i32, i32* @TV_NAME_LOOKUP, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @POP_TIMEVAR_AND_RETURN(i32 %34, i32 %35)
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @timevar_push(i32) #1

declare dso_local i32 @pushdecl_class_level(i32) #1

declare dso_local i32 @pushdecl_maybe_friend(i32, i32) #1

declare dso_local i32 @POP_TIMEVAR_AND_RETURN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
