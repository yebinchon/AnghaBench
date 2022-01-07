; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_cd.c_findcwd.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_cd.c_findcwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@curdir = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @findcwd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @findcwd(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i8*, i8** @curdir, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %9, %1
  %13 = call i8* (...) @getpwd2()
  store i8* %13, i8** %2, align 8
  br label %87

14:                                               ; preds = %9
  %15 = load i8*, i8** %3, align 8
  %16 = call i8* @stsavestr(i8* %15)
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @STARTSTACKSTR(i8* %17)
  %19 = load i8*, i8** %3, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 47
  br i1 %22, label %23, label %35

23:                                               ; preds = %14
  %24 = load i8*, i8** @curdir, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @STPUTS(i8* %24, i8* %25)
  %27 = load i8*, i8** %4, align 8
  %28 = call signext i8 @STTOPC(i8* %27)
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 47
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load i8*, i8** %4, align 8
  %33 = call signext i8 @STUNPUTC(i8* %32)
  br label %34

34:                                               ; preds = %31, %23
  br label %35

35:                                               ; preds = %34, %14
  br label %36

36:                                               ; preds = %75, %35
  %37 = call i8* @getcomponent(i8** %6)
  store i8* %37, i8** %5, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %76

39:                                               ; preds = %36
  %40 = load i8*, i8** %5, align 8
  %41 = call i64 @equal(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %39
  br label %44

44:                                               ; preds = %57, %43
  %45 = load i8*, i8** %4, align 8
  %46 = call i8* (...) @stackblock()
  %47 = icmp ugt i8* %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load i8*, i8** %4, align 8
  %50 = call signext i8 @STUNPUTC(i8* %49)
  %51 = load i8*, i8** %4, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 47
  br label %55

55:                                               ; preds = %48, %44
  %56 = phi i1 [ false, %44 ], [ %54, %48 ]
  br i1 %56, label %57, label %58

57:                                               ; preds = %55
  br label %44

58:                                               ; preds = %55
  br label %75

59:                                               ; preds = %39
  %60 = load i8*, i8** %5, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = load i8*, i8** %5, align 8
  %66 = call i64 @equal(i8* %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %64
  %69 = load i8*, i8** %4, align 8
  %70 = call i32 @STPUTC(i8 signext 47, i8* %69)
  %71 = load i8*, i8** %5, align 8
  %72 = load i8*, i8** %4, align 8
  %73 = call i32 @STPUTS(i8* %71, i8* %72)
  br label %74

74:                                               ; preds = %68, %64, %59
  br label %75

75:                                               ; preds = %74, %58
  br label %36

76:                                               ; preds = %36
  %77 = load i8*, i8** %4, align 8
  %78 = call i8* (...) @stackblock()
  %79 = icmp eq i8* %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i8*, i8** %4, align 8
  %82 = call i32 @STPUTC(i8 signext 47, i8* %81)
  br label %83

83:                                               ; preds = %80, %76
  %84 = load i8*, i8** %4, align 8
  %85 = call i32 @STACKSTRNUL(i8* %84)
  %86 = call i8* (...) @stackblock()
  store i8* %86, i8** %2, align 8
  br label %87

87:                                               ; preds = %83, %12
  %88 = load i8*, i8** %2, align 8
  ret i8* %88
}

declare dso_local i8* @getpwd2(...) #1

declare dso_local i8* @stsavestr(i8*) #1

declare dso_local i32 @STARTSTACKSTR(i8*) #1

declare dso_local i32 @STPUTS(i8*, i8*) #1

declare dso_local signext i8 @STTOPC(i8*) #1

declare dso_local signext i8 @STUNPUTC(i8*) #1

declare dso_local i8* @getcomponent(i8**) #1

declare dso_local i64 @equal(i8*, i8*) #1

declare dso_local i8* @stackblock(...) #1

declare dso_local i32 @STPUTC(i8 signext, i8*) #1

declare dso_local i32 @STACKSTRNUL(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
