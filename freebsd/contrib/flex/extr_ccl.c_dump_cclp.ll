; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/flex/extr_ccl.c_dump_cclp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/flex/extr_ccl.c_dump_cclp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@csize = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"-%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @dump_cclp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_cclp(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @putc(i8 signext 91, i32* %7)
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %54, %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @csize, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %57

13:                                               ; preds = %9
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @ccl_contains(i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %53

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %6, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @putc(i8 signext 32, i32* %20)
  %22 = load i32, i32* %5, align 4
  %23 = call i8* @readable_form(i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @fputs(i8* %23, i32* %24)
  br label %26

26:                                               ; preds = %38, %18
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @csize, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @ccl_contains(i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %31, %26
  %37 = phi i1 [ false, %26 ], [ %35, %31 ]
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  br label %26

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  %41 = sub nsw i32 %40, 1
  %42 = load i32, i32* %6, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i32*, i32** %3, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sub nsw i32 %46, 1
  %48 = call i8* @readable_form(i32 %47)
  %49 = call i32 @fprintf(i32* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %48)
  br label %50

50:                                               ; preds = %44, %39
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @putc(i8 signext 32, i32* %51)
  br label %53

53:                                               ; preds = %50, %13
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %9

57:                                               ; preds = %9
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @putc(i8 signext 93, i32* %58)
  ret void
}

declare dso_local i32 @putc(i8 signext, i32*) #1

declare dso_local i64 @ccl_contains(i32, i32) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i8* @readable_form(i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
