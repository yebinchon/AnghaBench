; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ls/extr_print.c_printname.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ls/extr_print.c_printname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@f_octal = common dso_local global i64 0, align 8
@f_octal_escape = common dso_local global i64 0, align 8
@f_nonprint = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @printname(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i64, i64* @f_octal, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i64, i64* @f_octal_escape, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6, %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @prn_octal(i8* %10)
  store i32 %11, i32* %2, align 4
  br label %21

12:                                               ; preds = %6
  %13 = load i64, i64* @f_nonprint, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @prn_printable(i8* %16)
  store i32 %17, i32* %2, align 4
  br label %21

18:                                               ; preds = %12
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @prn_normal(i8* %19)
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %18, %15, %9
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @prn_octal(i8*) #1

declare dso_local i32 @prn_printable(i8*) #1

declare dso_local i32 @prn_normal(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
