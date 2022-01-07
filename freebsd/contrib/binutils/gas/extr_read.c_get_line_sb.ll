; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_get_line_sb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_get_line_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@input_line_pointer = common dso_local global i8* null, align 8
@buffer_limit = common dso_local global i8* null, align 8
@flag_m68k_mri = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @get_line_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_line_sb(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i8*, i8** @input_line_pointer, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 -1
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 10
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 (...) @bump_line_counters()
  br label %12

12:                                               ; preds = %10, %1
  %13 = load i8*, i8** @input_line_pointer, align 8
  %14 = load i8*, i8** @buffer_limit, align 8
  %15 = icmp uge i8* %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = call i8* @input_scrub_next_buffer(i8** @input_line_pointer)
  store i8* %17, i8** @buffer_limit, align 8
  %18 = load i8*, i8** @buffer_limit, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %40

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %21, %12
  %23 = load i8*, i8** @input_line_pointer, align 8
  %24 = load i32, i32* @flag_m68k_mri, align 4
  %25 = call i8* @find_end_of_line(i8* %23, i32 %24)
  store i8* %25, i8** %4, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = load i8*, i8** @input_line_pointer, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = load i8*, i8** @input_line_pointer, align 8
  %30 = ptrtoint i8* %28 to i64
  %31 = ptrtoint i8* %29 to i64
  %32 = sub i64 %30, %31
  %33 = trunc i64 %32 to i32
  %34 = call i32 @sb_add_buffer(i32* %26, i8* %27, i32 %33)
  %35 = load i8*, i8** %4, align 8
  store i8* %35, i8** @input_line_pointer, align 8
  %36 = load i8*, i8** @input_line_pointer, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** @input_line_pointer, align 8
  %38 = load i8, i8* %36, align 1
  %39 = sext i8 %38 to i32
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %22, %20
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @bump_line_counters(...) #1

declare dso_local i8* @input_scrub_next_buffer(i8**) #1

declare dso_local i8* @find_end_of_line(i8*, i32) #1

declare dso_local i32 @sb_add_buffer(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
