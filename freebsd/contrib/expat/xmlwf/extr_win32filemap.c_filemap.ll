; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/expat/xmlwf/extr_win32filemap.c_filemap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/expat/xmlwf/extr_win32filemap.c_filemap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_FLAG_SEQUENTIAL_SCAN = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i32* null, align 8
@XML_MAX_CHUNK_LEN = common dso_local global i64 0, align 8
@filemap.c = internal constant i8 0, align 1
@PAGE_READONLY = common dso_local global i32 0, align 4
@FILE_MAP_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @filemap(i32* %0, void (i8*, i64, i32*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca void (i8*, i64, i32*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store void (i8*, i64, i32*, i8*)* %1, void (i8*, i64, i32*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* @GENERIC_READ, align 4
  %15 = load i32, i32* @FILE_SHARE_READ, align 4
  %16 = load i32, i32* @OPEN_EXISTING, align 4
  %17 = load i32, i32* @FILE_FLAG_SEQUENTIAL_SCAN, align 4
  %18 = call i32* @CreateFile(i32* %13, i32 %14, i32 %15, i32* null, i32 %16, i32 %17, i32* null)
  store i32* %18, i32** %8, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i32*, i32** @INVALID_HANDLE_VALUE, align 8
  %21 = icmp eq i32* %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @win32perror(i32* %23)
  store i32 0, i32* %4, align 4
  br label %90

25:                                               ; preds = %3
  %26 = load i32*, i32** %8, align 8
  %27 = call i64 @GetFileSize(i32* %26, i64* %11)
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %10, align 8
  %29 = icmp eq i64 %28, -1
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @win32perror(i32* %31)
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @CloseHandle(i32* %33)
  store i32 0, i32* %4, align 4
  br label %90

35:                                               ; preds = %25
  %36 = load i64, i64* %11, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* @XML_MAX_CHUNK_LEN, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38, %35
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @CloseHandle(i32* %43)
  store i32 2, i32* %4, align 4
  br label %90

45:                                               ; preds = %38
  %46 = load i64, i64* %10, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load void (i8*, i64, i32*, i8*)*, void (i8*, i64, i32*, i8*)** %6, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = load i8*, i8** %7, align 8
  call void %49(i8* @filemap.c, i64 0, i32* %50, i8* %51)
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @CloseHandle(i32* %52)
  store i32 1, i32* %4, align 4
  br label %90

54:                                               ; preds = %45
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* @PAGE_READONLY, align 4
  %57 = call i32* @CreateFileMapping(i32* %55, i32* null, i32 %56, i32 0, i32 0, i32* null)
  store i32* %57, i32** %9, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @win32perror(i32* %61)
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @CloseHandle(i32* %63)
  store i32 0, i32* %4, align 4
  br label %90

65:                                               ; preds = %54
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* @FILE_MAP_READ, align 4
  %68 = call i8* @MapViewOfFile(i32* %66, i32 %67, i32 0, i32 0, i32 0)
  store i8* %68, i8** %12, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %65
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @win32perror(i32* %72)
  %74 = load i32*, i32** %9, align 8
  %75 = call i32 @CloseHandle(i32* %74)
  %76 = load i32*, i32** %8, align 8
  %77 = call i32 @CloseHandle(i32* %76)
  store i32 0, i32* %4, align 4
  br label %90

78:                                               ; preds = %65
  %79 = load void (i8*, i64, i32*, i8*)*, void (i8*, i64, i32*, i8*)** %6, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = load i64, i64* %10, align 8
  %82 = load i32*, i32** %5, align 8
  %83 = load i8*, i8** %7, align 8
  call void %79(i8* %80, i64 %81, i32* %82, i8* %83)
  %84 = load i8*, i8** %12, align 8
  %85 = call i32 @UnmapViewOfFile(i8* %84)
  %86 = load i32*, i32** %9, align 8
  %87 = call i32 @CloseHandle(i32* %86)
  %88 = load i32*, i32** %8, align 8
  %89 = call i32 @CloseHandle(i32* %88)
  store i32 1, i32* %4, align 4
  br label %90

90:                                               ; preds = %78, %71, %60, %48, %42, %30, %22
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32* @CreateFile(i32*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @win32perror(i32*) #1

declare dso_local i64 @GetFileSize(i32*, i64*) #1

declare dso_local i32 @CloseHandle(i32*) #1

declare dso_local i32* @CreateFileMapping(i32*, i32*, i32, i32, i32, i32*) #1

declare dso_local i8* @MapViewOfFile(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @UnmapViewOfFile(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
