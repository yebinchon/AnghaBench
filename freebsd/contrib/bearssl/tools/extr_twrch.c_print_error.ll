; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_twrch.c_print_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_twrch.c_print_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"ERR %d: %s\0A   %s\0A\00", align 1
@BR_ERR_RECV_FATAL_ALERT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"ERR %d: received fatal alert %d\0A\00", align 1
@BR_ERR_SEND_FATAL_ALERT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"ERR %d: sent fatal alert %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"ERR %d: UNKNOWN\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @print_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_error(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i8* @find_error_name(i32 %5, i8** %4)
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load i32, i32* @stderr, align 4
  %11 = load i32, i32* %2, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %11, i8* %12, i8* %13)
  br label %51

15:                                               ; preds = %1
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @BR_ERR_RECV_FATAL_ALERT, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @BR_ERR_RECV_FATAL_ALERT, align 4
  %22 = add nsw i32 %21, 256
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load i32, i32* @stderr, align 4
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @BR_ERR_RECV_FATAL_ALERT, align 4
  %29 = sub nsw i32 %27, %28
  %30 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %29)
  br label %51

31:                                               ; preds = %19, %15
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @BR_ERR_SEND_FATAL_ALERT, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %31
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @BR_ERR_SEND_FATAL_ALERT, align 4
  %38 = add nsw i32 %37, 256
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load i32, i32* @stderr, align 4
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* @BR_ERR_SEND_FATAL_ALERT, align 4
  %45 = sub nsw i32 %43, %44
  %46 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %42, i32 %45)
  br label %51

47:                                               ; preds = %35, %31
  %48 = load i32, i32* @stderr, align 4
  %49 = load i32, i32* %2, align 4
  %50 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %47, %40, %24, %9
  ret void
}

declare dso_local i8* @find_error_name(i32, i8**) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
