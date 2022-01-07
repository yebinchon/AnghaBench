; ModuleID = '/home/carl/AnghaBench/freebsd/bin/cat/extr_cat.c_raw_cat.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/cat/extr_cat.c_raw_cat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i32 }

@raw_cat.bsize = internal global i64 0, align 8
@raw_cat.buf = internal global i8* null, align 8
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@_SC_PHYS_PAGES = common dso_local global i32 0, align 4
@PHYSPAGES_THRESHOLD = common dso_local global i64 0, align 8
@BUFSIZE_MAX = common dso_local global i32 0, align 4
@MAXPHYS = common dso_local global i32 0, align 4
@BUFSIZE_SMALL = common dso_local global i64 0, align 8
@_SC_PAGESIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"malloc() failure of IO buffer\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@filename = common dso_local global i32 0, align 4
@rval = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @raw_cat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raw_cat(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.stat, align 8
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* @stdout, align 4
  %10 = call i32 @fileno(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i8*, i8** @raw_cat.buf, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %56

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @fstat(i32 %14, %struct.stat* %8)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %13
  %20 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @S_ISREG(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = load i32, i32* @_SC_PHYS_PAGES, align 4
  %26 = call i64 @sysconf(i32 %25)
  %27 = load i64, i64* @PHYSPAGES_THRESHOLD, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i32, i32* @BUFSIZE_MAX, align 4
  %31 = load i32, i32* @MAXPHYS, align 4
  %32 = mul nsw i32 %31, 8
  %33 = call i64 @MIN(i32 %30, i32 %32)
  store i64 %33, i64* @raw_cat.bsize, align 8
  br label %36

34:                                               ; preds = %24
  %35 = load i64, i64* @BUFSIZE_SMALL, align 8
  store i64 %35, i64* @raw_cat.bsize, align 8
  br label %36

36:                                               ; preds = %34, %29
  br label %49

37:                                               ; preds = %19
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* @raw_cat.bsize, align 8
  %40 = load i32, i32* @_SC_PAGESIZE, align 4
  %41 = call i64 @sysconf(i32 %40)
  store i64 %41, i64* %3, align 8
  %42 = load i64, i64* %3, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load i64, i64* @raw_cat.bsize, align 8
  %46 = load i64, i64* %3, align 8
  %47 = call i64 @MAX(i64 %45, i64 %46)
  store i64 %47, i64* @raw_cat.bsize, align 8
  br label %48

48:                                               ; preds = %44, %37
  br label %49

49:                                               ; preds = %48, %36
  %50 = load i64, i64* @raw_cat.bsize, align 8
  %51 = call i8* @malloc(i64 %50)
  store i8* %51, i8** @raw_cat.buf, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = call i32 @err(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %49
  br label %56

56:                                               ; preds = %55, %1
  br label %57

57:                                               ; preds = %88, %56
  %58 = load i32, i32* %2, align 4
  %59 = load i8*, i8** @raw_cat.buf, align 8
  %60 = load i64, i64* @raw_cat.bsize, align 8
  %61 = call i64 @read(i32 %58, i8* %59, i64 %60)
  store i64 %61, i64* %6, align 8
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %89

63:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %79, %63
  %65 = load i64, i64* %6, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %88

67:                                               ; preds = %64
  %68 = load i32, i32* %5, align 4
  %69 = load i8*, i8** @raw_cat.buf, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load i64, i64* %6, align 8
  %74 = call i64 @write(i32 %68, i8* %72, i64 %73)
  store i64 %74, i64* %7, align 8
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %67
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %7, align 8
  %81 = load i64, i64* %6, align 8
  %82 = sub nsw i64 %81, %80
  store i64 %82, i64* %6, align 8
  %83 = load i64, i64* %7, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %4, align 4
  br label %64

88:                                               ; preds = %64
  br label %57

89:                                               ; preds = %57
  %90 = load i64, i64* %6, align 8
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32, i32* @filename, align 4
  %94 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  store i32 1, i32* @rval, align 4
  br label %95

95:                                               ; preds = %92, %89
  ret void
}

declare dso_local i32 @fileno(i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @sysconf(i32) #1

declare dso_local i64 @MIN(i32, i32) #1

declare dso_local i64 @MAX(i64, i64) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @read(i32, i8*, i64) #1

declare dso_local i64 @write(i32, i8*, i64) #1

declare dso_local i32 @warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
