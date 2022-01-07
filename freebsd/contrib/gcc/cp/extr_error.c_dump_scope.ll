; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_error.c_dump_scope.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_error.c_dump_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TFF_RETURN_TYPE = common dso_local global i32 0, align 4
@TFF_SCOPE = common dso_local global i32 0, align 4
@TFF_CHASE_TYPEDEF = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i64 0, align 8
@NAMESPACE_DECL = common dso_local global i64 0, align 8
@global_namespace = common dso_local global i64 0, align 8
@cxx_pp = common dso_local global i32 0, align 4
@FUNCTION_DECL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @dump_scope to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_scope(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @TFF_RETURN_TYPE, align 4
  %7 = xor i32 %6, -1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @TFF_SCOPE, align 4
  %10 = load i32, i32* @TFF_CHASE_TYPEDEF, align 4
  %11 = or i32 %9, %10
  %12 = and i32 %8, %11
  %13 = and i32 %7, %12
  store i32 %13, i32* %5, align 4
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @NULL_TREE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %62

18:                                               ; preds = %2
  %19 = load i64, i64* %3, align 8
  %20 = call i64 @TREE_CODE(i64 %19)
  %21 = load i64, i64* @NAMESPACE_DECL, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* @global_namespace, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i64, i64* %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @dump_decl(i64 %28, i32 %29)
  %31 = load i32, i32* @cxx_pp, align 4
  %32 = call i32 @pp_cxx_colon_colon(i32 %31)
  br label %33

33:                                               ; preds = %27, %23
  br label %62

34:                                               ; preds = %18
  %35 = load i64, i64* %3, align 8
  %36 = call i64 @AGGREGATE_TYPE_P(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i64, i64* %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @dump_type(i64 %39, i32 %40)
  %42 = load i32, i32* @cxx_pp, align 4
  %43 = call i32 @pp_cxx_colon_colon(i32 %42)
  br label %61

44:                                               ; preds = %34
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @TFF_SCOPE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %44
  %50 = load i64, i64* %3, align 8
  %51 = call i64 @TREE_CODE(i64 %50)
  %52 = load i64, i64* @FUNCTION_DECL, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load i64, i64* %3, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @dump_function_decl(i64 %55, i32 %56)
  %58 = load i32, i32* @cxx_pp, align 4
  %59 = call i32 @pp_cxx_colon_colon(i32 %58)
  br label %60

60:                                               ; preds = %54, %49, %44
  br label %61

61:                                               ; preds = %60, %38
  br label %62

62:                                               ; preds = %17, %61, %33
  ret void
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @dump_decl(i64, i32) #1

declare dso_local i32 @pp_cxx_colon_colon(i32) #1

declare dso_local i64 @AGGREGATE_TYPE_P(i64) #1

declare dso_local i32 @dump_type(i64, i32) #1

declare dso_local i32 @dump_function_decl(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
