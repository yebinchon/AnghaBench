; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_wrapper.c_xrealloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_wrapper.c_xrealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"Out of memory, realloc failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xrealloc(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = trunc i64 %7 to i32
  %9 = call i8* @realloc(i8* %6, i32 %8)
  store i8* %9, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i8*, i8** %3, align 8
  %17 = call i8* @realloc(i8* %16, i32 1)
  store i8* %17, i8** %5, align 8
  br label %18

18:                                               ; preds = %15, %12, %2
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %42, label %21

21:                                               ; preds = %18
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @release_pack_memory(i64 %22, i32 -1)
  %24 = load i8*, i8** %3, align 8
  %25 = load i64, i64* %4, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i8* @realloc(i8* %24, i32 %26)
  store i8* %27, i8** %5, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %21
  %31 = load i64, i64* %4, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i8*, i8** %3, align 8
  %35 = call i8* @realloc(i8* %34, i32 1)
  store i8* %35, i8** %5, align 8
  br label %36

36:                                               ; preds = %33, %30, %21
  %37 = load i8*, i8** %5, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = call i32 @die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %36
  br label %42

42:                                               ; preds = %41, %18
  %43 = load i8*, i8** %5, align 8
  ret i8* %43
}

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @release_pack_memory(i64, i32) #1

declare dso_local i32 @die(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
