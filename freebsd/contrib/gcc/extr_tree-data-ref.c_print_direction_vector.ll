; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_print_direction_vector.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_print_direction_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"    +\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"    -\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"    =\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"   +=\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"   +-\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"   -=\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"    *\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"indep\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_direction_vector(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %45, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %48

13:                                               ; preds = %9
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  switch i32 %19, label %41 [
    i32 131, label %20
    i32 133, label %23
    i32 134, label %26
    i32 130, label %29
    i32 129, label %32
    i32 132, label %35
    i32 128, label %38
  ]

20:                                               ; preds = %13
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @fprintf(i32* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %44

23:                                               ; preds = %13
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @fprintf(i32* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %44

26:                                               ; preds = %13
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @fprintf(i32* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %44

29:                                               ; preds = %13
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @fprintf(i32* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %44

32:                                               ; preds = %13
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @fprintf(i32* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %44

35:                                               ; preds = %13
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @fprintf(i32* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %44

38:                                               ; preds = %13
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @fprintf(i32* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %44

41:                                               ; preds = %13
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @fprintf(i32* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %38, %35, %32, %29, %26, %23, %20
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %9

48:                                               ; preds = %9
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @fprintf(i32* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
