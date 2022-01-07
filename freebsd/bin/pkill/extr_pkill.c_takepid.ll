; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pkill/extr_pkill.c_takepid.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pkill/extr_pkill.c_takepid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@STATUS_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Cannot open pidfile `%s'\00", align 1
@LOCK_EX = common dso_local global i32 0, align 4
@LOCK_NB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"File '%s' can be locked\00", align 1
@errno = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"Error while locking file '%s'\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Pidfile `%s' is empty\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Cannot read from pid file `%s'\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Invalid pid in file `%s'\00", align 1
@MIN_PID = common dso_local global i64 0, align 8
@MAX_PID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @takepid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @takepid(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @BUFSIZ, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i32* @fopen(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @STATUS_ERROR, align 4
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @err(i32 %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %18, %2
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %49

25:                                               ; preds = %22
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @fileno(i32* %26)
  %28 = load i32, i32* @LOCK_EX, align 4
  %29 = load i32, i32* @LOCK_NB, align 4
  %30 = or i32 %28, %29
  %31 = call i64 @flock(i32 %27, i32 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %25
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @fclose(i32* %34)
  %36 = load i32, i32* @STATUS_ERROR, align 4
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 @errx(i32 %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  br label %48

39:                                               ; preds = %25
  %40 = load i64, i64* @errno, align 8
  %41 = load i64, i64* @EWOULDBLOCK, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* @STATUS_ERROR, align 4
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 @errx(i32 %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %45)
  br label %47

47:                                               ; preds = %43, %39
  br label %48

48:                                               ; preds = %47, %33
  br label %49

49:                                               ; preds = %48, %22
  %50 = trunc i64 %11 to i32
  %51 = load i32*, i32** %8, align 8
  %52 = call i32* @fgets(i8* %13, i32 %50, i32* %51)
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %70

54:                                               ; preds = %49
  %55 = load i32*, i32** %8, align 8
  %56 = call i64 @feof(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @fclose(i32* %59)
  %61 = load i32, i32* @STATUS_ERROR, align 4
  %62 = load i8*, i8** %3, align 8
  %63 = call i32 @errx(i32 %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %62)
  br label %64

64:                                               ; preds = %58, %54
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @fclose(i32* %65)
  %67 = load i32, i32* @STATUS_ERROR, align 4
  %68 = load i8*, i8** %3, align 8
  %69 = call i32 @err(i32 %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %68)
  br label %70

70:                                               ; preds = %64, %49
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @fclose(i32* %71)
  %73 = call i64 @strtol(i8* %13, i8** %5, i32 10)
  store i64 %73, i64* %9, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %70
  %79 = load i8*, i8** %5, align 8
  %80 = load i8, i8* %79, align 1
  %81 = call i32 @isspace(i8 zeroext %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* @STATUS_ERROR, align 4
  %85 = load i8*, i8** %3, align 8
  %86 = call i32 @errx(i32 %84, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* %85)
  br label %100

87:                                               ; preds = %78, %70
  %88 = load i64, i64* %9, align 8
  %89 = load i64, i64* @MIN_PID, align 8
  %90 = icmp slt i64 %88, %89
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load i64, i64* %9, align 8
  %93 = load i64, i64* @MAX_PID, align 8
  %94 = icmp sgt i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %91, %87
  %96 = load i32, i32* @STATUS_ERROR, align 4
  %97 = load i8*, i8** %3, align 8
  %98 = call i32 @errx(i32 %96, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* %97)
  br label %99

99:                                               ; preds = %95, %91
  br label %100

100:                                              ; preds = %99, %83
  %101 = load i64, i64* %9, align 8
  %102 = trunc i64 %101 to i32
  %103 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %103)
  ret i32 %102
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @err(i32, i8*, i8*) #2

declare dso_local i64 @flock(i32, i32) #2

declare dso_local i32 @fileno(i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @errx(i32, i8*, i8*) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i64 @feof(i32*) #2

declare dso_local i64 @strtol(i8*, i8**, i32) #2

declare dso_local i32 @isspace(i8 zeroext) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
