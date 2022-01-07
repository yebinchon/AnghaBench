; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_expr.c_get_symbol_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_expr.c_get_symbol_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@input_line_pointer = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @get_symbol_end() #0 {
  %1 = alloca i8, align 1
  %2 = load i64*, i64** @input_line_pointer, align 8
  %3 = getelementptr inbounds i64, i64* %2, i32 1
  store i64* %3, i64** @input_line_pointer, align 8
  %4 = load i64, i64* %2, align 8
  %5 = trunc i64 %4 to i8
  store i8 %5, i8* %1, align 1
  %6 = call i64 @is_name_beginner(i8 signext %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %0
  %9 = load i8, i8* %1, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %37

12:                                               ; preds = %8, %0
  br label %13

13:                                               ; preds = %26, %12
  %14 = load i64*, i64** @input_line_pointer, align 8
  %15 = getelementptr inbounds i64, i64* %14, i32 1
  store i64* %15, i64** @input_line_pointer, align 8
  %16 = load i64, i64* %14, align 8
  %17 = trunc i64 %16 to i8
  store i8 %17, i8* %1, align 1
  %18 = call i64 @is_part_of_name(i8 signext %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  %21 = load i8, i8* %1, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 1
  br label %24

24:                                               ; preds = %20, %13
  %25 = phi i1 [ true, %13 ], [ %23, %20 ]
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  br label %13

27:                                               ; preds = %24
  %28 = load i8, i8* %1, align 1
  %29 = call i64 @is_name_ender(i8 signext %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i64*, i64** @input_line_pointer, align 8
  %33 = getelementptr inbounds i64, i64* %32, i32 1
  store i64* %33, i64** @input_line_pointer, align 8
  %34 = load i64, i64* %32, align 8
  %35 = trunc i64 %34 to i8
  store i8 %35, i8* %1, align 1
  br label %36

36:                                               ; preds = %31, %27
  br label %37

37:                                               ; preds = %36, %8
  %38 = load i64*, i64** @input_line_pointer, align 8
  %39 = getelementptr inbounds i64, i64* %38, i32 -1
  store i64* %39, i64** @input_line_pointer, align 8
  store i64 0, i64* %39, align 8
  %40 = load i8, i8* %1, align 1
  ret i8 %40
}

declare dso_local i64 @is_name_beginner(i8 signext) #1

declare dso_local i64 @is_part_of_name(i8 signext) #1

declare dso_local i64 @is_name_ender(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
