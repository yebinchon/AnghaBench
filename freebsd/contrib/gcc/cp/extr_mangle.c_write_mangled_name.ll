; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_mangle.c_write_mangled_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_mangle.c_write_mangled_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"mangled-name\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"_Z\00", align 1
@G = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@VAR_DECL = common dso_local global i64 0, align 8
@global_namespace = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c" *INTERNAL* \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @write_mangled_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_mangled_name(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @MANGLE_TRACE_TREE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @DECL_EXTERN_C_FUNCTION_P(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %34

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @DECL_OVERLOADED_OPERATOR_P(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %34, label %14

14:                                               ; preds = %10
  br label %15

15:                                               ; preds = %58, %14
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @DECL_NAME(i32 %19)
  %21 = call i8* @IDENTIFIER_POINTER(i32 %20)
  %22 = call i32 @write_string(i8* %21)
  br label %33

23:                                               ; preds = %15
  %24 = call i64 @abi_version_at_least(i32 2)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 @write_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %29

28:                                               ; preds = %23
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @G, i32 0, i32 0), align 4
  br label %29

29:                                               ; preds = %28, %26
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @DECL_NAME(i32 %30)
  %32 = call i32 @write_source_name(i32 %31)
  br label %33

33:                                               ; preds = %29, %18
  br label %80

34:                                               ; preds = %10, %2
  %35 = load i32, i32* %3, align 4
  %36 = call i64 @TREE_CODE(i32 %35)
  %37 = load i64, i64* @VAR_DECL, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %60

39:                                               ; preds = %34
  %40 = load i32, i32* %3, align 4
  %41 = call i64 @DECL_EXTERNAL_LINKAGE_P(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %39
  %44 = load i32, i32* %3, align 4
  %45 = call i64 @CP_DECL_CONTEXT(i32 %44)
  %46 = load i64, i64* @global_namespace, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %3, align 4
  %50 = call i64 @DECL_EXTERN_C_P(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %48, %43
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = call i64 @abi_version_at_least(i32 2)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55, %52
  br label %15

59:                                               ; preds = %55
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @G, i32 0, i32 0), align 4
  br label %61

60:                                               ; preds = %48, %39, %34
  br label %61

61:                                               ; preds = %60, %59
  %62 = call i32 @write_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @write_encoding(i32 %63)
  %65 = load i32, i32* %3, align 4
  %66 = call i64 @DECL_LANG_SPECIFIC(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %61
  %69 = load i32, i32* %3, align 4
  %70 = call i64 @DECL_MAYBE_IN_CHARGE_DESTRUCTOR_P(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %3, align 4
  %74 = call i64 @DECL_MAYBE_IN_CHARGE_CONSTRUCTOR_P(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %72, %68
  %77 = call i32 @write_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %72, %61
  br label %79

79:                                               ; preds = %78
  br label %80

80:                                               ; preds = %79, %33
  ret void
}

declare dso_local i32 @MANGLE_TRACE_TREE(i8*, i32) #1

declare dso_local i64 @DECL_EXTERN_C_FUNCTION_P(i32) #1

declare dso_local i32 @DECL_OVERLOADED_OPERATOR_P(i32) #1

declare dso_local i32 @write_string(i8*) #1

declare dso_local i8* @IDENTIFIER_POINTER(i32) #1

declare dso_local i32 @DECL_NAME(i32) #1

declare dso_local i64 @abi_version_at_least(i32) #1

declare dso_local i32 @write_source_name(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @DECL_EXTERNAL_LINKAGE_P(i32) #1

declare dso_local i64 @CP_DECL_CONTEXT(i32) #1

declare dso_local i64 @DECL_EXTERN_C_P(i32) #1

declare dso_local i32 @write_encoding(i32) #1

declare dso_local i64 @DECL_LANG_SPECIFIC(i32) #1

declare dso_local i64 @DECL_MAYBE_IN_CHARGE_DESTRUCTOR_P(i32) #1

declare dso_local i64 @DECL_MAYBE_IN_CHARGE_CONSTRUCTOR_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
