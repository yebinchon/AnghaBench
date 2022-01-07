; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_completer.c_line_completion_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_completer.c_line_completion_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)* }

@line_completion_function.list = internal global i8** null, align 8
@line_completion_function.index = internal global i32 0, align 4
@current_language = common dso_local global %struct.TYPE_2__* null, align 8
@rl_completer_word_break_characters = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i8*, i32)* @line_completion_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @line_completion_function(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i8* null, i8** %9, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %4
  %13 = load i8**, i8*** @line_completion_function.list, align 8
  %14 = icmp ne i8** %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i8**, i8*** @line_completion_function.list, align 8
  %17 = call i32 @xfree(i8** %16)
  br label %18

18:                                               ; preds = %15, %12
  store i32 0, i32* @line_completion_function.index, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i8** @complete_line(i8* %19, i8* %20, i32 %21)
  store i8** %22, i8*** @line_completion_function.list, align 8
  br label %23

23:                                               ; preds = %18, %4
  %24 = load i8**, i8*** @line_completion_function.list, align 8
  %25 = icmp ne i8** %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load i8**, i8*** @line_completion_function.list, align 8
  %28 = load i32, i32* @line_completion_function.index, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %9, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @line_completion_function.index, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* @line_completion_function.index, align 4
  br label %37

37:                                               ; preds = %34, %26
  br label %38

38:                                               ; preds = %37, %23
  %39 = load i8*, i8** %9, align 8
  ret i8* %39
}

declare dso_local i32 @xfree(i8**) #1

declare dso_local i8** @complete_line(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
