; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_nm.c_set_print_radix.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_nm.c_set_print_radix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@print_radix = common dso_local global i32 0, align 4
@value_format_32bit = common dso_local global i8* null, align 8
@value_format_64bit = common dso_local global i8* null, align 8
@desc_format = common dso_local global i8* null, align 8
@other_format = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"%s: invalid radix\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @set_print_radix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_print_radix(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i8, i8* %3, align 1
  %5 = sext i8 %4 to i32
  switch i32 %5, label %29 [
    i32 120, label %6
    i32 100, label %7
    i32 111, label %7
  ]

6:                                                ; preds = %1
  br label %33

7:                                                ; preds = %1, %1
  %8 = load i8*, i8** %2, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 100
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  store i32 10, i32* @print_radix, align 4
  br label %14

13:                                               ; preds = %7
  store i32 8, i32* @print_radix, align 4
  br label %14

14:                                               ; preds = %13, %12
  %15 = load i8*, i8** %2, align 8
  %16 = load i8, i8* %15, align 1
  %17 = load i8*, i8** @value_format_32bit, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 4
  store i8 %16, i8* %18, align 1
  %19 = load i8*, i8** %2, align 8
  %20 = load i8, i8* %19, align 1
  %21 = load i8*, i8** @value_format_64bit, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 5
  store i8 %20, i8* %22, align 1
  %23 = load i8*, i8** %2, align 8
  %24 = load i8, i8* %23, align 1
  %25 = load i8*, i8** @desc_format, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 3
  store i8 %24, i8* %26, align 1
  %27 = load i8*, i8** @other_format, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 3
  store i8 %24, i8* %28, align 1
  br label %33

29:                                               ; preds = %1
  %30 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %31 = load i8*, i8** %2, align 8
  %32 = call i32 @fatal(i32 %30, i8* %31)
  br label %33

33:                                               ; preds = %29, %14, %6
  ret void
}

declare dso_local i32 @fatal(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
