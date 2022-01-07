; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_demand_copy_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_demand_copy_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@input_line_pointer = common dso_local global i8* null, align 8
@notes = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"missing string\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @demand_copy_string(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = call i32 (...) @SKIP_WHITESPACE()
  %7 = load i8*, i8** @input_line_pointer, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 34
  br i1 %10, label %11, label %27

11:                                               ; preds = %1
  %12 = load i8*, i8** @input_line_pointer, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** @input_line_pointer, align 8
  br label %14

14:                                               ; preds = %18, %11
  %15 = call i32 (...) @next_char_of_string()
  store i32 %15, i32* %3, align 4
  %16 = call i64 @is_a_char(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = trunc i32 %19 to i8
  %21 = call i32 @obstack_1grow(i32* @notes, i8 signext %20)
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %14

24:                                               ; preds = %14
  %25 = call i32 @obstack_1grow(i32* @notes, i8 signext 0)
  %26 = call i8* @obstack_finish(i32* @notes)
  store i8* %26, i8** %5, align 8
  br label %31

27:                                               ; preds = %1
  %28 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 @as_bad(i32 %28)
  store i8* null, i8** %5, align 8
  %30 = call i32 (...) @ignore_rest_of_line()
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i32, i32* %4, align 4
  %33 = load i32*, i32** %2, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i8*, i8** %5, align 8
  ret i8* %34
}

declare dso_local i32 @SKIP_WHITESPACE(...) #1

declare dso_local i64 @is_a_char(i32) #1

declare dso_local i32 @next_char_of_string(...) #1

declare dso_local i32 @obstack_1grow(i32*, i8 signext) #1

declare dso_local i8* @obstack_finish(i32*) #1

declare dso_local i32 @as_bad(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @ignore_rest_of_line(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
