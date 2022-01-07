; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_stmt.c_resolve_operand_name_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_stmt.c_resolve_operand_name_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [38 x i8] c"missing close brace for named operand\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"undefined named operand %qs\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i64)* @resolve_operand_name_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @resolve_operand_name_1(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i8* @strchr(i8* %16, i8 signext 93)
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %22 = load i8*, i8** %5, align 8
  %23 = call i8* @strchr(i8* %22, i8 signext 0)
  store i8* %23, i8** %4, align 8
  br label %125

24:                                               ; preds = %3
  %25 = load i8*, i8** %8, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = ptrtoint i8* %25 to i64
  %28 = ptrtoint i8* %26 to i64
  %29 = sub i64 %27, %28
  %30 = sub nsw i64 %29, 1
  store i64 %30, i64* %11, align 8
  store i32 0, i32* %9, align 4
  %31 = load i64, i64* %6, align 8
  store i64 %31, i64* %10, align 8
  br label %32

32:                                               ; preds = %60, %24
  %33 = load i64, i64* %10, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %65

35:                                               ; preds = %32
  %36 = load i64, i64* %10, align 8
  %37 = call i64 @TREE_PURPOSE(i64 %36)
  %38 = call i64 @TREE_PURPOSE(i64 %37)
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %12, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %35
  %42 = load i64, i64* %12, align 8
  %43 = call i8* @TREE_STRING_POINTER(i64 %42)
  store i8* %43, i8** %13, align 8
  %44 = load i8*, i8** %13, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = load i64, i64* %11, align 8
  %48 = call i64 @strncmp(i8* %44, i8* %46, i64 %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %41
  %51 = load i8*, i8** %13, align 8
  %52 = load i64, i64* %11, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %105

58:                                               ; preds = %50, %41
  br label %59

59:                                               ; preds = %58, %35
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %10, align 8
  %62 = call i64 @TREE_CHAIN(i64 %61)
  store i64 %62, i64* %10, align 8
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %32

65:                                               ; preds = %32
  %66 = load i64, i64* %7, align 8
  store i64 %66, i64* %10, align 8
  br label %67

67:                                               ; preds = %95, %65
  %68 = load i64, i64* %10, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %100

70:                                               ; preds = %67
  %71 = load i64, i64* %10, align 8
  %72 = call i64 @TREE_PURPOSE(i64 %71)
  %73 = call i64 @TREE_PURPOSE(i64 %72)
  store i64 %73, i64* %14, align 8
  %74 = load i64, i64* %14, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %94

76:                                               ; preds = %70
  %77 = load i64, i64* %14, align 8
  %78 = call i8* @TREE_STRING_POINTER(i64 %77)
  store i8* %78, i8** %15, align 8
  %79 = load i8*, i8** %15, align 8
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = load i64, i64* %11, align 8
  %83 = call i64 @strncmp(i8* %79, i8* %81, i64 %82)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %76
  %86 = load i8*, i8** %15, align 8
  %87 = load i64, i64* %11, align 8
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  br label %105

93:                                               ; preds = %85, %76
  br label %94

94:                                               ; preds = %93, %70
  br label %95

95:                                               ; preds = %94
  %96 = load i64, i64* %10, align 8
  %97 = call i64 @TREE_CHAIN(i64 %96)
  store i64 %97, i64* %10, align 8
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %67

100:                                              ; preds = %67
  %101 = load i8*, i8** %8, align 8
  store i8 0, i8* %101, align 1
  %102 = load i8*, i8** %5, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 1
  %104 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %103)
  store i32 0, i32* %9, align 4
  br label %105

105:                                              ; preds = %100, %92, %57
  %106 = load i8*, i8** %5, align 8
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @sprintf(i8* %106, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %107)
  %109 = load i8*, i8** %5, align 8
  %110 = call i8* @strchr(i8* %109, i8 signext 0)
  store i8* %110, i8** %5, align 8
  %111 = load i8*, i8** %5, align 8
  %112 = load i8*, i8** %8, align 8
  %113 = icmp ule i8* %111, %112
  %114 = zext i1 %113 to i32
  %115 = call i32 @gcc_assert(i32 %114)
  %116 = load i8*, i8** %5, align 8
  %117 = load i8*, i8** %8, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 1
  %119 = load i8*, i8** %8, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 1
  %121 = call i64 @strlen(i8* %120)
  %122 = add nsw i64 %121, 1
  %123 = call i32 @memmove(i8* %116, i8* %118, i64 %122)
  %124 = load i8*, i8** %5, align 8
  store i8* %124, i8** %4, align 8
  br label %125

125:                                              ; preds = %105, %20
  %126 = load i8*, i8** %4, align 8
  ret i8* %126
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i64 @TREE_PURPOSE(i64) #1

declare dso_local i8* @TREE_STRING_POINTER(i64) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
