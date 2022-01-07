; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_config.c_get_base_var.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_config.c_get_base_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@config_file_eof = common dso_local global i64 0, align 8
@MAXNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @get_base_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_base_var(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %39, %1
  %7 = call i32 (...) @get_next_char()
  store i32 %7, i32* %5, align 4
  %8 = load i64, i64* @config_file_eof, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store i32 -1, i32* %2, align 4
  br label %47

11:                                               ; preds = %6
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 93
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %47

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @isspace(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i8*, i8** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @get_extended_base_var(i8* %21, i32 %22, i32 %23)
  store i32 %24, i32* %2, align 4
  br label %47

25:                                               ; preds = %16
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @iskeychar(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 46
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 -1, i32* %2, align 4
  br label %47

33:                                               ; preds = %29, %25
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @MAXNAME, align 4
  %36 = sdiv i32 %35, 2
  %37 = icmp sgt i32 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 -1, i32* %2, align 4
  br label %47

39:                                               ; preds = %33
  %40 = load i32, i32* %5, align 4
  %41 = call signext i8 @tolower(i32 %40)
  %42 = load i8*, i8** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  store i8 %41, i8* %46, align 1
  br label %6

47:                                               ; preds = %38, %32, %20, %14, %10
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @get_next_char(...) #1

declare dso_local i64 @isspace(i32) #1

declare dso_local i32 @get_extended_base_var(i8*, i32, i32) #1

declare dso_local i32 @iskeychar(i32) #1

declare dso_local signext i8 @tolower(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
