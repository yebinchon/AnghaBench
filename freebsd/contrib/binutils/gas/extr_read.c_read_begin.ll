; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_read_begin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_read_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@notes = common dso_local global i32 0, align 4
@chunksize = common dso_local global i32 0, align 4
@cond_obstack = common dso_local global i32 0, align 4
@line_separator_chars = common dso_local global i8* null, align 8
@is_end_of_line = common dso_local global i32* null, align 8
@flag_mri = common dso_local global i64 0, align 8
@lex_type = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_begin() #0 {
  %1 = alloca i8*, align 8
  %2 = call i32 (...) @pobegin()
  %3 = call i32 (...) @obj_read_begin_hook()
  %4 = load i32, i32* @chunksize, align 4
  %5 = call i32 @obstack_begin(i32* @notes, i32 %4)
  %6 = load i32, i32* @chunksize, align 4
  %7 = call i32 @obstack_begin(i32* @cond_obstack, i32 %6)
  %8 = load i8*, i8** @line_separator_chars, align 8
  store i8* %8, i8** %1, align 8
  br label %9

9:                                                ; preds = %19, %0
  %10 = load i8*, i8** %1, align 8
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = load i32*, i32** @is_end_of_line, align 8
  %15 = load i8*, i8** %1, align 8
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  store i32 1, i32* %18, align 4
  br label %19

19:                                               ; preds = %13
  %20 = load i8*, i8** %1, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %1, align 8
  br label %9

22:                                               ; preds = %9
  %23 = load i64, i64* @flag_mri, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32*, i32** @lex_type, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 63
  store i32 3, i32* %27, align 4
  br label %28

28:                                               ; preds = %25, %22
  ret void
}

declare dso_local i32 @pobegin(...) #1

declare dso_local i32 @obj_read_begin_hook(...) #1

declare dso_local i32 @obstack_begin(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
