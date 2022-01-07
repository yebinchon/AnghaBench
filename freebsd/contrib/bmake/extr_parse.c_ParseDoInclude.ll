; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_parse.c_ParseDoInclude.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_parse.c_ParseDoInclude.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PARSE_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c".include filename must be delimited by '\22' or '<'\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Unclosed %cinclude filename. '%c' expected\00", align 1
@VAR_CMD = common dso_local global i32 0, align 4
@VARF_WANTRES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ParseDoInclude to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ParseDoInclude(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp ne i32 %9, 105
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 1, i32 0
  store i32 %12, i32* %5, align 4
  %13 = load i8*, i8** %2, align 8
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 7, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %13, i64 %16
  store i8* %17, i8** %6, align 8
  br label %18

18:                                               ; preds = %30, %1
  %19 = load i8*, i8** %6, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 32
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 9
  br label %28

28:                                               ; preds = %23, %18
  %29 = phi i1 [ true, %18 ], [ %27, %23 ]
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %6, align 8
  br label %18

33:                                               ; preds = %28
  %34 = load i8*, i8** %6, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 34
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load i8*, i8** %6, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 60
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @PARSE_FATAL, align 4
  %45 = call i32 (i32, i8*, ...) @Parse_Error(i32 %44, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %106

46:                                               ; preds = %38, %33
  %47 = load i8*, i8** %6, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 60
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i8 62, i8* %3, align 1
  br label %53

52:                                               ; preds = %46
  store i8 34, i8* %3, align 1
  br label %53

53:                                               ; preds = %52, %51
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %6, align 8
  store i8* %55, i8** %4, align 8
  br label %56

56:                                               ; preds = %71, %53
  %57 = load i8*, i8** %4, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load i8*, i8** %4, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = load i8, i8* %3, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %64, %66
  br label %68

68:                                               ; preds = %61, %56
  %69 = phi i1 [ false, %56 ], [ %67, %61 ]
  br i1 %69, label %70, label %74

70:                                               ; preds = %68
  br label %71

71:                                               ; preds = %70
  %72 = load i8*, i8** %4, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %4, align 8
  br label %56

74:                                               ; preds = %68
  %75 = load i8*, i8** %4, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = load i8, i8* %3, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %77, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %74
  %82 = load i32, i32* @PARSE_FATAL, align 4
  %83 = load i8, i8* %3, align 1
  %84 = sext i8 %83 to i32
  %85 = call i32 (i32, i8*, ...) @Parse_Error(i32 %82, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 46, i32 %84)
  br label %106

86:                                               ; preds = %74
  %87 = load i8*, i8** %4, align 8
  store i8 0, i8* %87, align 1
  %88 = load i8*, i8** %6, align 8
  %89 = load i32, i32* @VAR_CMD, align 4
  %90 = load i32, i32* @VARF_WANTRES, align 4
  %91 = call i8* @Var_Subst(i32* null, i8* %88, i32 %89, i32 %90)
  store i8* %91, i8** %6, align 8
  %92 = load i8*, i8** %6, align 8
  %93 = load i8, i8* %3, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 62
  %96 = zext i1 %95 to i32
  %97 = load i8*, i8** %2, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 100
  %101 = zext i1 %100 to i32
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @Parse_include_file(i8* %92, i32 %96, i32 %101, i32 %102)
  %104 = load i8*, i8** %6, align 8
  %105 = call i32 @free(i8* %104)
  br label %106

106:                                              ; preds = %86, %81, %43
  ret void
}

declare dso_local i32 @Parse_Error(i32, i8*, ...) #1

declare dso_local i8* @Var_Subst(i32*, i8*, i32, i32) #1

declare dso_local i32 @Parse_include_file(i8*, i32, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
