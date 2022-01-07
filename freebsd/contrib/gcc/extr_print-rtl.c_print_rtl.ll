; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_print-rtl.c_print_rtl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_print-rtl.c_print_rtl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@outfile = common dso_local global i32* null, align 8
@sawclose = common dso_local global i64 0, align 8
@print_rtx_head = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"(nil)\0A\00", align 1
@flag_dump_unnumbered = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_rtl(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i32*, i32** %3, align 8
  store i32* %6, i32** @outfile, align 8
  store i64 0, i64* @sawclose, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load i8*, i8** @print_rtx_head, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @fputs(i8* %10, i32* %11)
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %13)
  br label %54

15:                                               ; preds = %2
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @GET_CODE(i64 %16)
  switch i32 %17, label %47 [
    i32 130, label %18
    i32 129, label %18
    i32 132, label %18
    i32 128, label %18
    i32 131, label %18
    i32 133, label %18
  ]

18:                                               ; preds = %15, %15, %15, %15, %15, %15
  %19 = load i64, i64* %4, align 8
  store i64 %19, i64* %5, align 8
  br label %20

20:                                               ; preds = %43, %18
  %21 = load i64, i64* %5, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %20
  %24 = load i32, i32* @flag_dump_unnumbered, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @NOTE_P(i64 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @NOTE_LINE_NUMBER(i64 %31)
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %30, %26, %23
  %35 = load i8*, i8** @print_rtx_head, align 8
  %36 = load i32*, i32** @outfile, align 8
  %37 = call i32 @fputs(i8* %35, i32* %36)
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @print_rtx(i64 %38)
  %40 = load i32*, i32** @outfile, align 8
  %41 = call i32 @fprintf(i32* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %34, %30
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %5, align 8
  %45 = call i64 @NEXT_INSN(i64 %44)
  store i64 %45, i64* %5, align 8
  br label %20

46:                                               ; preds = %20
  br label %53

47:                                               ; preds = %15
  %48 = load i8*, i8** @print_rtx_head, align 8
  %49 = load i32*, i32** @outfile, align 8
  %50 = call i32 @fputs(i8* %48, i32* %49)
  %51 = load i64, i64* %4, align 8
  %52 = call i32 @print_rtx(i64 %51)
  br label %53

53:                                               ; preds = %47, %46
  br label %54

54:                                               ; preds = %53, %9
  ret void
}

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i32 @NOTE_P(i64) #1

declare dso_local i32 @NOTE_LINE_NUMBER(i64) #1

declare dso_local i32 @print_rtx(i64) #1

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i64 @NEXT_INSN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
