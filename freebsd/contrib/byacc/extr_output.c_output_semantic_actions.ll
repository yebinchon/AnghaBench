; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_output.c_output_semantic_actions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_output.c_output_semantic_actions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@action_file = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@code_file = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @output_semantic_actions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_semantic_actions() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @action_file, align 4
  %4 = call i32 @rewind(i32 %3)
  %5 = load i32, i32* @action_file, align 4
  %6 = call i32 @getc(i32 %5)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* @EOF, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %36

10:                                               ; preds = %0
  %11 = load i32, i32* %1, align 4
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* @code_file, align 4
  %13 = load i32, i32* %1, align 4
  %14 = trunc i32 %13 to i8
  %15 = call i32 @putc_code(i32 %12, i8 signext %14)
  br label %16

16:                                               ; preds = %21, %10
  %17 = load i32, i32* @action_file, align 4
  %18 = call i32 @getc(i32 %17)
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* @EOF, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load i32, i32* @code_file, align 4
  %23 = load i32, i32* %1, align 4
  %24 = trunc i32 %23 to i8
  %25 = call i32 @putc_code(i32 %22, i8 signext %24)
  %26 = load i32, i32* %1, align 4
  store i32 %26, i32* %2, align 4
  br label %16

27:                                               ; preds = %16
  %28 = load i32, i32* %2, align 4
  %29 = icmp ne i32 %28, 10
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* @code_file, align 4
  %32 = call i32 @putc_code(i32 %31, i8 signext 10)
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i32, i32* @code_file, align 4
  %35 = call i32 @write_code_lineno(i32 %34)
  br label %36

36:                                               ; preds = %33, %9
  ret void
}

declare dso_local i32 @rewind(i32) #1

declare dso_local i32 @getc(i32) #1

declare dso_local i32 @putc_code(i32, i8 signext) #1

declare dso_local i32 @write_code_lineno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
