; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/extr_ihex2fw.c_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/extr_ihex2fw.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"wsj\00", align 1
@wide_records = common dso_local global i32 0, align 4
@sort_records = common dso_local global i32 0, align 4
@include_jump = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to open source file: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"mmap\00", align 1
@O_TRUNC = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Failed to open destination file: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %11

11:                                               ; preds = %21, %2
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = call i32 @getopt(i32 %12, i8** %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %10, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load i32, i32* %10, align 4
  switch i32 %17, label %21 [
    i32 119, label %18
    i32 115, label %19
    i32 106, label %20
  ]

18:                                               ; preds = %16
  store i32 1, i32* @wide_records, align 4
  br label %21

19:                                               ; preds = %16
  store i32 1, i32* @sort_records, align 4
  br label %21

20:                                               ; preds = %16
  store i32 1, i32* @include_jump, align 4
  br label %21

21:                                               ; preds = %16, %20, %19, %18
  br label %11

22:                                               ; preds = %11
  %23 = load i32, i32* @optind, align 4
  %24 = add nsw i32 %23, 2
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 (...) @usage()
  store i32 %28, i32* %3, align 4
  br label %115

29:                                               ; preds = %22
  %30 = load i8**, i8*** %5, align 8
  %31 = load i32, i32* @optind, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %46

38:                                               ; preds = %29
  %39 = load i8**, i8*** %5, align 8
  %40 = load i32, i32* @optind, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* @O_RDONLY, align 4
  %45 = call i32 (i8*, i32, ...) @open(i8* %43, i32 %44)
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %38, %37
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i32, i32* @stderr, align 4
  %51 = load i32, i32* @errno, align 4
  %52 = call i8* @strerror(i32 %51)
  %53 = call i32 @fprintf(i32 %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  %54 = call i32 (...) @usage()
  store i32 %54, i32* %3, align 4
  br label %115

55:                                               ; preds = %46
  %56 = load i32, i32* %6, align 4
  %57 = call i64 @fstat(i32 %56, %struct.stat* %8)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %115

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @PROT_READ, align 4
  %65 = load i32, i32* @MAP_SHARED, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32* @mmap(i32* null, i32 %63, i32 %64, i32 %65, i32 %66, i32 0)
  store i32* %67, i32** %9, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = load i32*, i32** @MAP_FAILED, align 8
  %70 = icmp eq i32* %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  %72 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %115

73:                                               ; preds = %61
  %74 = load i8**, i8*** %5, align 8
  %75 = load i32, i32* @optind, align 4
  %76 = add nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %74, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @strcmp(i8* %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %73
  store i32 1, i32* %7, align 4
  br label %96

83:                                               ; preds = %73
  %84 = load i8**, i8*** %5, align 8
  %85 = load i32, i32* @optind, align 4
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %84, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = load i32, i32* @O_TRUNC, align 4
  %91 = load i32, i32* @O_CREAT, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @O_WRONLY, align 4
  %94 = or i32 %92, %93
  %95 = call i32 (i8*, i32, ...) @open(i8* %89, i32 %94, i32 420)
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %83, %82
  %97 = load i32, i32* %7, align 4
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load i32, i32* @stderr, align 4
  %101 = load i32, i32* @errno, align 4
  %102 = call i8* @strerror(i32 %101)
  %103 = call i32 @fprintf(i32 %100, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* %102)
  %104 = call i32 (...) @usage()
  store i32 %104, i32* %3, align 4
  br label %115

105:                                              ; preds = %96
  %106 = load i32*, i32** %9, align 8
  %107 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @process_ihex(i32* %106, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  store i32 1, i32* %3, align 4
  br label %115

112:                                              ; preds = %105
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @output_records(i32 %113)
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %112, %111, %99, %71, %59, %49, %27
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @open(i8*, i32, ...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @process_ihex(i32*, i32) #1

declare dso_local i32 @output_records(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
