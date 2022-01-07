; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_info_exec.c_exec_search.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_info_exec.c_exec_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@logfp = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"exec_search \22%s\22, key: \22%s\22\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exec_search(i32* %0, i8* %1, i8* %2, i8** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 @exec_check_perm(i8* %14)
  store i32 %15, i32* %13, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i32, i32* %13, align 4
  store i32 %18, i32* %6, align 4
  br label %54

19:                                               ; preds = %5
  %20 = load i8*, i8** %9, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %54

23:                                               ; preds = %19
  %24 = load i64, i64* @logfp, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i64, i64* @logfp, align 8
  %28 = call i32 @fflush(i64 %27)
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i8*, i8** %8, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @dlog(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %30, i8* %31)
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @exec_map_open(i8* %33, i8* %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %29
  %39 = load i32*, i32** %11, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = call i32 @clocktime(i32* null)
  %43 = load i32*, i32** %11, align 8
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load i8*, i8** %8, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load i8**, i8*** %10, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = call i32 @exec_parse_qanswer(i32* %45, i32 %46, i8* %47, i8* %48, i8** %49, i32* %50)
  store i32 %51, i32* %6, align 4
  br label %54

52:                                               ; preds = %29
  %53 = load i32, i32* @errno, align 4
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %52, %44, %22, %17
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @exec_check_perm(i8*) #1

declare dso_local i32 @fflush(i64) #1

declare dso_local i32 @dlog(i8*, i8*, i8*) #1

declare dso_local i32 @exec_map_open(i8*, i8*) #1

declare dso_local i32 @clocktime(i32*) #1

declare dso_local i32 @exec_parse_qanswer(i32*, i32, i8*, i8*, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
