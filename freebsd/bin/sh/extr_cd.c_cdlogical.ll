; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_cd.c_cdlogical.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_cd.c_cdlogical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"..\00", align 1
@INTOFF = common dso_local global i32 0, align 4
@INTON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @cdlogical to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdlogical(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stat, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %10, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = call i8* @stsavestr(i8* %11)
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @STARTSTACKSTR(i8* %13)
  %15 = load i8*, i8** %3, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 47
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @STPUTC(i8 signext 47, i8* %20)
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %7, align 8
  br label %24

24:                                               ; preds = %19, %1
  store i32 1, i32* %9, align 4
  br label %25

25:                                               ; preds = %69, %61, %46, %24
  %26 = call i8* @getcomponent(i8** %7)
  store i8* %26, i8** %5, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %70

28:                                               ; preds = %25
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %28
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 46
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40, %28
  br label %25

47:                                               ; preds = %40, %34
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @STPUTC(i8 signext 47, i8* %51)
  br label %53

53:                                               ; preds = %50, %47
  store i32 0, i32* %9, align 4
  %54 = load i8*, i8** %5, align 8
  store i8* %54, i8** %6, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @STPUTS(i8* %55, i8* %56)
  %58 = load i8*, i8** %6, align 8
  %59 = call i64 @equal(i8* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %25

62:                                               ; preds = %53
  %63 = load i8*, i8** %4, align 8
  %64 = call i32 @STACKSTRNUL(i8* %63)
  %65 = call i32 (...) @stackblock()
  %66 = call i64 @lstat(i32 %65, %struct.stat* %8)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store i32 1, i32* %10, align 4
  br label %70

69:                                               ; preds = %62
  br label %25

70:                                               ; preds = %68, %25
  %71 = load i32, i32* @INTOFF, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %77

75:                                               ; preds = %70
  %76 = load i8*, i8** %3, align 8
  br label %77

77:                                               ; preds = %75, %74
  %78 = phi i8* [ null, %74 ], [ %76, %75 ]
  %79 = call i8* @findcwd(i8* %78)
  store i8* %79, i8** %4, align 8
  %80 = icmp eq i8* %79, null
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load i8*, i8** %4, align 8
  %83 = call i64 @chdir(i8* %82)
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %81, %77
  %86 = load i32, i32* @INTON, align 4
  store i32 -1, i32* %2, align 4
  br label %91

87:                                               ; preds = %81
  %88 = load i8*, i8** %4, align 8
  %89 = call i32 @updatepwd(i8* %88)
  %90 = load i32, i32* @INTON, align 4
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %87, %85
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i8* @stsavestr(i8*) #1

declare dso_local i32 @STARTSTACKSTR(i8*) #1

declare dso_local i32 @STPUTC(i8 signext, i8*) #1

declare dso_local i8* @getcomponent(i8**) #1

declare dso_local i32 @STPUTS(i8*, i8*) #1

declare dso_local i64 @equal(i8*, i8*) #1

declare dso_local i32 @STACKSTRNUL(i8*) #1

declare dso_local i64 @lstat(i32, %struct.stat*) #1

declare dso_local i32 @stackblock(...) #1

declare dso_local i8* @findcwd(i8*) #1

declare dso_local i64 @chdir(i8*) #1

declare dso_local i32 @updatepwd(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
