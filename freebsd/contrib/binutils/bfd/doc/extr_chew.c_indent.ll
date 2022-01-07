; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/doc/extr_chew.c_indent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/doc/extr_chew.c_indent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tos = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c")\00", align 1
@pc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @indent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @indent() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = call i32 @init_string(i32* %1)
  br label %6

6:                                                ; preds = %53, %0
  %7 = load i32*, i32** @tos, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @at(i32* %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %54

11:                                               ; preds = %6
  %12 = load i32*, i32** @tos, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @at(i32* %12, i32 %13)
  switch i32 %14, label %46 [
    i32 10, label %15
    i32 40, label %29
    i32 41, label %40
  ]

15:                                               ; preds = %11
  %16 = call i32 @cattext(i32* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %2, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load i32*, i32** @tos, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @at(i32* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = call i32 @cattext(i32* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %21, %15
  store i32 0, i32* %4, align 4
  br label %53

29:                                               ; preds = %11
  %30 = load i32, i32* %2, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %2, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 @cattext(i32* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %29
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  %39 = call i32 @cattext(i32* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %53

40:                                               ; preds = %11
  %41 = load i32, i32* %2, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %2, align 4
  %43 = call i32 @cattext(i32* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  store i32 1, i32* %4, align 4
  br label %53

46:                                               ; preds = %11
  %47 = load i32*, i32** @tos, align 8
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @at(i32* %47, i32 %48)
  %50 = call i32 @catchar(i32* %1, i32 %49)
  store i32 1, i32* %4, align 4
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %46, %40, %36, %28
  br label %6

54:                                               ; preds = %6
  %55 = load i32, i32* @pc, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* @pc, align 4
  %57 = load i32*, i32** @tos, align 8
  %58 = call i32 @delete_string(i32* %57)
  %59 = load i32, i32* %1, align 4
  %60 = load i32*, i32** @tos, align 8
  store i32 %59, i32* %60, align 4
  ret void
}

declare dso_local i32 @init_string(i32*) #1

declare dso_local i32 @at(i32*, i32) #1

declare dso_local i32 @cattext(i32*, i8*) #1

declare dso_local i32 @catchar(i32*, i32) #1

declare dso_local i32 @delete_string(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
