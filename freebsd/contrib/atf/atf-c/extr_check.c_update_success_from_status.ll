; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_check.c_update_success_from_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_check.c_update_success_from_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXIT_SUCCESS = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%s failed with exit code %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"%s failed due to signal %d%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c" (core dumped)\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"%s failed due to unknown reason\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*)* @update_success_from_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_success_from_status(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i64 @atf_process_status_exited(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @atf_process_status_exitstatus(i32* %12)
  %14 = sext i32 %13 to i64
  %15 = load i64, i64* @EXIT_SUCCESS, align 8
  %16 = icmp eq i64 %14, %15
  br label %17

17:                                               ; preds = %11, %3
  %18 = phi i1 [ false, %3 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %7, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = call i64 @atf_process_status_exited(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %17
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @atf_process_status_exitstatus(i32* %24)
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* @EXIT_SUCCESS, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @INV(i32 %30)
  br label %43

32:                                               ; preds = %23
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @INV(i32 %36)
  %38 = load i32, i32* @stderr, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @atf_process_status_exitstatus(i32* %40)
  %42 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %39, i32 %41)
  br label %43

43:                                               ; preds = %32, %29
  br label %74

44:                                               ; preds = %17
  %45 = load i32*, i32** %5, align 8
  %46 = call i64 @atf_process_status_signaled(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %44
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @INV(i32 %52)
  %54 = load i32, i32* @stderr, align 4
  %55 = load i8*, i8** %4, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @atf_process_status_termsig(i32* %56)
  %58 = load i32*, i32** %5, align 8
  %59 = call i64 @atf_process_status_coredump(i32* %58)
  %60 = icmp ne i64 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %63 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %55, i32 %57, i8* %62)
  br label %73

64:                                               ; preds = %44
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = call i32 @INV(i32 %68)
  %70 = load i32, i32* @stderr, align 4
  %71 = load i8*, i8** %4, align 8
  %72 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %70, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %71)
  br label %73

73:                                               ; preds = %64, %48
  br label %74

74:                                               ; preds = %73, %43
  %75 = load i32, i32* %7, align 4
  %76 = load i32*, i32** %6, align 8
  store i32 %75, i32* %76, align 4
  ret void
}

declare dso_local i64 @atf_process_status_exited(i32*) #1

declare dso_local i32 @atf_process_status_exitstatus(i32*) #1

declare dso_local i32 @INV(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i64 @atf_process_status_signaled(i32*) #1

declare dso_local i32 @atf_process_status_termsig(i32*) #1

declare dso_local i64 @atf_process_status_coredump(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
