; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_i386_scale.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_i386_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@input_line_pointer = common dso_local global i8* null, align 8
@i = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [50 x i8] c"expecting scale factor of 1, 2, 4, or 8: got `%s'\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"scale factor of %d without an index register\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @i386_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @i386_scale(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** @input_line_pointer, align 8
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %3, align 8
  store i8* %8, i8** @input_line_pointer, align 8
  %9 = call i32 (...) @get_absolute_expression()
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %15 [
    i32 1, label %11
    i32 2, label %12
    i32 4, label %13
    i32 8, label %14
  ]

11:                                               ; preds = %1
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @i, i32 0, i32 0), align 8
  br label %25

12:                                               ; preds = %1
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @i, i32 0, i32 0), align 8
  br label %25

13:                                               ; preds = %1
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @i, i32 0, i32 0), align 8
  br label %25

14:                                               ; preds = %1
  store i32 3, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @i, i32 0, i32 0), align 8
  br label %25

15:                                               ; preds = %1
  %16 = load i8*, i8** @input_line_pointer, align 8
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %6, align 1
  %18 = load i8*, i8** @input_line_pointer, align 8
  store i8 0, i8* %18, align 1
  %19 = call i32 @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @as_bad(i32 %19, i8* %20)
  %22 = load i8, i8* %6, align 1
  %23 = load i8*, i8** @input_line_pointer, align 8
  store i8 %22, i8* %23, align 1
  %24 = load i8*, i8** %5, align 8
  store i8* %24, i8** @input_line_pointer, align 8
  store i8* null, i8** %2, align 8
  br label %40

25:                                               ; preds = %14, %13, %12, %11
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @i, i32 0, i32 0), align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @i, i32 0, i32 1), align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @i, i32 0, i32 0), align 8
  %34 = shl i32 1, %33
  %35 = call i32 @as_warn(i32 %32, i32 %34)
  br label %36

36:                                               ; preds = %31, %28, %25
  %37 = load i8*, i8** @input_line_pointer, align 8
  store i8* %37, i8** %3, align 8
  %38 = load i8*, i8** %5, align 8
  store i8* %38, i8** @input_line_pointer, align 8
  %39 = load i8*, i8** %3, align 8
  store i8* %39, i8** %2, align 8
  br label %40

40:                                               ; preds = %36, %15
  %41 = load i8*, i8** %2, align 8
  ret i8* %41
}

declare dso_local i32 @get_absolute_expression(...) #1

declare dso_local i32 @as_bad(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @as_warn(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
