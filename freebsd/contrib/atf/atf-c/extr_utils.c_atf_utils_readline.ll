; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_utils.c_atf_utils_readline.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_utils.c_atf_utils_readline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @atf_utils_readline(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = call i32 @atf_dynstr_init(i32* %6)
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = call i32 @atf_is_error(i32 %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @ATF_REQUIRE(i32 %13)
  br label %15

15:                                               ; preds = %26, %1
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @read(i32 %16, i8* %4, i32 1)
  store i32 %17, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp eq i64 %18, 1
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i8, i8* %4, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 10
  br label %24

24:                                               ; preds = %20, %15
  %25 = phi i1 [ false, %15 ], [ %23, %20 ]
  br i1 %25, label %26, label %35

26:                                               ; preds = %24
  %27 = load i8, i8* %4, align 1
  %28 = call i32 @atf_dynstr_append_fmt(i32* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8 signext %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @atf_is_error(i32 %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @ATF_REQUIRE(i32 %33)
  br label %15

35:                                               ; preds = %24
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, -1
  %38 = zext i1 %37 to i32
  %39 = call i32 @ATF_REQUIRE(i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = call i64 @atf_dynstr_length(i32* %6)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = call i32 @atf_dynstr_fini(i32* %6)
  store i8* null, i8** %2, align 8
  br label %49

47:                                               ; preds = %42, %35
  %48 = call i8* @atf_dynstr_fini_disown(i32* %6)
  store i8* %48, i8** %2, align 8
  br label %49

49:                                               ; preds = %47, %45
  %50 = load i8*, i8** %2, align 8
  ret i8* %50
}

declare dso_local i32 @atf_dynstr_init(i32*) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i32 @atf_is_error(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @atf_dynstr_append_fmt(i32*, i8*, i8 signext) #1

declare dso_local i64 @atf_dynstr_length(i32*) #1

declare dso_local i32 @atf_dynstr_fini(i32*) #1

declare dso_local i8* @atf_dynstr_fini_disown(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
