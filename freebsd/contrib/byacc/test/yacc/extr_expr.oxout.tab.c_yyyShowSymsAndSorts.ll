; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/test/yacc/extr_expr.oxout.tab.c_yyyShowSymsAndSorts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/test/yacc/extr_expr.oxout.tab.c_yyyShowSymsAndSorts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@yyyLastProdNum = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"\0A\0A\0A---------------------------------- %3.1d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"->\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @yyyShowSymsAndSorts() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  br label %6

6:                                                ; preds = %58, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @yyyLastProdNum, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %61

10:                                               ; preds = %6
  %11 = load i32, i32* @stderr, align 4
  %12 = load i32, i32* %1, align 4
  %13 = call i32 (i32, i8*, ...) @fprintf(i32 %11, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @yyySizeofProd(i32 %14)
  store i32 %15, i32* %3, align 4
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %54, %10
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %57

20:                                               ; preds = %16
  %21 = load i32, i32* @stderr, align 4
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* %2, align 4
  %24 = call i8* @yyyGSoccurStr(i32 %22, i32 %23)
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @yyySortOf(i32 %26, i32 %27)
  %29 = call i32 @yyySizeofSort(i32 %28)
  store i32 %29, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %41, %20
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = load i32, i32* @stderr, align 4
  %36 = load i32, i32* %1, align 4
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i8* @yyyAttrbStr(i32 %36, i32 %37, i32 %38)
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %34
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %30

44:                                               ; preds = %30
  %45 = load i32, i32* %2, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* @stderr, align 4
  %49 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  br label %53

50:                                               ; preds = %44
  %51 = load i32, i32* @stderr, align 4
  %52 = call i32 @putc(i8 signext 10, i32 %51)
  br label %53

53:                                               ; preds = %50, %47
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %2, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %2, align 4
  br label %16

57:                                               ; preds = %16
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %1, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %1, align 4
  br label %6

61:                                               ; preds = %6
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @yyySizeofProd(i32) #1

declare dso_local i8* @yyyGSoccurStr(i32, i32) #1

declare dso_local i32 @yyySizeofSort(i32) #1

declare dso_local i32 @yyySortOf(i32, i32) #1

declare dso_local i8* @yyyAttrbStr(i32, i32, i32) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @putc(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
