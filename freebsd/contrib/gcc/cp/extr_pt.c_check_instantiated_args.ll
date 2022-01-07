; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_check_instantiated_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_check_instantiated_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tf_error = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%qT is/uses anonymous type\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"template argument for %qD uses local type %qT\00", align 1
@NULL_TREE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"%qT is a variably modified type\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"integral expression %qE is not constant\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"  trying to instantiate %qD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @check_instantiated_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_instantiated_args(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @DECL_NTPARMS(i8* %12)
  store i32 %13, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %88, %3
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %91

18:                                               ; preds = %14
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i8* @TREE_VEC_ELT(i8* %19, i32 %20)
  store i8* %21, i8** %10, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = call i64 @TYPE_P(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %64

25:                                               ; preds = %18
  %26 = load i8*, i8** %10, align 8
  %27 = call i8* @no_linkage_check(i8* %26, i32 0)
  store i8* %27, i8** %11, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %48

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @tf_error, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = load i8*, i8** %11, align 8
  %37 = call i64 @TYPE_ANONYMOUS_P(i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i8*, i8** %10, align 8
  %41 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %40)
  br label %46

42:                                               ; preds = %35
  %43 = load i8*, i8** %4, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %43, i8* %44)
  br label %46

46:                                               ; preds = %42, %39
  br label %47

47:                                               ; preds = %46, %30
  store i32 1, i32* %9, align 4
  br label %63

48:                                               ; preds = %25
  %49 = load i8*, i8** %10, align 8
  %50 = load i32, i32* @NULL_TREE, align 4
  %51 = call i64 @variably_modified_type_p(i8* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @tf_error, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i8*, i8** %10, align 8
  %60 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %58, %53
  store i32 1, i32* %9, align 4
  br label %62

62:                                               ; preds = %61, %48
  br label %63

63:                                               ; preds = %62, %47
  br label %87

64:                                               ; preds = %18
  %65 = load i8*, i8** %10, align 8
  %66 = call i64 @TREE_TYPE(i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %64
  %69 = load i8*, i8** %10, align 8
  %70 = call i64 @TREE_TYPE(i8* %69)
  %71 = call i64 @INTEGRAL_OR_ENUMERATION_TYPE_P(i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %68
  %74 = load i8*, i8** %10, align 8
  %75 = call i32 @TREE_CONSTANT(i8* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @tf_error, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i8*, i8** %10, align 8
  %84 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* %83)
  br label %85

85:                                               ; preds = %82, %77
  store i32 1, i32* %9, align 4
  br label %86

86:                                               ; preds = %85, %73, %68, %64
  br label %87

87:                                               ; preds = %86, %63
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  br label %14

91:                                               ; preds = %14
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %91
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @tf_error, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i8*, i8** %4, align 8
  %101 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %100)
  br label %102

102:                                              ; preds = %99, %94, %91
  %103 = load i32, i32* %9, align 4
  ret i32 %103
}

declare dso_local i32 @DECL_NTPARMS(i8*) #1

declare dso_local i8* @TREE_VEC_ELT(i8*, i32) #1

declare dso_local i64 @TYPE_P(i8*) #1

declare dso_local i8* @no_linkage_check(i8*, i32) #1

declare dso_local i64 @TYPE_ANONYMOUS_P(i8*) #1

declare dso_local i32 @error(i8*, i8*, ...) #1

declare dso_local i64 @variably_modified_type_p(i8*, i32) #1

declare dso_local i64 @TREE_TYPE(i8*) #1

declare dso_local i64 @INTEGRAL_OR_ENUMERATION_TYPE_P(i64) #1

declare dso_local i32 @TREE_CONSTANT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
