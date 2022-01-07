; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/doc/extr_chew.c_translatecomments.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/doc/extr_chew.c_translatecomments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tos = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"/*\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"*/\00", align 1
@pc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @translatecomments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @translatecomments() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = call i32 @init_string(i32* %2)
  br label %4

4:                                                ; preds = %51, %0
  %5 = load i32, i32* @tos, align 4
  %6 = load i32, i32* %1, align 4
  %7 = call signext i8 @at(i32 %5, i32 %6)
  %8 = icmp ne i8 %7, 0
  br i1 %8, label %9, label %52

9:                                                ; preds = %4
  %10 = load i32, i32* @tos, align 4
  %11 = load i32, i32* %1, align 4
  %12 = call signext i8 @at(i32 %10, i32 %11)
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 123
  br i1 %14, label %15, label %26

15:                                               ; preds = %9
  %16 = load i32, i32* @tos, align 4
  %17 = load i32, i32* %1, align 4
  %18 = add i32 %17, 1
  %19 = call signext i8 @at(i32 %16, i32 %18)
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 42
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = call i32 @cattext(i32* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %1, align 4
  %25 = add i32 %24, 2
  store i32 %25, i32* %1, align 4
  br label %51

26:                                               ; preds = %15, %9
  %27 = load i32, i32* @tos, align 4
  %28 = load i32, i32* %1, align 4
  %29 = call signext i8 @at(i32 %27, i32 %28)
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 42
  br i1 %31, label %32, label %43

32:                                               ; preds = %26
  %33 = load i32, i32* @tos, align 4
  %34 = load i32, i32* %1, align 4
  %35 = add i32 %34, 1
  %36 = call signext i8 @at(i32 %33, i32 %35)
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 125
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = call i32 @cattext(i32* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* %1, align 4
  %42 = add i32 %41, 2
  store i32 %42, i32* %1, align 4
  br label %50

43:                                               ; preds = %32, %26
  %44 = load i32, i32* @tos, align 4
  %45 = load i32, i32* %1, align 4
  %46 = call signext i8 @at(i32 %44, i32 %45)
  %47 = call i32 @catchar(i32* %2, i8 signext %46)
  %48 = load i32, i32* %1, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %1, align 4
  br label %50

50:                                               ; preds = %43, %39
  br label %51

51:                                               ; preds = %50, %22
  br label %4

52:                                               ; preds = %4
  %53 = load i32, i32* @tos, align 4
  %54 = call i32 @overwrite_string(i32 %53, i32* %2)
  %55 = load i32, i32* @pc, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* @pc, align 4
  ret void
}

declare dso_local i32 @init_string(i32*) #1

declare dso_local signext i8 @at(i32, i32) #1

declare dso_local i32 @cattext(i32*, i8*) #1

declare dso_local i32 @catchar(i32*, i8 signext) #1

declare dso_local i32 @overwrite_string(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
