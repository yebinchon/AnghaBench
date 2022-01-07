; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_demand_empty_rest_of_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_demand_empty_rest_of_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@is_end_of_line = common dso_local global i64* null, align 8
@input_line_pointer = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [58 x i8] c"junk at end of line, first unrecognized character is `%c'\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"junk at end of line, first unrecognized character valued 0x%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @demand_empty_rest_of_line() #0 {
  %1 = call i32 (...) @SKIP_WHITESPACE()
  %2 = load i64*, i64** @is_end_of_line, align 8
  %3 = load i64*, i64** @input_line_pointer, align 8
  %4 = load i64, i64* %3, align 8
  %5 = trunc i64 %4 to i8
  %6 = zext i8 %5 to i64
  %7 = getelementptr inbounds i64, i64* %2, i64 %6
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load i64*, i64** @input_line_pointer, align 8
  %12 = getelementptr inbounds i64, i64* %11, i32 1
  store i64* %12, i64** @input_line_pointer, align 8
  br label %30

13:                                               ; preds = %0
  %14 = load i64*, i64** @input_line_pointer, align 8
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @ISPRINT(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = call i32 @_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %20 = load i64*, i64** @input_line_pointer, align 8
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @as_bad(i32 %19, i64 %21)
  br label %28

23:                                               ; preds = %13
  %24 = call i32 @_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i64*, i64** @input_line_pointer, align 8
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @as_bad(i32 %24, i64 %26)
  br label %28

28:                                               ; preds = %23, %18
  %29 = call i32 (...) @ignore_rest_of_line()
  br label %30

30:                                               ; preds = %28, %10
  %31 = load i64*, i64** @is_end_of_line, align 8
  %32 = load i64*, i64** @input_line_pointer, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 -1
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i8
  %36 = zext i8 %35 to i64
  %37 = getelementptr inbounds i64, i64* %31, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @know(i64 %38)
  ret void
}

declare dso_local i32 @SKIP_WHITESPACE(...) #1

declare dso_local i64 @ISPRINT(i64) #1

declare dso_local i32 @as_bad(i32, i64) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @ignore_rest_of_line(...) #1

declare dso_local i32 @know(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
