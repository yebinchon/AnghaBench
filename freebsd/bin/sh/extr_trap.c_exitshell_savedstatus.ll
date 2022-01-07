; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_trap.c_exitshell_savedstatus.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_trap.c_exitshell_savedstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jmploc = type { i32 }

@exiting = common dso_local global i32 0, align 4
@in_dotrap = common dso_local global i64 0, align 8
@last_trapsig = common dso_local global i32 0, align 4
@exiting_exitstatus = common dso_local global i32 0, align 4
@oexitstatus = common dso_local global i32 0, align 4
@exitstatus = common dso_local global i32 0, align 4
@handler = common dso_local global %struct.jmploc* null, align 8
@trap = common dso_local global i8** null, align 8
@evalskip = common dso_local global i64 0, align 8
@FORCEINTON = common dso_local global i32 0, align 4
@SIGSTOP = common dso_local global i32 0, align 4
@SIGTSTP = common dso_local global i32 0, align 4
@SIGTTIN = common dso_local global i32 0, align 4
@SIGTTOU = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@SIG_UNBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exitshell_savedstatus() #0 {
  %1 = alloca %struct.jmploc, align 4
  %2 = alloca %struct.jmploc, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* @exiting, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %0
  %9 = load i64, i64* @in_dotrap, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load i32, i32* @last_trapsig, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i32, i32* @last_trapsig, align 4
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 128
  store i32 %17, i32* @exiting_exitstatus, align 4
  br label %20

18:                                               ; preds = %11, %8
  %19 = load i32, i32* @oexitstatus, align 4
  store i32 %19, i32* @exiting_exitstatus, align 4
  br label %20

20:                                               ; preds = %18, %14
  br label %21

21:                                               ; preds = %20, %0
  %22 = load i32, i32* @exiting_exitstatus, align 4
  store i32 %22, i32* @oexitstatus, align 4
  store i32 %22, i32* @exitstatus, align 4
  %23 = getelementptr inbounds %struct.jmploc, %struct.jmploc* %1, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @setjmp(i32 %24) #4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %44, label %27

27:                                               ; preds = %21
  store %struct.jmploc* %1, %struct.jmploc** @handler, align 8
  %28 = load i8**, i8*** @trap, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %3, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = load i8*, i8** %3, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  store i64 0, i64* @evalskip, align 8
  %38 = load i8**, i8*** @trap, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 0
  store i8* null, i8** %39, align 8
  %40 = load i32, i32* @FORCEINTON, align 4
  %41 = load i8*, i8** %3, align 8
  %42 = call i32 @evalstring(i8* %41, i32 0)
  br label %43

43:                                               ; preds = %37, %32, %27
  br label %44

44:                                               ; preds = %43, %21
  %45 = getelementptr inbounds %struct.jmploc, %struct.jmploc* %2, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @setjmp(i32 %46) #4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  store %struct.jmploc* %2, %struct.jmploc** @handler, align 8
  %50 = load i32, i32* @FORCEINTON, align 4
  %51 = call i32 (...) @flushall()
  br label %52

52:                                               ; preds = %49, %44
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %83

55:                                               ; preds = %52
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @SIGSTOP, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %83

59:                                               ; preds = %55
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @SIGTSTP, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %83

63:                                               ; preds = %59
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @SIGTTIN, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %83

67:                                               ; preds = %63
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @SIGTTOU, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %67
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @SIG_DFL, align 4
  %74 = call i32 @signal(i32 %72, i32 %73)
  %75 = call i32 @sigemptyset(i32* %5)
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @sigaddset(i32* %5, i32 %76)
  %78 = load i32, i32* @SIG_UNBLOCK, align 4
  %79 = call i32 @sigprocmask(i32 %78, i32* %5, i32* null)
  %80 = call i32 (...) @getpid()
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @kill(i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %71, %67, %63, %59, %55, %52
  %84 = load i32, i32* @exiting_exitstatus, align 4
  %85 = call i32 @_exit(i32 %84) #5
  unreachable
}

; Function Attrs: returns_twice
declare dso_local i32 @setjmp(i32) #1

declare dso_local i32 @evalstring(i8*, i32) #2

declare dso_local i32 @flushall(...) #2

declare dso_local i32 @signal(i32, i32) #2

declare dso_local i32 @sigemptyset(i32*) #2

declare dso_local i32 @sigaddset(i32*, i32) #2

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #2

declare dso_local i32 @kill(i32, i32) #2

declare dso_local i32 @getpid(...) #2

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { returns_twice }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
