; ModuleID = '/home/carl/AnghaBench/freebsd/bin/cat/extr_cat.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/cat/extr_cat.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flock = type { i32, i32, i64, i64 }

@LC_CTYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"belnstuv\00", align 1
@nflag = common dso_local global i32 0, align 4
@bflag = common dso_local global i32 0, align 4
@vflag = common dso_local global i8* null, align 8
@eflag = common dso_local global i8* null, align 8
@lflag = common dso_local global i32 0, align 4
@sflag = common dso_local global i32 0, align 4
@tflag = common dso_local global i8* null, align 8
@stdout = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@F_WRLCK = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@F_SETLKW = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@rval = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.flock, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* @LC_CTYPE, align 4
  %9 = call i32 @setlocale(i32 %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %29, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %13, i32* %6, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %30

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %27 [
    i32 98, label %17
    i32 101, label %18
    i32 108, label %19
    i32 110, label %20
    i32 115, label %21
    i32 116, label %22
    i32 117, label %23
    i32 118, label %26
  ]

17:                                               ; preds = %15
  store i32 1, i32* @nflag, align 4
  store i32 1, i32* @bflag, align 4
  br label %29

18:                                               ; preds = %15
  store i8* inttoptr (i64 1 to i8*), i8** @vflag, align 8
  store i8* inttoptr (i64 1 to i8*), i8** @eflag, align 8
  br label %29

19:                                               ; preds = %15
  store i32 1, i32* @lflag, align 4
  br label %29

20:                                               ; preds = %15
  store i32 1, i32* @nflag, align 4
  br label %29

21:                                               ; preds = %15
  store i32 1, i32* @sflag, align 4
  br label %29

22:                                               ; preds = %15
  store i8* inttoptr (i64 1 to i8*), i8** @vflag, align 8
  store i8* inttoptr (i64 1 to i8*), i8** @tflag, align 8
  br label %29

23:                                               ; preds = %15
  %24 = load i32, i32* @stdout, align 4
  %25 = call i32 @setbuf(i32 %24, i32* null)
  br label %29

26:                                               ; preds = %15
  store i8* inttoptr (i64 1 to i8*), i8** @vflag, align 8
  br label %29

27:                                               ; preds = %15
  %28 = call i32 (...) @usage()
  br label %29

29:                                               ; preds = %27, %26, %23, %22, %21, %20, %19, %18, %17
  br label %10

30:                                               ; preds = %10
  %31 = load i32, i32* @optind, align 4
  %32 = load i8**, i8*** %5, align 8
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33
  store i8** %34, i8*** %5, align 8
  %35 = load i32, i32* @lflag, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.flock, %struct.flock* %7, i32 0, i32 3
  store i64 0, i64* %38, align 8
  %39 = getelementptr inbounds %struct.flock, %struct.flock* %7, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* @F_WRLCK, align 4
  %41 = getelementptr inbounds %struct.flock, %struct.flock* %7, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @SEEK_SET, align 4
  %43 = getelementptr inbounds %struct.flock, %struct.flock* %7, i32 0, i32 0
  store i32 %42, i32* %43, align 8
  %44 = load i32, i32* @STDOUT_FILENO, align 4
  %45 = load i32, i32* @F_SETLKW, align 4
  %46 = call i32 @fcntl(i32 %44, i32 %45, %struct.flock* %7)
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %51

48:                                               ; preds = %37
  %49 = load i32, i32* @EXIT_FAILURE, align 4
  %50 = call i32 @err(i32 %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %37
  br label %52

52:                                               ; preds = %51, %30
  %53 = load i32, i32* @bflag, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %70, label %55

55:                                               ; preds = %52
  %56 = load i8*, i8** @eflag, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %70, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* @nflag, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* @sflag, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %61
  %65 = load i8*, i8** @tflag, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i8*, i8** @vflag, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67, %64, %61, %58, %55, %52
  %71 = load i8**, i8*** %5, align 8
  %72 = call i32 @scanfiles(i8** %71, i32 1)
  br label %76

73:                                               ; preds = %67
  %74 = load i8**, i8*** %5, align 8
  %75 = call i32 @scanfiles(i8** %74, i32 0)
  br label %76

76:                                               ; preds = %73, %70
  %77 = load i32, i32* @stdout, align 4
  %78 = call i64 @fclose(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %76
  %83 = load i32, i32* @rval, align 4
  %84 = call i32 @exit(i32 %83) #3
  unreachable
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @setbuf(i32, i32*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @fcntl(i32, i32, %struct.flock*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @scanfiles(i8**, i32) #1

declare dso_local i64 @fclose(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
