; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_init_target_chars.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_init_target_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i8)* }

@init_target_chars.init = internal global i32 0, align 4
@lang_hooks = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@target_newline = common dso_local global i64 0, align 8
@target_percent = common dso_local global i64 0, align 8
@target_c = common dso_local global i64 0, align 8
@target_s = common dso_local global i64 0, align 8
@target_percent_c = common dso_local global i8* null, align 8
@target_percent_s = common dso_local global i8* null, align 8
@target_percent_s_newline = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @init_target_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_target_chars() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @init_target_chars.init, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %60, label %4

4:                                                ; preds = %0
  %5 = load i64 (i8)*, i64 (i8)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lang_hooks, i32 0, i32 0), align 8
  %6 = call i64 %5(i8 signext 10)
  store i64 %6, i64* @target_newline, align 8
  %7 = load i64 (i8)*, i64 (i8)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lang_hooks, i32 0, i32 0), align 8
  %8 = call i64 %7(i8 signext 37)
  store i64 %8, i64* @target_percent, align 8
  %9 = load i64 (i8)*, i64 (i8)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lang_hooks, i32 0, i32 0), align 8
  %10 = call i64 %9(i8 signext 99)
  store i64 %10, i64* @target_c, align 8
  %11 = load i64 (i8)*, i64 (i8)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lang_hooks, i32 0, i32 0), align 8
  %12 = call i64 %11(i8 signext 115)
  store i64 %12, i64* @target_s, align 8
  %13 = load i64, i64* @target_newline, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %4
  %16 = load i64, i64* @target_percent, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load i64, i64* @target_c, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i64, i64* @target_s, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %18, %15, %4
  store i32 0, i32* %1, align 4
  br label %61

25:                                               ; preds = %21
  %26 = load i64, i64* @target_percent, align 8
  %27 = trunc i64 %26 to i8
  %28 = load i8*, i8** @target_percent_c, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  store i8 %27, i8* %29, align 1
  %30 = load i64, i64* @target_c, align 8
  %31 = trunc i64 %30 to i8
  %32 = load i8*, i8** @target_percent_c, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  store i8 %31, i8* %33, align 1
  %34 = load i8*, i8** @target_percent_c, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 2
  store i8 0, i8* %35, align 1
  %36 = load i64, i64* @target_percent, align 8
  %37 = trunc i64 %36 to i8
  %38 = load i8*, i8** @target_percent_s, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  store i8 %37, i8* %39, align 1
  %40 = load i64, i64* @target_s, align 8
  %41 = trunc i64 %40 to i8
  %42 = load i8*, i8** @target_percent_s, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  store i8 %41, i8* %43, align 1
  %44 = load i8*, i8** @target_percent_s, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 2
  store i8 0, i8* %45, align 1
  %46 = load i64, i64* @target_percent, align 8
  %47 = trunc i64 %46 to i8
  %48 = load i8*, i8** @target_percent_s_newline, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  store i8 %47, i8* %49, align 1
  %50 = load i64, i64* @target_s, align 8
  %51 = trunc i64 %50 to i8
  %52 = load i8*, i8** @target_percent_s_newline, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  store i8 %51, i8* %53, align 1
  %54 = load i64, i64* @target_newline, align 8
  %55 = trunc i64 %54 to i8
  %56 = load i8*, i8** @target_percent_s_newline, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 2
  store i8 %55, i8* %57, align 1
  %58 = load i8*, i8** @target_percent_s_newline, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 3
  store i8 0, i8* %59, align 1
  store i32 1, i32* @init_target_chars.init, align 4
  br label %60

60:                                               ; preds = %25, %0
  store i32 1, i32* %1, align 4
  br label %61

61:                                               ; preds = %60, %24
  %62 = load i32, i32* %1, align 4
  ret i32 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
