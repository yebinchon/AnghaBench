; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_offset_in_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_offset_in_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@use_rela_relocations = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s shortened to %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @offset_in_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @offset_in_range(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [40 x i8], align 16
  %7 = alloca [40 x i8], align 16
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %12 [
    i32 1, label %9
    i32 2, label %10
    i32 4, label %11
  ]

9:                                                ; preds = %2
  store i32 255, i32* %5, align 4
  br label %14

10:                                               ; preds = %2
  store i32 65535, i32* %5, align 4
  br label %14

11:                                               ; preds = %2
  store i32 -1, i32* %5, align 4
  br label %14

12:                                               ; preds = %2
  %13 = call i32 (...) @abort() #3
  unreachable

14:                                               ; preds = %11, %10, %9
  %15 = load i32, i32* @use_rela_relocations, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, 0
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = xor i32 %22, -2147483648
  %24 = sub nsw i32 %23, -2147483648
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %21, %17
  br label %26

26:                                               ; preds = %25, %14
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %5, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %26
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* %5, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = load i32, i32* %5, align 4
  %38 = xor i32 %37, -1
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %32
  %41 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 0
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @sprint_value(i8* %41, i32 %42)
  %44 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %5, align 4
  %47 = and i32 %45, %46
  %48 = call i32 @sprint_value(i8* %44, i32 %47)
  %49 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %50 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 0
  %51 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %52 = call i32 @as_warn(i32 %49, i8* %50, i8* %51)
  br label %53

53:                                               ; preds = %40, %32, %26
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* %5, align 4
  %56 = and i32 %54, %55
  ret i32 %56
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

declare dso_local i32 @sprint_value(i8*, i32) #2

declare dso_local i32 @as_warn(i32, i8*, i8*) #2

declare dso_local i32 @_(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
