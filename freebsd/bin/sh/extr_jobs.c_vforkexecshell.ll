; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_jobs.c_vforkexecshell.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_jobs.c_vforkexecshell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jmploc = type { i32 }
%struct.job = type { i32, i32, %struct.procstat* }
%struct.procstat = type { i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"vforkexecshell(%%%td, %s, %p) called\0A\00", align 1
@jobtab = common dso_local global i32 0, align 4
@INTOFF = common dso_local global i32 0, align 4
@handler = common dso_local global %struct.jmploc* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Vfork failed, errno=%d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@INTON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Cannot fork: %s\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Child shell %d\0A\00", align 1
@exitstatus = common dso_local global i32 0, align 4
@nullstr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"In parent shell:  child = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vforkexecshell(%struct.job* %0, i8** %1, i8** %2, i8* %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.job*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.jmploc, align 4
  %15 = alloca %struct.jmploc*, align 8
  %16 = alloca %struct.procstat*, align 8
  store %struct.job* %0, %struct.job** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %17 = load %struct.job*, %struct.job** %7, align 8
  %18 = load i32, i32* @jobtab, align 4
  %19 = sext i32 %18 to i64
  %20 = sub i64 0, %19
  %21 = getelementptr inbounds %struct.job, %struct.job* %17, i64 %20
  %22 = load i8**, i8*** %8, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = bitcast i32* %25 to i8*
  %27 = call i32 @TRACE(i8* %26)
  %28 = load i32, i32* @INTOFF, align 4
  %29 = call i32 (...) @flushall()
  %30 = load %struct.jmploc*, %struct.jmploc** @handler, align 8
  store %struct.jmploc* %30, %struct.jmploc** %15, align 8
  %31 = call i32 @vfork() #4
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %43

34:                                               ; preds = %6
  %35 = load i32, i32* @errno, align 4
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i8*
  %38 = call i32 @TRACE(i8* %37)
  %39 = load i32, i32* @INTON, align 4
  %40 = load i32, i32* @errno, align 4
  %41 = call i32 @strerror(i32 %40)
  %42 = call i32 @error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %34, %6
  %44 = load i32, i32* %13, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %87

46:                                               ; preds = %43
  %47 = call i64 (...) @getpid()
  %48 = trunc i64 %47 to i32
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 @TRACE(i8* %50)
  %52 = getelementptr inbounds %struct.jmploc, %struct.jmploc* %14, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @setjmp(i32 %53) #4
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load i32, i32* @exitstatus, align 4
  %58 = call i32 @_exit(i32 %57) #5
  unreachable

59:                                               ; preds = %46
  %60 = load i32*, i32** %12, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %81

62:                                               ; preds = %59
  %63 = load i32*, i32** %12, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @close(i32 %65)
  %67 = load i32*, i32** %12, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 1
  br i1 %70, label %71, label %80

71:                                               ; preds = %62
  %72 = load i32*, i32** %12, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @dup2(i32 %74, i32 1)
  %76 = load i32*, i32** %12, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @close(i32 %78)
  br label %80

80:                                               ; preds = %71, %62
  br label %81

81:                                               ; preds = %80, %59
  store %struct.jmploc* %14, %struct.jmploc** @handler, align 8
  %82 = load i8**, i8*** %8, align 8
  %83 = load i8**, i8*** %9, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @shellexec(i8** %82, i8** %83, i8* %84, i32 %85)
  br label %87

87:                                               ; preds = %81, %43
  %88 = load %struct.jmploc*, %struct.jmploc** %15, align 8
  store %struct.jmploc* %88, %struct.jmploc** @handler, align 8
  %89 = load %struct.job*, %struct.job** %7, align 8
  %90 = icmp ne %struct.job* %89, null
  br i1 %90, label %91, label %111

91:                                               ; preds = %87
  %92 = load %struct.job*, %struct.job** %7, align 8
  %93 = getelementptr inbounds %struct.job, %struct.job* %92, i32 0, i32 2
  %94 = load %struct.procstat*, %struct.procstat** %93, align 8
  %95 = load %struct.job*, %struct.job** %7, align 8
  %96 = getelementptr inbounds %struct.job, %struct.job* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds %struct.procstat, %struct.procstat* %94, i64 %99
  store %struct.procstat* %100, %struct.procstat** %16, align 8
  %101 = load i32, i32* %13, align 4
  %102 = load %struct.procstat*, %struct.procstat** %16, align 8
  %103 = getelementptr inbounds %struct.procstat, %struct.procstat* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  %104 = load %struct.procstat*, %struct.procstat** %16, align 8
  %105 = getelementptr inbounds %struct.procstat, %struct.procstat* %104, i32 0, i32 1
  store i32 -1, i32* %105, align 4
  %106 = load i32, i32* @nullstr, align 4
  %107 = load %struct.procstat*, %struct.procstat** %16, align 8
  %108 = getelementptr inbounds %struct.procstat, %struct.procstat* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  %109 = load %struct.job*, %struct.job** %7, align 8
  %110 = getelementptr inbounds %struct.job, %struct.job* %109, i32 0, i32 0
  store i32 1, i32* %110, align 8
  br label %111

111:                                              ; preds = %91, %87
  %112 = load i32, i32* @INTON, align 4
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = inttoptr i64 %114 to i8*
  %116 = call i32 @TRACE(i8* %115)
  %117 = load i32, i32* %13, align 4
  ret i32 %117
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @flushall(...) #1

; Function Attrs: returns_twice
declare dso_local i32 @vfork() #2

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @getpid(...) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #2

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #3

declare dso_local i32 @close(i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @shellexec(i8**, i8**, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { returns_twice }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
