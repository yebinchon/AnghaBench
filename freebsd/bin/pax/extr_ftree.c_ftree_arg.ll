; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_ftree.c_ftree_arg.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_ftree.c_ftree_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, %struct.TYPE_3__* }

@ftsp = common dso_local global i32* null, align 8
@fthead = common dso_local global %struct.TYPE_3__* null, align 8
@farray = common dso_local global i32* null, align 8
@PAXPATHLEN = common dso_local global i64 0, align 8
@stdin = common dso_local global i32 0, align 4
@ftcur = common dso_local global %struct.TYPE_3__* null, align 8
@cwdfd = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Can't fchdir to starting directory\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Can't chdir to %s\00", align 1
@ftsopts = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ftree_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftree_arg() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = load i32*, i32** @ftsp, align 8
  %4 = icmp ne i32* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i32*, i32** @ftsp, align 8
  %7 = call i32 @fts_close(i32* %6)
  store i32* null, i32** @ftsp, align 8
  br label %8

8:                                                ; preds = %5, %0
  br label %9

9:                                                ; preds = %81, %67, %8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fthead, align 8
  %11 = icmp eq %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %31

12:                                               ; preds = %9
  %13 = load i32*, i32** @farray, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* @PAXPATHLEN, align 8
  %17 = add nsw i64 %16, 1
  %18 = load i32, i32* @stdin, align 4
  %19 = call i32* @fgets(i32 %15, i64 %17, i32 %18)
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  store i32 -1, i32* %1, align 4
  br label %83

22:                                               ; preds = %12
  %23 = load i32*, i32** @farray, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @strchr(i32 %25, i8 signext 10)
  store i8* %26, i8** %2, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i8*, i8** %2, align 8
  store i8 0, i8* %29, align 1
  br label %30

30:                                               ; preds = %28, %22
  br label %75

31:                                               ; preds = %9
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ftcur, align 8
  %33 = icmp eq %struct.TYPE_3__* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fthead, align 8
  store %struct.TYPE_3__* %35, %struct.TYPE_3__** @ftcur, align 8
  br label %43

36:                                               ; preds = %31
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ftcur, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  store %struct.TYPE_3__* %39, %struct.TYPE_3__** @ftcur, align 8
  %40 = icmp eq %struct.TYPE_3__* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 -1, i32* %1, align 4
  br label %83

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %34
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ftcur, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %43
  %49 = load i32, i32* @cwdfd, align 4
  %50 = call i64 @fchdir(i32 %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* @errno, align 4
  %54 = call i32 (i32, i32, i8*, ...) @syswarn(i32 1, i32 %53, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %83

55:                                               ; preds = %48
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ftcur, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @chdir(i32 %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load i32, i32* @errno, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ftcur, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (i32, i32, i8*, ...) @syswarn(i32 1, i32 %62, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  store i32 -1, i32* %1, align 4
  br label %83

67:                                               ; preds = %55
  br label %9

68:                                               ; preds = %43
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ftcur, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32*, i32** @farray, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %68
  br label %75

75:                                               ; preds = %74, %30
  %76 = load i32*, i32** @farray, align 8
  %77 = load i32, i32* @ftsopts, align 4
  %78 = call i32* @fts_open(i32* %76, i32 %77, i32* null)
  store i32* %78, i32** @ftsp, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %82

81:                                               ; preds = %75
  br label %9

82:                                               ; preds = %80
  store i32 0, i32* %1, align 4
  br label %83

83:                                               ; preds = %82, %61, %52, %41, %21
  %84 = load i32, i32* %1, align 4
  ret i32 %84
}

declare dso_local i32 @fts_close(i32*) #1

declare dso_local i32* @fgets(i32, i64, i32) #1

declare dso_local i8* @strchr(i32, i8 signext) #1

declare dso_local i64 @fchdir(i32) #1

declare dso_local i32 @syswarn(i32, i32, i8*, ...) #1

declare dso_local i64 @chdir(i32) #1

declare dso_local i32* @fts_open(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
