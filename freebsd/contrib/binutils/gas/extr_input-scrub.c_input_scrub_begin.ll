; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_input-scrub.c_input_scrub_begin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_input-scrub.c_input_scrub_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BEFORE_STRING = common dso_local global i8* null, align 8
@BEFORE_SIZE = common dso_local global i64 0, align 8
@AFTER_STRING = common dso_local global i8* null, align 8
@AFTER_SIZE = common dso_local global i32 0, align 4
@buffer_length = common dso_local global i64 0, align 8
@buffer_start = common dso_local global i32 0, align 4
@logical_input_line = common dso_local global i32 0, align 4
@logical_input_file = common dso_local global i8* null, align 8
@physical_input_file = common dso_local global i32* null, align 8
@next_saved_file = common dso_local global i32* null, align 8
@flag_m68k_mri = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input_scrub_begin() #0 {
  %1 = load i8*, i8** @BEFORE_STRING, align 8
  %2 = call i32 @strlen(i8* %1)
  %3 = sext i32 %2 to i64
  %4 = load i64, i64* @BEFORE_SIZE, align 8
  %5 = icmp eq i64 %3, %4
  %6 = zext i1 %5 to i32
  %7 = call i32 @know(i32 %6)
  %8 = load i8*, i8** @AFTER_STRING, align 8
  %9 = call i32 @strlen(i8* %8)
  %10 = load i32, i32* @AFTER_SIZE, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %23, label %12

12:                                               ; preds = %0
  %13 = load i8*, i8** @AFTER_STRING, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i32, i32* @AFTER_SIZE, align 4
  %20 = icmp eq i32 %19, 1
  br label %21

21:                                               ; preds = %18, %12
  %22 = phi i1 [ false, %12 ], [ %20, %18 ]
  br label %23

23:                                               ; preds = %21, %0
  %24 = phi i1 [ true, %0 ], [ %22, %21 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @know(i32 %25)
  %27 = call i32 (...) @input_file_begin()
  %28 = call i64 (...) @input_file_buffer_size()
  store i64 %28, i64* @buffer_length, align 8
  %29 = load i64, i64* @BEFORE_SIZE, align 8
  %30 = load i64, i64* @buffer_length, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i64, i64* @buffer_length, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i32, i32* @AFTER_SIZE, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = call i32 @xmalloc(i64 %36)
  store i32 %37, i32* @buffer_start, align 4
  %38 = load i32, i32* @buffer_start, align 4
  %39 = load i8*, i8** @BEFORE_STRING, align 8
  %40 = load i64, i64* @BEFORE_SIZE, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @memcpy(i32 %38, i8* %39, i32 %41)
  store i32 -1, i32* @logical_input_line, align 4
  store i8* null, i8** @logical_input_file, align 8
  store i32* null, i32** @physical_input_file, align 8
  store i32* null, i32** @next_saved_file, align 8
  %43 = load i32, i32* @flag_m68k_mri, align 4
  %44 = call i32 @do_scrub_begin(i32 %43)
  ret void
}

declare dso_local i32 @know(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @input_file_begin(...) #1

declare dso_local i64 @input_file_buffer_size(...) #1

declare dso_local i32 @xmalloc(i64) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @do_scrub_begin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
