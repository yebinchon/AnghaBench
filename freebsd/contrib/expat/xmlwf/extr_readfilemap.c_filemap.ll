; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/expat/xmlwf/extr_readfilemap.c_filemap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/expat/xmlwf/extr_readfilemap.c_filemap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s: not a regular file\0A\00", align 1
@XML_MAX_CHUNK_LEN = common dso_local global i64 0, align 8
@filemap.c = internal constant i8 0, align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%s: out of memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"%s: read unexpected number of bytes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @filemap(i32* %0, void (i8*, i64, i32*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca void (i8*, i64, i32*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.stat, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store void (i8*, i64, i32*, i8*)* %1, void (i8*, i64, i32*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* @O_RDONLY, align 4
  %15 = load i32, i32* @O_BINARY, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @topen(i32* %13, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @tperror(i32* %21)
  store i32 0, i32* %4, align 4
  br label %113

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  %25 = call i64 @fstat(i32 %24, %struct.stat* %11)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @tperror(i32* %28)
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @close(i32 %30)
  store i32 0, i32* %4, align 4
  br label %113

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @S_ISREG(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @stderr, align 4
  %39 = call i32 @T(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @ftprintf(i32 %38, i32 %39, i32* %40)
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @close(i32 %42)
  store i32 0, i32* %4, align 4
  br label %113

44:                                               ; preds = %32
  %45 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @XML_MAX_CHUNK_LEN, align 8
  %48 = icmp ugt i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @close(i32 %50)
  store i32 2, i32* %4, align 4
  br label %113

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %8, align 8
  %55 = load i64, i64* %8, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load void (i8*, i64, i32*, i8*)*, void (i8*, i64, i32*, i8*)** %6, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = load i8*, i8** %7, align 8
  call void %58(i8* @filemap.c, i64 0, i32* %59, i8* %60)
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @close(i32 %61)
  store i32 1, i32* %4, align 4
  br label %113

63:                                               ; preds = %52
  %64 = load i64, i64* %8, align 8
  %65 = call i8* @malloc(i64 %64)
  store i8* %65, i8** %12, align 8
  %66 = load i8*, i8** %12, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %75, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* @stderr, align 4
  %70 = call i32 @T(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @ftprintf(i32 %69, i32 %70, i32* %71)
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @close(i32 %73)
  store i32 0, i32* %4, align 4
  br label %113

75:                                               ; preds = %63
  %76 = load i32, i32* %9, align 4
  %77 = load i8*, i8** %12, align 8
  %78 = load i64, i64* %8, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i64 @_EXPAT_read(i32 %76, i8* %77, i32 %79)
  store i64 %80, i64* %10, align 8
  %81 = load i64, i64* %10, align 8
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %75
  %84 = load i32*, i32** %5, align 8
  %85 = call i32 @tperror(i32* %84)
  %86 = load i8*, i8** %12, align 8
  %87 = call i32 @free(i8* %86)
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @close(i32 %88)
  store i32 0, i32* %4, align 4
  br label %113

90:                                               ; preds = %75
  %91 = load i64, i64* %10, align 8
  %92 = load i64, i64* %8, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %90
  %95 = load i32, i32* @stderr, align 4
  %96 = call i32 @T(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %97 = load i32*, i32** %5, align 8
  %98 = call i32 @ftprintf(i32 %95, i32 %96, i32* %97)
  %99 = load i8*, i8** %12, align 8
  %100 = call i32 @free(i8* %99)
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @close(i32 %101)
  store i32 0, i32* %4, align 4
  br label %113

103:                                              ; preds = %90
  %104 = load void (i8*, i64, i32*, i8*)*, void (i8*, i64, i32*, i8*)** %6, align 8
  %105 = load i8*, i8** %12, align 8
  %106 = load i64, i64* %8, align 8
  %107 = load i32*, i32** %5, align 8
  %108 = load i8*, i8** %7, align 8
  call void %104(i8* %105, i64 %106, i32* %107, i8* %108)
  %109 = load i8*, i8** %12, align 8
  %110 = call i32 @free(i8* %109)
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @close(i32 %111)
  store i32 1, i32* %4, align 4
  br label %113

113:                                              ; preds = %103, %94, %83, %68, %57, %49, %37, %27, %20
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @topen(i32*, i32) #1

declare dso_local i32 @tperror(i32*) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @ftprintf(i32, i32, i32*) #1

declare dso_local i32 @T(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @_EXPAT_read(i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
