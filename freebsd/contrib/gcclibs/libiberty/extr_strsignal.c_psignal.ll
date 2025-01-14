; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_strsignal.c_psignal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_strsignal.c_psignal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@signal_names = common dso_local global i32* null, align 8
@sys_nsig = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s: unknown signal\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@sys_siglist = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @psignal(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32*, i32** @signal_names, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = call i32 (...) @init_signal_tables()
  br label %9

9:                                                ; preds = %7, %2
  %10 = load i32, i32* %3, align 4
  %11 = icmp sle i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @sys_nsig, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %12, %9
  %17 = load i32, i32* @stderr, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %18)
  br label %29

20:                                               ; preds = %12
  %21 = load i32, i32* @stderr, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = load i8**, i8*** @sys_siglist, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %22, i8* %27)
  br label %29

29:                                               ; preds = %20, %16
  ret void
}

declare dso_local i32 @init_signal_tables(...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
