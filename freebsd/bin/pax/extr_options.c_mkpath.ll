; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_options.c_mkpath.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_options.c_mkpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ENOTDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @mkpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mkpath(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load i8*, i8** %3, align 8
  store i8* %7, i8** %5, align 8
  br label %8

8:                                                ; preds = %59, %1
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %60

12:                                               ; preds = %8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @strspn(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = load i8*, i8** %5, align 8
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @strcspn(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %20 = load i8*, i8** %5, align 8
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  store i8* %22, i8** %5, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %6, align 4
  %28 = load i8*, i8** %5, align 8
  store i8 0, i8* %28, align 1
  %29 = load i8*, i8** %3, align 8
  %30 = call i64 @stat(i8* %29, %struct.stat* %4)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %12
  %33 = load i64, i64* @errno, align 8
  %34 = load i64, i64* @ENOENT, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i8*, i8** %3, align 8
  %38 = call i64 @mkdir(i8* %37, i32 511)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36, %32
  %41 = load i8*, i8** %3, align 8
  %42 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  store i32 -1, i32* %2, align 4
  br label %61

43:                                               ; preds = %36
  br label %54

44:                                               ; preds = %12
  %45 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @S_ISDIR(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @ENOTDIR, align 4
  %51 = load i8*, i8** %3, align 8
  %52 = call i32 @syswarn(i32 1, i32 %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  store i32 -1, i32* %2, align 4
  br label %61

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53, %43
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = load i8*, i8** %5, align 8
  store i8 47, i8* %58, align 1
  br label %59

59:                                               ; preds = %57, %54
  br label %8

60:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %49, %40
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @strspn(i8*, i8*) #1

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @mkdir(i8*, i32) #1

declare dso_local i32 @paxwarn(i32, i8*, i8*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @syswarn(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
