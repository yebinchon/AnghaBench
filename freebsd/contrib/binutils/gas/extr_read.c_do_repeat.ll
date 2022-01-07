; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_do_repeat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_do_repeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_line_sb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%s without %s\00", align 1
@input_line_pointer = common dso_local global i32 0, align 4
@buffer_limit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_repeat(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = call i32 @sb_new(i32* %7)
  %10 = load i8*, i8** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* @get_line_sb, align 4
  %13 = call i32 @buffer_and_nest(i8* %10, i8* %11, i32* %7, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = call i32 @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @as_bad(i32 %16, i8* %17, i8* %18)
  br label %34

20:                                               ; preds = %3
  %21 = call i32 @sb_new(i32* %8)
  br label %22

22:                                               ; preds = %26, %20
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %4, align 4
  %25 = icmp sgt i32 %23, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 @sb_add_sb(i32* %8, i32* %7)
  br label %22

28:                                               ; preds = %22
  %29 = call i32 @sb_kill(i32* %7)
  %30 = load i32, i32* @input_line_pointer, align 4
  %31 = call i32 @input_scrub_include_sb(i32* %8, i32 %30, i32 1)
  %32 = call i32 @sb_kill(i32* %8)
  %33 = call i32 @input_scrub_next_buffer(i32* @input_line_pointer)
  store i32 %33, i32* @buffer_limit, align 4
  br label %34

34:                                               ; preds = %28, %15
  ret void
}

declare dso_local i32 @sb_new(i32*) #1

declare dso_local i32 @buffer_and_nest(i8*, i8*, i32*, i32) #1

declare dso_local i32 @as_bad(i32, i8*, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @sb_add_sb(i32*, i32*) #1

declare dso_local i32 @sb_kill(i32*) #1

declare dso_local i32 @input_scrub_include_sb(i32*, i32, i32) #1

declare dso_local i32 @input_scrub_next_buffer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
