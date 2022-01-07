; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_output_range_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_output_range_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"unsigned char\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"signed char\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"unsigned short\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i64)* @output_range_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_range_type(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp sge i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = load i64, i64* %6, align 8
  %11 = icmp sle i64 %10, 255
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @fprintf(i32* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %48

15:                                               ; preds = %9, %3
  %16 = load i64, i64* %5, align 8
  %17 = icmp sge i64 %16, -127
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load i64, i64* %6, align 8
  %20 = icmp sle i64 %19, 127
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @fprintf(i32* %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %47

24:                                               ; preds = %18, %15
  %25 = load i64, i64* %5, align 8
  %26 = icmp sge i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i64, i64* %6, align 8
  %29 = icmp sle i64 %28, 65535
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @fprintf(i32* %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %46

33:                                               ; preds = %27, %24
  %34 = load i64, i64* %5, align 8
  %35 = icmp sge i64 %34, -32767
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i64, i64* %6, align 8
  %38 = icmp sle i64 %37, 32767
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @fprintf(i32* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %45

42:                                               ; preds = %36, %33
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @fprintf(i32* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %39
  br label %46

46:                                               ; preds = %45, %30
  br label %47

47:                                               ; preds = %46, %21
  br label %48

48:                                               ; preds = %47, %12
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
