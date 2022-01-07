; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/lib/extr_c-stack.c_die.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/lib/extr_c-stack.c_die.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@program_error_message = common dso_local global i8* null, align 8
@stack_overflow_message = common dso_local global i8* null, align 8
@STDERR_FILENO = common dso_local global i32 0, align 4
@program_name = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@exit_failure = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @die to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @die(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @segv_action(i32 %4)
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i8*, i8** @program_error_message, align 8
  br label %12

10:                                               ; preds = %1
  %11 = load i8*, i8** @stack_overflow_message, align 8
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i8* [ %9, %8 ], [ %11, %10 ]
  store i8* %13, i8** %3, align 8
  %14 = load i32, i32* @STDERR_FILENO, align 4
  %15 = load i8*, i8** @program_name, align 8
  %16 = load i8*, i8** @program_name, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = call i32 @write(i32 %14, i8* %15, i32 %17)
  %19 = load i32, i32* @STDERR_FILENO, align 4
  %20 = call i32 @write(i32 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %21 = load i32, i32* @STDERR_FILENO, align 4
  %22 = load i8*, i8** %3, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = call i32 @write(i32 %21, i8* %22, i32 %24)
  %26 = load i32, i32* @STDERR_FILENO, align 4
  %27 = call i32 @write(i32 %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %28 = load i32, i32* %2, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %12
  %31 = load i32, i32* @exit_failure, align 4
  %32 = call i32 @_exit(i32 %31) #3
  unreachable

33:                                               ; preds = %12
  %34 = call i32 (...) @getpid()
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @kill(i32 %34, i32 %35)
  %37 = call i32 (...) @abort() #3
  unreachable
}

declare dso_local i32 @segv_action(i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @getpid(...) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
