; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_s_irp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_s_irp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@input_line_pointer = common dso_local global i8* null, align 8
@get_line_sb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@buffer_limit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s_irp(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = call i32 @as_where(i8** %3, i32* %5)
  %10 = call i32 @sb_new(i32* %6)
  %11 = load i8*, i8** @input_line_pointer, align 8
  %12 = call i8* @find_end_of_line(i8* %11, i32 0)
  store i8* %12, i8** %4, align 8
  %13 = load i8*, i8** @input_line_pointer, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load i8*, i8** @input_line_pointer, align 8
  %16 = ptrtoint i8* %14 to i64
  %17 = ptrtoint i8* %15 to i64
  %18 = sub i64 %16, %17
  %19 = trunc i64 %18 to i32
  %20 = call i32 @sb_add_buffer(i32* %6, i8* %13, i32 %19)
  %21 = load i8*, i8** %4, align 8
  store i8* %21, i8** @input_line_pointer, align 8
  %22 = call i32 @sb_new(i32* %8)
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @get_line_sb, align 4
  %25 = call i8* @expand_irp(i32 %23, i32 0, i32* %6, i32* %8, i32 %24)
  store i8* %25, i8** %7, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load i8*, i8** %3, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @as_bad_where(i8* %29, i32 %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %28, %1
  %34 = call i32 @sb_kill(i32* %6)
  %35 = load i8*, i8** @input_line_pointer, align 8
  %36 = call i32 @input_scrub_include_sb(i32* %8, i8* %35, i32 1)
  %37 = call i32 @sb_kill(i32* %8)
  %38 = call i32 @input_scrub_next_buffer(i8** @input_line_pointer)
  store i32 %38, i32* @buffer_limit, align 4
  ret void
}

declare dso_local i32 @as_where(i8**, i32*) #1

declare dso_local i32 @sb_new(i32*) #1

declare dso_local i8* @find_end_of_line(i8*, i32) #1

declare dso_local i32 @sb_add_buffer(i32*, i8*, i32) #1

declare dso_local i8* @expand_irp(i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @as_bad_where(i8*, i32, i8*, i8*) #1

declare dso_local i32 @sb_kill(i32*) #1

declare dso_local i32 @input_scrub_include_sb(i32*, i8*, i32) #1

declare dso_local i32 @input_scrub_next_buffer(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
