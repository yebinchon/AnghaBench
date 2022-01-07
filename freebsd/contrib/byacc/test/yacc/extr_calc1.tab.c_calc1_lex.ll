; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/test/yacc/extr_calc1.tab.c_calc1_lex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/test/yacc/extr_calc1.tab.c_calc1_lex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@yylval = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@VREG = common dso_local global i32 0, align 4
@DREG = common dso_local global i32 0, align 4
@BSZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"constant  too  long:  truncated\0A\00", align 1
@stdin = common dso_local global i32 0, align 4
@CONST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yylex() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  br label %9

9:                                                ; preds = %12, %0
  %10 = call i32 (...) @getchar()
  store i32 %10, i32* %2, align 4
  %11 = icmp eq i32 %10, 32
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %9

13:                                               ; preds = %9
  %14 = load i32, i32* %2, align 4
  %15 = call i64 @isupper(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i32, i32* %2, align 4
  %19 = sub nsw i32 %18, 65
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 0), align 4
  %20 = load i32, i32* @VREG, align 4
  store i32 %20, i32* %1, align 4
  br label %106

21:                                               ; preds = %13
  %22 = load i32, i32* %2, align 4
  %23 = call i64 @islower(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* %2, align 4
  %27 = sub nsw i32 %26, 97
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 0), align 4
  %28 = load i32, i32* @DREG, align 4
  store i32 %28, i32* %1, align 4
  br label %106

29:                                               ; preds = %21
  %30 = load i32, i32* %2, align 4
  %31 = call i64 @isdigit(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %2, align 4
  %35 = icmp eq i32 %34, 46
  br i1 %35, label %36, label %104

36:                                               ; preds = %33, %29
  %37 = load i32, i32* @BSZ, align 4
  %38 = add nsw i32 %37, 1
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %3, align 8
  %41 = alloca i8, i64 %39, align 16
  store i64 %39, i64* %4, align 8
  store i8* %41, i8** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %80, %36
  %43 = load i8*, i8** %5, align 8
  %44 = ptrtoint i8* %43 to i64
  %45 = ptrtoint i8* %41 to i64
  %46 = sub i64 %44, %45
  %47 = load i32, i32* @BSZ, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp slt i64 %46, %48
  br i1 %49, label %50, label %84

50:                                               ; preds = %42
  %51 = load i32, i32* %2, align 4
  %52 = trunc i32 %51 to i8
  %53 = load i8*, i8** %5, align 8
  store i8 %52, i8* %53, align 1
  %54 = load i32, i32* %2, align 4
  %55 = call i64 @isdigit(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %80

58:                                               ; preds = %50
  %59 = load i32, i32* %2, align 4
  %60 = icmp eq i32 %59, 46
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  %64 = icmp ne i32 %62, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65, %61
  store i32 46, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %102

69:                                               ; preds = %65
  br label %80

70:                                               ; preds = %58
  %71 = load i32, i32* %2, align 4
  %72 = icmp eq i32 %71, 101
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  %76 = icmp ne i32 %74, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  store i32 101, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %102

78:                                               ; preds = %73
  br label %80

79:                                               ; preds = %70
  br label %84

80:                                               ; preds = %78, %69, %57
  %81 = load i8*, i8** %5, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %5, align 8
  %83 = call i32 (...) @getchar()
  store i32 %83, i32* %2, align 4
  br label %42

84:                                               ; preds = %79, %42
  %85 = load i8*, i8** %5, align 8
  store i8 0, i8* %85, align 1
  %86 = load i8*, i8** %5, align 8
  %87 = ptrtoint i8* %86 to i64
  %88 = ptrtoint i8* %41 to i64
  %89 = sub i64 %87, %88
  %90 = load i32, i32* @BSZ, align 4
  %91 = sext i32 %90 to i64
  %92 = icmp sge i64 %89, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %84
  %94 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %99

95:                                               ; preds = %84
  %96 = load i32, i32* %2, align 4
  %97 = load i32, i32* @stdin, align 4
  %98 = call i32 @ungetc(i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %95, %93
  %100 = call i32 @atof(i8* %41)
  store i32 %100, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 1), align 4
  %101 = load i32, i32* @CONST, align 4
  store i32 %101, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %102

102:                                              ; preds = %99, %77, %68
  %103 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %103)
  br label %106

104:                                              ; preds = %33
  %105 = load i32, i32* %2, align 4
  store i32 %105, i32* %1, align 4
  br label %106

106:                                              ; preds = %104, %102, %25, %17
  %107 = load i32, i32* %1, align 4
  ret i32 %107
}

declare dso_local i32 @getchar(...) #1

declare dso_local i64 @isupper(i32) #1

declare dso_local i64 @islower(i32) #1

declare dso_local i64 @isdigit(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @ungetc(i32, i32) #1

declare dso_local i32 @atof(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
