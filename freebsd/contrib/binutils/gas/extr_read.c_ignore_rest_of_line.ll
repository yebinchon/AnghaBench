; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_ignore_rest_of_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_ignore_rest_of_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@input_line_pointer = common dso_local global i64* null, align 8
@buffer_limit = common dso_local global i64* null, align 8
@is_end_of_line = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ignore_rest_of_line() #0 {
  br label %1

1:                                                ; preds = %17, %0
  %2 = load i64*, i64** @input_line_pointer, align 8
  %3 = load i64*, i64** @buffer_limit, align 8
  %4 = icmp ult i64* %2, %3
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = load i32*, i32** @is_end_of_line, align 8
  %7 = load i64*, i64** @input_line_pointer, align 8
  %8 = load i64, i64* %7, align 8
  %9 = trunc i64 %8 to i8
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds i32, i32* %6, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br label %15

15:                                               ; preds = %5, %1
  %16 = phi i1 [ false, %1 ], [ %14, %5 ]
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = load i64*, i64** @input_line_pointer, align 8
  %19 = getelementptr inbounds i64, i64* %18, i32 1
  store i64* %19, i64** @input_line_pointer, align 8
  br label %1

20:                                               ; preds = %15
  %21 = load i64*, i64** @input_line_pointer, align 8
  %22 = getelementptr inbounds i64, i64* %21, i32 1
  store i64* %22, i64** @input_line_pointer, align 8
  %23 = load i32*, i32** @is_end_of_line, align 8
  %24 = load i64*, i64** @input_line_pointer, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 -1
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i8
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds i32, i32* %23, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @know(i32 %30)
  ret void
}

declare dso_local i32 @know(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
