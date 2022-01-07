; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-inline.c_initialize_inlined_parameters.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-inline.c_initialize_inlined_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 (i64, i64, i64, i32)* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i64 }

@NULL_TREE = common dso_local global i64 0, align 8
@lang_hooks = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@current_function_decl = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i64, i64, i64, i32)* @initialize_inlined_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialize_inlined_parameters(%struct.TYPE_8__* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load i64, i64* @NULL_TREE, align 8
  store i64 %17, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %18 = load i64, i64* %9, align 8
  %19 = call i64 @DECL_ARGUMENTS(i64 %18)
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %11, align 8
  store i64 %20, i64* %13, align 8
  %21 = load i64, i64* %7, align 8
  store i64 %21, i64* %12, align 8
  br label %22

22:                                               ; preds = %56, %5
  %23 = load i64, i64* %13, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %60

25:                                               ; preds = %22
  %26 = load i32, i32* %15, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %15, align 4
  %28 = load i64 (i64, i64, i64, i32)*, i64 (i64, i64, i64, i32)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %29 = load i64, i64* %13, align 8
  %30 = load i64, i64* %12, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i64, i64* %12, align 8
  %34 = call i64 @TREE_VALUE(i64 %33)
  br label %37

35:                                               ; preds = %25
  %36 = load i64, i64* @NULL_TREE, align 8
  br label %37

37:                                               ; preds = %35, %32
  %38 = phi i64 [ %34, %32 ], [ %36, %35 ]
  %39 = load i64, i64* %9, align 8
  %40 = load i32, i32* %15, align 4
  %41 = call i64 %28(i64 %29, i64 %38, i64 %39, i32 %40)
  store i64 %41, i64* %16, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %43 = load i64, i64* %13, align 8
  %44 = load i64, i64* %16, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @setup_one_parameter(%struct.TYPE_8__* %42, i64 %43, i64 %44, i64 %45, i32 %46, i64* %14)
  br label %48

48:                                               ; preds = %37
  %49 = load i64, i64* %12, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i64, i64* %12, align 8
  %53 = call i64 @TREE_CHAIN(i64 %52)
  br label %56

54:                                               ; preds = %48
  %55 = load i64, i64* %12, align 8
  br label %56

56:                                               ; preds = %54, %51
  %57 = phi i64 [ %53, %51 ], [ %55, %54 ]
  store i64 %57, i64* %12, align 8
  %58 = load i64, i64* %13, align 8
  %59 = call i64 @TREE_CHAIN(i64 %58)
  store i64 %59, i64* %13, align 8
  br label %22

60:                                               ; preds = %22
  %61 = load i64, i64* %9, align 8
  %62 = call %struct.TYPE_10__* @DECL_STRUCT_FUNCTION(i64 %61)
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %13, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* @current_function_decl, align 8
  %67 = icmp ne i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = sext i32 %68 to i64
  %70 = call i32 @gcc_assert(i64 %69)
  %71 = load i64, i64* %13, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %60
  %74 = load i64, i64* %8, align 8
  %75 = call i32 @gcc_assert(i64 %74)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %77 = load i64, i64* %13, align 8
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* %9, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @setup_one_parameter(%struct.TYPE_8__* %76, i64 %77, i64 %78, i64 %79, i32 %80, i64* %14)
  br label %82

82:                                               ; preds = %73, %60
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i64, i64* %14, align 8
  %87 = call i32 @declare_inline_vars(i32 %85, i64 %86)
  ret void
}

declare dso_local i64 @DECL_ARGUMENTS(i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i32 @setup_one_parameter(%struct.TYPE_8__*, i64, i64, i64, i32, i64*) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local %struct.TYPE_10__* @DECL_STRUCT_FUNCTION(i64) #1

declare dso_local i32 @gcc_assert(i64) #1

declare dso_local i32 @declare_inline_vars(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
