; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_text.c_atf_text_for_each_word.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_text.c_atf_text_for_each_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atf_text_for_each_word(i8* %0, i8* %1, i32 (i8*, i8*)* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32 (i8*, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 (i8*, i8*)* %2, i32 (i8*, i8*)** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i8* @strdup(i8* %13)
  store i8* %14, i8** %10, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = call i32 (...) @atf_no_memory_error()
  store i32 %18, i32* %9, align 4
  br label %44

19:                                               ; preds = %4
  %20 = call i32 (...) @atf_no_error()
  store i32 %20, i32* %9, align 4
  %21 = load i8*, i8** %10, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i8* @strtok_r(i8* %21, i8* %22, i8** %12)
  store i8* %23, i8** %11, align 8
  br label %24

24:                                               ; preds = %34, %19
  %25 = load i8*, i8** %11, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @atf_is_error(i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %27, %24
  %33 = phi i1 [ false, %24 ], [ %31, %27 ]
  br i1 %33, label %34, label %41

34:                                               ; preds = %32
  %35 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %7, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 %35(i8* %36, i8* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = call i8* @strtok_r(i8* null, i8* %39, i8** %12)
  store i8* %40, i8** %11, align 8
  br label %24

41:                                               ; preds = %32
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 @free(i8* %42)
  br label %44

44:                                               ; preds = %41, %17
  %45 = load i32, i32* %9, align 4
  ret i32 %45
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @atf_no_memory_error(...) #1

declare dso_local i32 @atf_no_error(...) #1

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

declare dso_local i32 @atf_is_error(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
