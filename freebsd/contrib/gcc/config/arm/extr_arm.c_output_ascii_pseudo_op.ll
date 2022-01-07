; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_output_ascii_pseudo_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_output_ascii_pseudo_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"\09.ascii\09\22\00", align 1
@MAX_ASCII_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"\22\0A\09.ascii\09\22\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output_ascii_pseudo_op(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %10)
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %57, %3
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %60

16:                                               ; preds = %12
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @MAX_ASCII_LEN, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %27)
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %26, %16
  %30 = load i32, i32* %9, align 4
  %31 = call i64 @ISPRINT(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %29
  %34 = load i32, i32* %9, align 4
  %35 = icmp eq i32 %34, 92
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = icmp eq i32 %37, 34
  br i1 %38, label %39, label %44

39:                                               ; preds = %36, %33
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @putc(i32 92, i32* %40)
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %39, %36
  %45 = load i32, i32* %9, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @putc(i32 %45, i32* %46)
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %56

50:                                               ; preds = %29
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @fprintf(i32* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 4
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %50, %44
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %12

60:                                               ; preds = %12
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %61)
  ret void
}

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i64 @ISPRINT(i32) #1

declare dso_local i32 @putc(i32, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
