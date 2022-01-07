; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dma/extr_util.c_do_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dma/extr_util.c_do_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i64, i32 }

@sigalrm_handler = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"can not set signal handler: %m\00", align 1
@sigbuf = common dso_local global i32 0, align 4
@sigbuf_valid = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"can not remove signal handler: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_timeout(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sigaction, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i32 0, i32 2
  %8 = call i32 @sigemptyset(i32* %7)
  %9 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i32 0, i32 1
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %2
  %13 = load i32, i32* @sigalrm_handler, align 4
  %14 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i32 0, i32 0
  store i32 %13, i32* %14, align 8
  %15 = load i32, i32* @SIGALRM, align 4
  %16 = call i64 @sigaction(i32 %15, %struct.sigaction* %5, i32* null)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i32, i32* @LOG_WARNING, align 4
  %20 = call i32 @syslog(i32 %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %12
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i32, i32* @sigbuf, align 4
  %26 = call i32 @sigsetjmp(i32 %25, i32 1) #3
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %35

30:                                               ; preds = %24
  store i32 1, i32* @sigbuf_valid, align 4
  br label %31

31:                                               ; preds = %30, %21
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @alarm(i32 %32)
  br label %46

34:                                               ; preds = %2
  br label %35

35:                                               ; preds = %34, %29
  %36 = call i32 @alarm(i32 0)
  %37 = load i32, i32* @SIG_IGN, align 4
  %38 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i32 0, i32 0
  store i32 %37, i32* %38, align 8
  %39 = load i32, i32* @SIGALRM, align 4
  %40 = call i64 @sigaction(i32 %39, %struct.sigaction* %5, i32* null)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* @LOG_WARNING, align 4
  %44 = call i32 @syslog(i32 %43, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %35
  store i32 0, i32* @sigbuf_valid, align 4
  br label %46

46:                                               ; preds = %45, %31
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i64 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @syslog(i32, i8*) #1

; Function Attrs: returns_twice
declare dso_local i32 @sigsetjmp(i32, i32) #2

declare dso_local i32 @alarm(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
