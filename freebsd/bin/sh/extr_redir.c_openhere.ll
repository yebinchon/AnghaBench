; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_redir.c_openhere.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_redir.c_openhere.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.node = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.job = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Pipe call failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@NXHERE = common dso_local global i64 0, align 8
@F_GETFL = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@FORK_NOJOB = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@SIGTSTP = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.node*)* @openhere to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @openhere(%union.node* %0) #0 {
  %2 = alloca %union.node*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %union.node* %0, %union.node** %2, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %7, align 8
  %8 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %9 = call i64 @pipe(i32* %8)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @errno, align 4
  %13 = call i32 @strerror(i32 %12)
  %14 = call i32 @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %11, %1
  %16 = load %union.node*, %union.node** %2, align 8
  %17 = bitcast %union.node* %16 to i64*
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NXHERE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %union.node*, %union.node** %2, align 8
  %23 = bitcast %union.node* %22 to %struct.TYPE_6__*
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %3, align 8
  br label %34

26:                                               ; preds = %15
  %27 = load %union.node*, %union.node** %2, align 8
  %28 = bitcast %union.node* %27 to %struct.TYPE_6__*
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %3, align 8
  br label %34

34:                                               ; preds = %26, %21
  %35 = load i8*, i8** %3, align 8
  %36 = call i64 @strlen(i8* %35)
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* %5, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %110

40:                                               ; preds = %34
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @F_GETFL, align 4
  %44 = call i32 @fcntl(i32 %42, i32 %43, i32 0)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, -1
  br i1 %46, label %47, label %76

47:                                               ; preds = %40
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @F_SETFL, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @O_NONBLOCK, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @fcntl(i32 %49, i32 %50, i32 %53)
  %55 = icmp ne i32 %54, -1
  br i1 %55, label %56, label %76

56:                                               ; preds = %47
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %3, align 8
  %60 = load i64, i64* %5, align 8
  %61 = call i64 @write(i32 %58, i8* %59, i64 %60)
  store i64 %61, i64* %7, align 8
  %62 = load i64, i64* %7, align 8
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  store i64 0, i64* %7, align 8
  br label %65

65:                                               ; preds = %64, %56
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* %5, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %110

70:                                               ; preds = %65
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @F_SETFL, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @fcntl(i32 %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %70, %47, %40
  %77 = load i32, i32* @FORK_NOJOB, align 4
  %78 = call i64 @forkshell(%struct.job* null, %union.node* null, i32 %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %109

80:                                               ; preds = %76
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @close(i32 %82)
  %84 = load i32, i32* @SIGINT, align 4
  %85 = load i32, i32* @SIG_IGN, align 4
  %86 = call i32 @signal(i32 %84, i32 %85)
  %87 = load i32, i32* @SIGQUIT, align 4
  %88 = load i32, i32* @SIG_IGN, align 4
  %89 = call i32 @signal(i32 %87, i32 %88)
  %90 = load i32, i32* @SIGHUP, align 4
  %91 = load i32, i32* @SIG_IGN, align 4
  %92 = call i32 @signal(i32 %90, i32 %91)
  %93 = load i32, i32* @SIGTSTP, align 4
  %94 = load i32, i32* @SIG_IGN, align 4
  %95 = call i32 @signal(i32 %93, i32 %94)
  %96 = load i32, i32* @SIGPIPE, align 4
  %97 = load i32, i32* @SIG_DFL, align 4
  %98 = call i32 @signal(i32 %96, i32 %97)
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = load i8*, i8** %3, align 8
  %102 = load i64, i64* %7, align 8
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  %104 = load i64, i64* %5, align 8
  %105 = load i64, i64* %7, align 8
  %106 = sub i64 %104, %105
  %107 = call i32 @xwrite(i32 %100, i8* %103, i64 %106)
  %108 = call i32 @_exit(i32 0) #3
  unreachable

109:                                              ; preds = %76
  br label %110

110:                                              ; preds = %109, %69, %39
  %111 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @close(i32 %112)
  %114 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %115 = load i32, i32* %114, align 4
  ret i32 %115
}

declare dso_local i64 @pipe(i32*) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i64 @write(i32, i8*, i64) #1

declare dso_local i64 @forkshell(%struct.job*, %union.node*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @xwrite(i32, i8*, i64) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
