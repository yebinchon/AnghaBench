; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_lookup_using_namespace.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_lookup_using_namespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scope_binding = type { i64 }

@TV_NAME_LOOKUP = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.scope_binding*, i64, i64, i32)* @lookup_using_namespace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookup_using_namespace(i64 %0, %struct.scope_binding* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.scope_binding*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  store i64 %0, i64* %7, align 8
  store %struct.scope_binding* %1, %struct.scope_binding** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* @TV_NAME_LOOKUP, align 4
  %16 = call i32 @timevar_push(i32 %15)
  %17 = load i64, i64* %9, align 8
  store i64 %17, i64* %12, align 8
  br label %18

18:                                               ; preds = %43, %5
  %19 = load i64, i64* %12, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %18
  %22 = load i64, i64* %12, align 8
  %23 = call i64 @TREE_VALUE(i64 %22)
  %24 = load i64, i64* %10, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %21
  %27 = load i64, i64* %12, align 8
  %28 = call i32 @TREE_PURPOSE(i64 %27)
  %29 = call i64 @ORIGINAL_NAMESPACE(i32 %28)
  store i64 %29, i64* %13, align 8
  %30 = load i64, i64* %13, align 8
  %31 = call i32 @NAMESPACE_LEVEL(i64 %30)
  %32 = load i64, i64* %7, align 8
  %33 = call i32* @cxx_scope_find_binding_for_name(i32 %31, i64 %32)
  store i32* %33, i32** %14, align 8
  %34 = load i32*, i32** %14, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %26
  %37 = load %struct.scope_binding*, %struct.scope_binding** %8, align 8
  %38 = load i32*, i32** %14, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @ambiguous_decl(%struct.scope_binding* %37, i32* %38, i32 %39)
  br label %41

41:                                               ; preds = %36, %26
  br label %42

42:                                               ; preds = %41, %21
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %12, align 8
  %45 = call i64 @TREE_CHAIN(i64 %44)
  store i64 %45, i64* %12, align 8
  br label %18

46:                                               ; preds = %18
  %47 = load i32, i32* @TV_NAME_LOOKUP, align 4
  %48 = load %struct.scope_binding*, %struct.scope_binding** %8, align 8
  %49 = getelementptr inbounds %struct.scope_binding, %struct.scope_binding* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @error_mark_node, align 8
  %52 = icmp ne i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @POP_TIMEVAR_AND_RETURN(i32 %47, i32 %53)
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @timevar_push(i32) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @ORIGINAL_NAMESPACE(i32) #1

declare dso_local i32 @TREE_PURPOSE(i64) #1

declare dso_local i32* @cxx_scope_find_binding_for_name(i32, i64) #1

declare dso_local i32 @NAMESPACE_LEVEL(i64) #1

declare dso_local i32 @ambiguous_decl(%struct.scope_binding*, i32*, i32) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @POP_TIMEVAR_AND_RETURN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
