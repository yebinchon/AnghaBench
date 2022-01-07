; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_method.c_synthesize_exception_spec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_method.c_synthesize_exception_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@empty_except_spec = common dso_local global i64 0, align 8
@FIELD_DECL = common dso_local global i64 0, align 8
@ARRAY_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64 (i64, i8*)*, i8*)* @synthesize_exception_spec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @synthesize_exception_spec(i64 %0, i64 (i64, i8*)* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64 (i64, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 (i64, i8*)* %1, i64 (i64, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %17 = load i64, i64* @empty_except_spec, align 8
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %4, align 8
  %19 = call i64 @TYPE_FIELDS(i64 %18)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @TYPE_BINFO(i64 %20)
  store i64 %21, i64* %9, align 8
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %44, %3
  %23 = load i64, i64* %9, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load i64, i64* %10, align 8
  %26 = call i64 @BINFO_BASE_ITERATE(i64 %23, i32 %24, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %22
  %29 = load i64 (i64, i8*)*, i64 (i64, i8*)** %5, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call i64 @BINFO_TYPE(i64 %30)
  %32 = load i8*, i8** %6, align 8
  %33 = call i64 %29(i64 %31, i8* %32)
  store i64 %33, i64* %12, align 8
  %34 = load i64, i64* %12, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %28
  %37 = load i64, i64* %12, align 8
  %38 = call i64 @TREE_TYPE(i64 %37)
  %39 = call i64 @TYPE_RAISES_EXCEPTIONS(i64 %38)
  store i64 %39, i64* %13, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %13, align 8
  %42 = call i64 @merge_exception_specifiers(i64 %40, i64 %41)
  store i64 %42, i64* %7, align 8
  br label %43

43:                                               ; preds = %36, %28
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %11, align 4
  br label %22

47:                                               ; preds = %22
  br label %48

48:                                               ; preds = %92, %47
  %49 = load i64, i64* %8, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %95

51:                                               ; preds = %48
  %52 = load i64, i64* %8, align 8
  %53 = call i64 @TREE_TYPE(i64 %52)
  store i64 %53, i64* %14, align 8
  %54 = load i64, i64* %8, align 8
  %55 = call i64 @TREE_CODE(i64 %54)
  %56 = load i64, i64* @FIELD_DECL, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %51
  %59 = load i64, i64* %8, align 8
  %60 = call i64 @DECL_ARTIFICIAL(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58, %51
  br label %92

63:                                               ; preds = %58
  br label %64

64:                                               ; preds = %69, %63
  %65 = load i64, i64* %14, align 8
  %66 = call i64 @TREE_CODE(i64 %65)
  %67 = load i64, i64* @ARRAY_TYPE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i64, i64* %14, align 8
  %71 = call i64 @TREE_TYPE(i64 %70)
  store i64 %71, i64* %14, align 8
  br label %64

72:                                               ; preds = %64
  %73 = load i64, i64* %14, align 8
  %74 = call i32 @CLASS_TYPE_P(i64 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  br label %92

77:                                               ; preds = %72
  %78 = load i64 (i64, i8*)*, i64 (i64, i8*)** %5, align 8
  %79 = load i64, i64* %14, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = call i64 %78(i64 %79, i8* %80)
  store i64 %81, i64* %15, align 8
  %82 = load i64, i64* %15, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %77
  %85 = load i64, i64* %15, align 8
  %86 = call i64 @TREE_TYPE(i64 %85)
  %87 = call i64 @TYPE_RAISES_EXCEPTIONS(i64 %86)
  store i64 %87, i64* %16, align 8
  %88 = load i64, i64* %7, align 8
  %89 = load i64, i64* %16, align 8
  %90 = call i64 @merge_exception_specifiers(i64 %88, i64 %89)
  store i64 %90, i64* %7, align 8
  br label %91

91:                                               ; preds = %84, %77
  br label %92

92:                                               ; preds = %91, %76, %62
  %93 = load i64, i64* %8, align 8
  %94 = call i64 @TREE_CHAIN(i64 %93)
  store i64 %94, i64* %8, align 8
  br label %48

95:                                               ; preds = %48
  %96 = load i64, i64* %7, align 8
  ret i64 %96
}

declare dso_local i64 @TYPE_FIELDS(i64) #1

declare dso_local i64 @TYPE_BINFO(i64) #1

declare dso_local i64 @BINFO_BASE_ITERATE(i64, i32, i64) #1

declare dso_local i64 @BINFO_TYPE(i64) #1

declare dso_local i64 @TYPE_RAISES_EXCEPTIONS(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @merge_exception_specifiers(i64, i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @DECL_ARTIFICIAL(i64) #1

declare dso_local i32 @CLASS_TYPE_P(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
