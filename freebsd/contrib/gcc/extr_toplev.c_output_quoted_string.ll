; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_toplev.c_output_quoted_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_toplev.c_output_quoted_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output_quoted_string(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @putc(i8 signext 34, i32* %6)
  br label %8

8:                                                ; preds = %37, %2
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %10, i8** %4, align 8
  %11 = load i8, i8* %9, align 1
  store i8 %11, i8* %5, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %8
  %15 = load i8, i8* %5, align 1
  %16 = call i64 @ISPRINT(i8 signext %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  %19 = load i8, i8* %5, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 34
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i8, i8* %5, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 92
  br i1 %25, label %26, label %29

26:                                               ; preds = %22, %18
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @putc(i8 signext 92, i32* %27)
  br label %29

29:                                               ; preds = %26, %22
  %30 = load i8, i8* %5, align 1
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @putc(i8 signext %30, i32* %31)
  br label %37

33:                                               ; preds = %14
  %34 = load i32*, i32** %3, align 8
  %35 = load i8, i8* %5, align 1
  %36 = call i32 @fprintf(i32* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8 zeroext %35)
  br label %37

37:                                               ; preds = %33, %29
  br label %8

38:                                               ; preds = %8
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @putc(i8 signext 34, i32* %39)
  ret void
}

declare dso_local i32 @putc(i8 signext, i32*) #1

declare dso_local i64 @ISPRINT(i8 signext) #1

declare dso_local i32 @fprintf(i32*, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
