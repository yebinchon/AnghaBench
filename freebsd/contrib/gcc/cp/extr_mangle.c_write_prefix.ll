; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_mangle.c_write_prefix.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_mangle.c_write_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@global_namespace = common dso_local global i32* null, align 8
@FUNCTION_DECL = common dso_local global i64 0, align 8
@TEMPLATE_TYPE_PARM = common dso_local global i64 0, align 8
@G = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @write_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_prefix(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  store i32* null, i32** %4, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @MANGLE_TRACE_TREE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %5)
  %7 = load i32*, i32** %2, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32*, i32** %2, align 8
  %11 = load i32*, i32** @global_namespace, align 8
  %12 = icmp eq i32* %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %1
  br label %81

14:                                               ; preds = %9
  %15 = load i32*, i32** %2, align 8
  %16 = call i64 @find_substitution(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %81

19:                                               ; preds = %14
  %20 = load i32*, i32** %2, align 8
  %21 = call i64 @DECL_P(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load i32*, i32** %2, align 8
  %25 = call i64 @TREE_CODE(i32* %24)
  %26 = load i64, i64* @FUNCTION_DECL, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %81

29:                                               ; preds = %23
  %30 = load i32*, i32** %2, align 8
  store i32* %30, i32** %3, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @decl_is_template_id(i32* %31, i32** %4)
  br label %43

33:                                               ; preds = %19
  %34 = load i32*, i32** %2, align 8
  %35 = call i32* @TYPE_NAME(i32* %34)
  store i32* %35, i32** %3, align 8
  %36 = load i32*, i32** %2, align 8
  %37 = call i64 @CLASSTYPE_TEMPLATE_ID_P(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32*, i32** %2, align 8
  %41 = call i32* @TYPE_TEMPLATE_INFO(i32* %40)
  store i32* %41, i32** %4, align 8
  br label %42

42:                                               ; preds = %39, %33
  br label %43

43:                                               ; preds = %42, %29
  %44 = load i32*, i32** %2, align 8
  %45 = call i64 @TREE_CODE(i32* %44)
  %46 = load i64, i64* @TEMPLATE_TYPE_PARM, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = call i64 @abi_version_at_least(i32 2)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @G, i32 0, i32 0), align 4
  br label %52

52:                                               ; preds = %51, %48, %43
  %53 = load i32*, i32** %2, align 8
  %54 = call i64 @TREE_CODE(i32* %53)
  %55 = load i64, i64* @TEMPLATE_TYPE_PARM, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = call i64 @abi_version_at_least(i32 2)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32*, i32** %2, align 8
  %62 = call i32 @write_template_param(i32* %61)
  br label %78

63:                                               ; preds = %57, %52
  %64 = load i32*, i32** %4, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @write_template_prefix(i32* %67)
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @TI_ARGS(i32* %69)
  %71 = call i32 @write_template_args(i32 %70)
  br label %77

72:                                               ; preds = %63
  %73 = load i32*, i32** %3, align 8
  %74 = call i32* @CP_DECL_CONTEXT(i32* %73)
  call void @write_prefix(i32* %74)
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @write_unqualified_name(i32* %75)
  br label %77

77:                                               ; preds = %72, %66
  br label %78

78:                                               ; preds = %77, %60
  %79 = load i32*, i32** %2, align 8
  %80 = call i32 @add_substitution(i32* %79)
  br label %81

81:                                               ; preds = %78, %28, %18, %13
  ret void
}

declare dso_local i32 @MANGLE_TRACE_TREE(i8*, i32*) #1

declare dso_local i64 @find_substitution(i32*) #1

declare dso_local i64 @DECL_P(i32*) #1

declare dso_local i64 @TREE_CODE(i32*) #1

declare dso_local i32 @decl_is_template_id(i32*, i32**) #1

declare dso_local i32* @TYPE_NAME(i32*) #1

declare dso_local i64 @CLASSTYPE_TEMPLATE_ID_P(i32*) #1

declare dso_local i32* @TYPE_TEMPLATE_INFO(i32*) #1

declare dso_local i64 @abi_version_at_least(i32) #1

declare dso_local i32 @write_template_param(i32*) #1

declare dso_local i32 @write_template_prefix(i32*) #1

declare dso_local i32 @write_template_args(i32) #1

declare dso_local i32 @TI_ARGS(i32*) #1

declare dso_local i32* @CP_DECL_CONTEXT(i32*) #1

declare dso_local i32 @write_unqualified_name(i32*) #1

declare dso_local i32 @add_substitution(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
