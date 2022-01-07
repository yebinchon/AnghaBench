; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_config.c_parse_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_config.c_parse_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lmodule = type { i32 }

@_POSIX2_LINE_MAX = common dso_local global i32 0, align 4
@TOK_EOF = common dso_local global i64 0, align 8
@token = common dso_local global i8 0, align 1
@TOK_EOL = common dso_local global i8 0, align 1
@TOK_STR = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [27 x i8] c"keyword expected after '.'\00", align 1
@strval = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"unknown keyword '%s'\00", align 1
@TOK_ASSIGN = common dso_local global i64 0, align 8
@TOK_QASSIGN = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"eol expected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lmodule*)* @parse_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_file(%struct.lmodule* %0) #0 {
  %2 = alloca %struct.lmodule*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store %struct.lmodule* %0, %struct.lmodule** %2, align 8
  %5 = load i32, i32* @_POSIX2_LINE_MAX, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %3, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %4, align 8
  br label %9

9:                                                ; preds = %82, %19, %1
  %10 = call i64 (...) @gettoken()
  %11 = load i64, i64* @TOK_EOF, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %83

13:                                               ; preds = %9
  %14 = load i8, i8* @token, align 1
  %15 = sext i8 %14 to i32
  %16 = load i8, i8* @TOK_EOL, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %9

20:                                               ; preds = %13
  %21 = load i8, i8* @token, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 37
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = call i64 (...) @gettoken()
  %26 = load %struct.lmodule*, %struct.lmodule** %2, align 8
  %27 = call i32 @parse_section(%struct.lmodule* %26)
  br label %74

28:                                               ; preds = %20
  %29 = load i8, i8* @token, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 46
  br i1 %31, label %32, label %49

32:                                               ; preds = %28
  %33 = call i64 (...) @gettoken()
  %34 = load i8, i8* @TOK_STR, align 1
  %35 = sext i8 %34 to i64
  %36 = icmp ne i64 %33, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = call i32 (i8*, ...) @report(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %32
  %40 = load i32, i32* @strval, align 4
  %41 = call i64 @strcmp(i32 %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = call i32 (...) @parse_include()
  br label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @strval, align 4
  %47 = call i32 (i8*, ...) @report(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %45, %43
  br label %73

49:                                               ; preds = %28
  %50 = load i8, i8* @token, align 1
  %51 = sext i8 %50 to i32
  %52 = load i8, i8* @TOK_STR, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %49
  %56 = load i32, i32* @strval, align 4
  %57 = call i32 @strcpy(i8* %8, i32 %56)
  %58 = call i64 (...) @gettoken()
  %59 = load i64, i64* @TOK_ASSIGN, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = load i8, i8* @token, align 1
  %63 = sext i8 %62 to i32
  %64 = load i8, i8* @TOK_QASSIGN, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %61, %55
  %68 = call i32 @parse_define(i8* %8)
  br label %71

69:                                               ; preds = %61
  %70 = call i32 @parse_assign(i8* %8)
  br label %71

71:                                               ; preds = %69, %67
  br label %72

72:                                               ; preds = %71, %49
  br label %73

73:                                               ; preds = %72, %48
  br label %74

74:                                               ; preds = %73, %24
  %75 = load i8, i8* @token, align 1
  %76 = sext i8 %75 to i32
  %77 = load i8, i8* @TOK_EOL, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %76, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = call i32 (i8*, ...) @report(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %74
  br label %9

83:                                               ; preds = %9
  %84 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %84)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @gettoken(...) #2

declare dso_local i32 @parse_section(%struct.lmodule*) #2

declare dso_local i32 @report(i8*, ...) #2

declare dso_local i64 @strcmp(i32, i8*) #2

declare dso_local i32 @parse_include(...) #2

declare dso_local i32 @strcpy(i8*, i32) #2

declare dso_local i32 @parse_define(i8*) #2

declare dso_local i32 @parse_assign(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
