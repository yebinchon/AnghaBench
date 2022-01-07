; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/libamu/extr_mtab.c_hasmntvalerr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/libamu/extr_mtab.c_hasmntvalerr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XLOG_MAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"numeric option to \22%s\22 missing\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"invalid numeric option in \22%s\22: \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hasmntvalerr(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i8* @amu_hasmntopt(i32* %12, i8* %13)
  store i8* %14, i8** %7, align 8
  store i32 1, i32* %8, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %57

18:                                               ; preds = %3
  %19 = load i32*, i32** %4, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i8* @hasmnteq(i32* %19, i8* %20)
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @XLOG_MAP, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 (i32, i8*, i8*, ...) @plog(i32 %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %26)
  br label %57

28:                                               ; preds = %18
  store i8* null, i8** %10, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = call i64 @strtol(i8* %29, i8** %10, i32 0)
  store i64 %30, i64* %11, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %47

33:                                               ; preds = %28
  %34 = load i8*, i8** %10, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = icmp ne i8* %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %33
  %38 = load i8*, i8** %10, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 44
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load i8*, i8** %10, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42, %37, %28
  %48 = load i64, i64* %11, align 8
  %49 = trunc i64 %48 to i32
  %50 = load i32*, i32** %6, align 8
  store i32 %49, i32* %50, align 4
  store i32 0, i32* %8, align 4
  br label %56

51:                                               ; preds = %42, %33
  %52 = load i32, i32* @XLOG_MAP, align 4
  %53 = load i8*, i8** %5, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 (i32, i8*, i8*, ...) @plog(i32 %52, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %53, i8* %54)
  br label %56

56:                                               ; preds = %51, %47
  br label %57

57:                                               ; preds = %56, %24, %17
  %58 = load i32, i32* %8, align 4
  ret i32 %58
}

declare dso_local i8* @amu_hasmntopt(i32*, i8*) #1

declare dso_local i8* @hasmnteq(i32*, i8*) #1

declare dso_local i32 @plog(i32, i8*, i8*, ...) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
