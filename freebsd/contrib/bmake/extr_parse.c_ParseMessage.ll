; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_parse.c_ParseMessage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_parse.c_ParseMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PARSE_INFO = common dso_local global i32 0, align 4
@PARSE_WARNING = common dso_local global i32 0, align 4
@PARSE_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"invalid syntax: \22.%s\22\00", align 1
@FALSE = common dso_local global i32 0, align 4
@VAR_CMD = common dso_local global i32 0, align 4
@VARF_WANTRES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ParseMessage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseMessage(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  switch i32 %7, label %14 [
    i32 105, label %8
    i32 119, label %10
    i32 101, label %12
  ]

8:                                                ; preds = %1
  %9 = load i32, i32* @PARSE_INFO, align 4
  store i32 %9, i32* %4, align 4
  br label %19

10:                                               ; preds = %1
  %11 = load i32, i32* @PARSE_WARNING, align 4
  store i32 %11, i32* %4, align 4
  br label %19

12:                                               ; preds = %1
  %13 = load i32, i32* @PARSE_FATAL, align 4
  store i32 %13, i32* %4, align 4
  br label %19

14:                                               ; preds = %1
  %15 = load i32, i32* @PARSE_WARNING, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @Parse_Error(i32 %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %2, align 4
  br label %61

19:                                               ; preds = %12, %10, %8
  br label %20

20:                                               ; preds = %25, %19
  %21 = load i8*, i8** %3, align 8
  %22 = load i8, i8* %21, align 1
  %23 = call i64 @isalpha(i8 zeroext %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i8*, i8** %3, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %3, align 8
  br label %20

28:                                               ; preds = %20
  %29 = load i8*, i8** %3, align 8
  %30 = load i8, i8* %29, align 1
  %31 = call i64 @isspace(i8 zeroext %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %2, align 4
  br label %61

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %41, %35
  %37 = load i8*, i8** %3, align 8
  %38 = load i8, i8* %37, align 1
  %39 = call i64 @isspace(i8 zeroext %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i8*, i8** %3, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %3, align 8
  br label %36

44:                                               ; preds = %36
  %45 = load i8*, i8** %3, align 8
  %46 = load i32, i32* @VAR_CMD, align 4
  %47 = load i32, i32* @VARF_WANTRES, align 4
  %48 = call i8* @Var_Subst(i32* null, i8* %45, i32 %46, i32 %47)
  store i8* %48, i8** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load i8*, i8** %3, align 8
  %51 = call i32 @Parse_Error(i32 %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 @free(i8* %52)
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @PARSE_FATAL, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %44
  %58 = call i32 @exit(i32 1) #3
  unreachable

59:                                               ; preds = %44
  %60 = load i32, i32* @TRUE, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %33, %14
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @Parse_Error(i32, i8*, i8*) #1

declare dso_local i64 @isalpha(i8 zeroext) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i8* @Var_Subst(i32*, i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
