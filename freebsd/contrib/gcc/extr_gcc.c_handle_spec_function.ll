; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcc.c_handle_spec_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcc.c_handle_spec_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@processing_spec_function = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"malformed spec function name\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"no arguments for spec function\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"malformed spec function arguments\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @handle_spec_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @handle_spec_function(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i32, i32* @processing_spec_function, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @processing_spec_function, align 4
  %10 = load i8*, i8** %2, align 8
  store i8* %10, i8** %5, align 8
  br label %11

11:                                               ; preds = %40, %1
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %43

16:                                               ; preds = %11
  %17 = load i8*, i8** %5, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 40
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %43

22:                                               ; preds = %16
  %23 = load i8*, i8** %5, align 8
  %24 = load i8, i8* %23, align 1
  %25 = call i32 @ISALNUM(i8 signext %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %22
  %28 = load i8*, i8** %5, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 45
  br i1 %31, label %39, label %32

32:                                               ; preds = %27
  %33 = load i8*, i8** %5, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 95
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = call i32 @fatal(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %32, %27, %22
  br label %40

40:                                               ; preds = %39
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %5, align 8
  br label %11

43:                                               ; preds = %21, %11
  %44 = load i8*, i8** %5, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 40
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = call i32 @fatal(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %43
  %51 = load i8*, i8** %2, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = load i8*, i8** %2, align 8
  %54 = ptrtoint i8* %52 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  %57 = trunc i64 %56 to i32
  %58 = call i8* @save_string(i8* %51, i32 %57)
  store i8* %58, i8** %3, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %5, align 8
  store i8* %60, i8** %2, align 8
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %88, %50
  %62 = load i8*, i8** %5, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %91

66:                                               ; preds = %61
  %67 = load i8*, i8** %5, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 41
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load i32, i32* %7, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  br label %91

75:                                               ; preds = %71
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %7, align 4
  br label %87

78:                                               ; preds = %66
  %79 = load i8*, i8** %5, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 40
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %83, %78
  br label %87

87:                                               ; preds = %86, %75
  br label %88

88:                                               ; preds = %87
  %89 = load i8*, i8** %5, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %5, align 8
  br label %61

91:                                               ; preds = %74, %61
  %92 = load i8*, i8** %5, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 41
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = call i32 @fatal(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %91
  %99 = load i8*, i8** %2, align 8
  %100 = load i8*, i8** %5, align 8
  %101 = load i8*, i8** %2, align 8
  %102 = ptrtoint i8* %100 to i64
  %103 = ptrtoint i8* %101 to i64
  %104 = sub i64 %102, %103
  %105 = trunc i64 %104 to i32
  %106 = call i8* @save_string(i8* %99, i32 %105)
  store i8* %106, i8** %4, align 8
  %107 = load i8*, i8** %5, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %5, align 8
  store i8* %108, i8** %2, align 8
  %109 = load i8*, i8** %3, align 8
  %110 = load i8*, i8** %4, align 8
  %111 = call i8* @eval_spec_function(i8* %109, i8* %110)
  store i8* %111, i8** %6, align 8
  %112 = load i8*, i8** %6, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %119

114:                                              ; preds = %98
  %115 = load i8*, i8** %6, align 8
  %116 = call i64 @do_spec_1(i8* %115, i32 0, i32* null)
  %117 = icmp slt i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  store i8* null, i8** %2, align 8
  br label %119

119:                                              ; preds = %118, %114, %98
  %120 = load i8*, i8** %3, align 8
  %121 = call i32 @free(i8* %120)
  %122 = load i8*, i8** %4, align 8
  %123 = call i32 @free(i8* %122)
  %124 = load i32, i32* @processing_spec_function, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* @processing_spec_function, align 4
  %126 = load i8*, i8** %2, align 8
  ret i8* %126
}

declare dso_local i32 @ISALNUM(i8 signext) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i8* @save_string(i8*, i32) #1

declare dso_local i8* @eval_spec_function(i8*, i8*) #1

declare dso_local i64 @do_spec_1(i8*, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
