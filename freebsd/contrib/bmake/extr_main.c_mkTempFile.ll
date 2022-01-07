; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_main.c_mkTempFile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_main.c_mkTempFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mkTempFile.tmpdir = internal global i8* null, align 8
@MAXPATHLEN = common dso_local global i32 0, align 4
@TMPPAT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Could not create temporary file %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mkTempFile(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  %8 = load i32, i32* @MAXPATHLEN, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i8*, i8** @TMPPAT, align 8
  store i8* %15, i8** %3, align 8
  br label %16

16:                                               ; preds = %14, %2
  %17 = load i8*, i8** @mkTempFile.tmpdir, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = call i8* (...) @getTmpdir()
  store i8* %20, i8** @mkTempFile.tmpdir, align 8
  br label %21

21:                                               ; preds = %19, %16
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 47
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = trunc i64 %9 to i32
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %11, i32 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %29)
  br label %36

31:                                               ; preds = %21
  %32 = trunc i64 %9 to i32
  %33 = load i8*, i8** @mkTempFile.tmpdir, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %11, i32 %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %33, i8* %34)
  br label %36

36:                                               ; preds = %31, %27
  %37 = call i32 @mkstemp(i8* %11)
  store i32 %37, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* @errno, align 4
  %41 = call i32 @strerror(i32 %40)
  %42 = call i32 @Punt(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %11, i32 %41)
  br label %43

43:                                               ; preds = %39, %36
  %44 = load i8**, i8*** %4, align 8
  %45 = icmp ne i8** %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = call i8* @bmake_strdup(i8* %11)
  %48 = load i8**, i8*** %4, align 8
  store i8* %47, i8** %48, align 8
  br label %51

49:                                               ; preds = %43
  %50 = call i32 @unlink(i8* %11)
  br label %51

51:                                               ; preds = %49, %46
  %52 = load i32, i32* %7, align 4
  %53 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %53)
  ret i32 %52
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @getTmpdir(...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32 @mkstemp(i8*) #2

declare dso_local i32 @Punt(i8*, i8*, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i8* @bmake_strdup(i8*) #2

declare dso_local i32 @unlink(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
