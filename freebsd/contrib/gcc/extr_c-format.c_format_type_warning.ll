; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-format.c_format_type_warning.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-format.c_format_type_warning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i64, i32)* }

@TYPE_DECL = common dso_local global i64 0, align 8
@lang_hooks = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@OPT_Wformat = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"%s should have type %<%s%s%>, but argument %d has type %qT\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"format %q.*s expects type %<%s%s%>, but argument %d has type %qT\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"%s should have type %<%T%s%>, but argument %d has type %qT\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"format %q.*s expects type %<%T%s%>, but argument %d has type %qT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i8*, i32, i8*, i8*, i32)* @format_type_warning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_type_warning(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i8* %6, i32 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32 %7, i32* %16, align 4
  %18 = load i8*, i8** %14, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %46

20:                                               ; preds = %8
  %21 = load i8*, i8** %15, align 8
  %22 = call i64 @TYPE_NAME(i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %20
  %25 = load i8*, i8** %15, align 8
  %26 = call i64 @TYPE_NAME(i8* %25)
  %27 = call i64 @TREE_CODE(i64 %26)
  %28 = load i64, i64* @TYPE_DECL, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %24
  %31 = load i8*, i8** %15, align 8
  %32 = call i64 @TYPE_NAME(i8* %31)
  %33 = call i64 @DECL_NAME(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = load i8*, i8** %14, align 8
  %37 = load i32 (i64, i32)*, i32 (i64, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lang_hooks, i32 0, i32 0), align 8
  %38 = load i8*, i8** %15, align 8
  %39 = call i64 @TYPE_NAME(i8* %38)
  %40 = call i32 %37(i64 %39, i32 2)
  %41 = call i32 @strcmp(i8* %36, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %35
  %44 = load i8*, i8** %15, align 8
  %45 = call i8* @TYPE_MAIN_VARIANT(i8* %44)
  store i8* %45, i8** %15, align 8
  br label %46

46:                                               ; preds = %43, %35, %30, %24, %20, %8
  %47 = load i32, i32* %13, align 4
  %48 = add nsw i32 %47, 2
  %49 = call i64 @alloca(i32 %48)
  %50 = inttoptr i64 %49 to i8*
  store i8* %50, i8** %17, align 8
  %51 = load i32, i32* %13, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load i8*, i8** %17, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  store i8 0, i8* %55, align 1
  br label %80

56:                                               ; preds = %46
  %57 = call i64 (...) @c_dialect_cxx()
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load i8*, i8** %17, align 8
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @memset(i8* %60, i8 signext 42, i32 %61)
  %63 = load i8*, i8** %17, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  store i8 0, i8* %66, align 1
  br label %79

67:                                               ; preds = %56
  %68 = load i8*, i8** %17, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  store i8 32, i8* %69, align 1
  %70 = load i8*, i8** %17, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @memset(i8* %71, i8 signext 42, i32 %72)
  %74 = load i8*, i8** %17, align 8
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %74, i64 %77
  store i8 0, i8* %78, align 1
  br label %79

79:                                               ; preds = %67, %59
  br label %80

80:                                               ; preds = %79, %53
  %81 = load i8*, i8** %14, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %104

83:                                               ; preds = %80
  %84 = load i8*, i8** %9, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %94

86:                                               ; preds = %83
  %87 = load i32, i32* @OPT_Wformat, align 4
  %88 = load i8*, i8** %9, align 8
  %89 = load i8*, i8** %14, align 8
  %90 = load i8*, i8** %17, align 8
  %91 = load i32, i32* %16, align 4
  %92 = load i8*, i8** %15, align 8
  %93 = call i32 (i32, i8*, ...) @warning(i32 %87, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i8* %88, i8* %89, i8* %90, i32 %91, i8* %92)
  br label %103

94:                                               ; preds = %83
  %95 = load i32, i32* @OPT_Wformat, align 4
  %96 = load i32, i32* %11, align 4
  %97 = load i8*, i8** %10, align 8
  %98 = load i8*, i8** %14, align 8
  %99 = load i8*, i8** %17, align 8
  %100 = load i32, i32* %16, align 4
  %101 = load i8*, i8** %15, align 8
  %102 = call i32 (i32, i8*, ...) @warning(i32 %95, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %96, i8* %97, i8* %98, i8* %99, i32 %100, i8* %101)
  br label %103

103:                                              ; preds = %94, %86
  br label %125

104:                                              ; preds = %80
  %105 = load i8*, i8** %9, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %115

107:                                              ; preds = %104
  %108 = load i32, i32* @OPT_Wformat, align 4
  %109 = load i8*, i8** %9, align 8
  %110 = load i8*, i8** %12, align 8
  %111 = load i8*, i8** %17, align 8
  %112 = load i32, i32* %16, align 4
  %113 = load i8*, i8** %15, align 8
  %114 = call i32 (i32, i8*, ...) @warning(i32 %108, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i8* %109, i8* %110, i8* %111, i32 %112, i8* %113)
  br label %124

115:                                              ; preds = %104
  %116 = load i32, i32* @OPT_Wformat, align 4
  %117 = load i32, i32* %11, align 4
  %118 = load i8*, i8** %10, align 8
  %119 = load i8*, i8** %12, align 8
  %120 = load i8*, i8** %17, align 8
  %121 = load i32, i32* %16, align 4
  %122 = load i8*, i8** %15, align 8
  %123 = call i32 (i32, i8*, ...) @warning(i32 %116, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i32 %117, i8* %118, i8* %119, i8* %120, i32 %121, i8* %122)
  br label %124

124:                                              ; preds = %115, %107
  br label %125

125:                                              ; preds = %124, %103
  ret void
}

declare dso_local i64 @TYPE_NAME(i8*) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @DECL_NAME(i64) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i8* @TYPE_MAIN_VARIANT(i8*) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local i64 @c_dialect_cxx(...) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @warning(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
