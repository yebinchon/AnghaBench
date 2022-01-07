; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/blacklist/port/extr_popenve.c_pdes_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/blacklist/port/extr_popenve.c_pdes_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pid = type { i32 }

@O_CLOEXEC = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@AF_LOCAL = common dso_local global i32 0, align 4
@F_SETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@F_SETFL = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SOCK_CLOEXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pid* (i32*, i8**)* @pdes_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pid* @pdes_get(i32* %0, i8** %1) #0 {
  %3 = alloca %struct.pid*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.pid*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = call i64 @strchr(i8* %11, i8 signext 101)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @O_CLOEXEC, align 4
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %14
  %18 = phi i32 [ %15, %14 ], [ 0, %16 ]
  store i32 %18, i32* %7, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @strchr(i8* %20, i8 signext 43)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %52

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @SOCK_STREAM, align 4
  br label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @SOCK_STREAM, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  store i32 %31, i32* %9, align 4
  %32 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %32, align 8
  %33 = load i32, i32* @AF_LOCAL, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = call i64 @socketpair(i32 %33, i32 %34, i32 0, i32* %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store %struct.pid* null, %struct.pid** %3, align 8
  br label %105

39:                                               ; preds = %30
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @F_SETFD, align 4
  %44 = load i32, i32* @FD_CLOEXEC, align 4
  %45 = call i32 (i32, i32, ...) @fcntl(i32 %42, i32 %43, i32 %44)
  %46 = load i32*, i32** %4, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @F_SETFD, align 4
  %50 = load i32, i32* @FD_CLOEXEC, align 4
  %51 = call i32 (i32, i32, ...) @fcntl(i32 %48, i32 %49, i32 %50)
  br label %89

52:                                               ; preds = %17
  %53 = load i8**, i8*** %5, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @strrchr(i8* %54, i8 signext 114)
  %56 = icmp ne i64 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %59 = load i8**, i8*** %5, align 8
  store i8* %58, i8** %59, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @pipe(i32* %60)
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  store %struct.pid* null, %struct.pid** %3, align 8
  br label %105

64:                                               ; preds = %52
  %65 = load i32*, i32** %4, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @F_SETFL, align 4
  %69 = load i32*, i32** %4, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @F_GETFL, align 4
  %73 = call i32 (i32, i32, ...) @fcntl(i32 %71, i32 %72)
  %74 = load i32, i32* %7, align 4
  %75 = or i32 %73, %74
  %76 = call i32 (i32, i32, ...) @fcntl(i32 %67, i32 %68, i32 %75)
  %77 = load i32*, i32** %4, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @F_SETFL, align 4
  %81 = load i32*, i32** %4, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @F_GETFL, align 4
  %85 = call i32 (i32, i32, ...) @fcntl(i32 %83, i32 %84)
  %86 = load i32, i32* %7, align 4
  %87 = or i32 %85, %86
  %88 = call i32 (i32, i32, ...) @fcntl(i32 %79, i32 %80, i32 %87)
  br label %89

89:                                               ; preds = %64, %39
  %90 = call %struct.pid* @malloc(i32 4)
  store %struct.pid* %90, %struct.pid** %6, align 8
  %91 = icmp ne %struct.pid* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load %struct.pid*, %struct.pid** %6, align 8
  store %struct.pid* %93, %struct.pid** %3, align 8
  br label %105

94:                                               ; preds = %89
  %95 = load i32, i32* @errno, align 4
  store i32 %95, i32* %8, align 4
  %96 = load i32*, i32** %4, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @close(i32 %98)
  %100 = load i32*, i32** %4, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @close(i32 %102)
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* @errno, align 4
  store %struct.pid* null, %struct.pid** %3, align 8
  br label %105

105:                                              ; preds = %94, %92, %63, %38
  %106 = load %struct.pid*, %struct.pid** %3, align 8
  ret %struct.pid* %106
}

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i64 @socketpair(i32, i32, i32, i32*) #1

declare dso_local i32 @fcntl(i32, i32, ...) #1

declare dso_local i64 @strrchr(i8*, i8 signext) #1

declare dso_local i32 @pipe(i32*) #1

declare dso_local %struct.pid* @malloc(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
