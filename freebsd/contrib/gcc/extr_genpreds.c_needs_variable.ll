; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genpreds.c_needs_variable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genpreds.c_needs_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"op\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@VOIDmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @needs_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @needs_variable(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @GET_CODE(i32 %8)
  switch i32 %9, label %104 [
    i32 133, label %10
    i32 134, label %18
    i32 132, label %18
    i32 128, label %26
    i32 131, label %31
    i32 130, label %37
    i32 129, label %53
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @XEXP(i32 %11, i32 2)
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @needs_variable(i32 %12, i8* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %106

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %2, %2, %17
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @XEXP(i32 %19, i32 1)
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @needs_variable(i32 %20, i8* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %106

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %2, %25
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @XEXP(i32 %27, i32 0)
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @needs_variable(i32 %28, i8* %29)
  store i32 %30, i32* %3, align 4
  br label %106

31:                                               ; preds = %2
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %3, align 4
  br label %106

37:                                               ; preds = %2
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %106

42:                                               ; preds = %37
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @GET_MODE(i32 %47)
  %49 = load i32, i32* @VOIDmode, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 1, i32* %3, align 4
  br label %106

52:                                               ; preds = %46, %42
  store i32 0, i32* %3, align 4
  br label %106

53:                                               ; preds = %2
  %54 = load i32, i32* %4, align 4
  %55 = call i8* @XSTR(i32 %54, i32 0)
  store i8* %55, i8** %6, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = call i8* @strstr(i8* %56, i8* %57)
  store i8* %58, i8** %7, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %106

62:                                               ; preds = %53
  %63 = load i8*, i8** %7, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = icmp ne i8* %63, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %62
  %67 = load i8*, i8** %7, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 -1
  %69 = load i8, i8* %68, align 1
  %70 = call i32 @ISALNUM(i8 signext %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %66
  %73 = load i8*, i8** %7, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 -1
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 95
  br i1 %77, label %78, label %79

78:                                               ; preds = %72, %66
  store i32 0, i32* %3, align 4
  br label %106

79:                                               ; preds = %72, %62
  %80 = load i8*, i8** %5, align 8
  %81 = call i32 @strlen(i8* %80)
  %82 = load i8*, i8** %7, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8* %84, i8** %7, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %79
  %91 = load i8*, i8** %7, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 95
  br label %96

96:                                               ; preds = %90, %79
  %97 = phi i1 [ true, %79 ], [ %95, %90 ]
  %98 = zext i1 %97 to i32
  %99 = trunc i32 %98 to i8
  %100 = call i32 @ISALNUM(i8 signext %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  store i32 0, i32* %3, align 4
  br label %106

103:                                              ; preds = %96
  store i32 1, i32* %3, align 4
  br label %106

104:                                              ; preds = %2
  %105 = call i32 (...) @gcc_unreachable()
  br label %106

106:                                              ; preds = %16, %24, %26, %31, %41, %51, %52, %61, %78, %102, %103, %104
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i8* @XSTR(i32, i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @ISALNUM(i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
