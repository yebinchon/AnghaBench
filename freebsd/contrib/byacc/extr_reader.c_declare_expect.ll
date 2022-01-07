; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_reader.c_declare_expect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_reader.c_declare_expect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXPECT = common dso_local global i32 0, align 4
@EXPECT_RR = common dso_local global i32 0, align 4
@prec = common dso_local global i32 0, align 4
@cptr = common dso_local global i32* null, align 8
@EOF = common dso_local global i32 0, align 4
@SRexpect = common dso_local global i8* null, align 8
@RRexpect = common dso_local global i8* null, align 8
@lineno = common dso_local global i32 0, align 4
@line = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @declare_expect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @declare_expect(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @EXPECT, align 4
  %6 = icmp ne i32 %4, %5
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @EXPECT_RR, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load i32, i32* @prec, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @prec, align 4
  br label %14

14:                                               ; preds = %11, %7, %1
  %15 = load i32*, i32** @cptr, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %16, i32** @cptr, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @EOF, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = call i32 (...) @unexpected_EOF()
  br label %23

23:                                               ; preds = %21, %14
  br label %24

24:                                               ; preds = %64, %23
  %25 = load i32, i32* %3, align 4
  %26 = call i64 @isdigit(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @EXPECT, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i8* (...) @get_number()
  store i8* %33, i8** @SRexpect, align 8
  br label %36

34:                                               ; preds = %28
  %35 = call i8* (...) @get_number()
  store i8* %35, i8** @RRexpect, align 8
  br label %36

36:                                               ; preds = %34, %32
  br label %65

37:                                               ; preds = %24
  %38 = load i32, i32* %3, align 4
  %39 = icmp eq i32 %38, 10
  br i1 %39, label %48, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %3, align 4
  %42 = call i64 @isalpha(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @isspace(i32 %45) #3
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %44, %40, %37
  %49 = load i32, i32* @lineno, align 4
  %50 = load i32, i32* @line, align 4
  %51 = load i32*, i32** @cptr, align 8
  %52 = call i32 @syntax_error(i32 %49, i32 %50, i32* %51)
  br label %63

53:                                               ; preds = %44
  %54 = load i32*, i32** @cptr, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** @cptr, align 8
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @EOF, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = call i32 (...) @unexpected_EOF()
  br label %62

62:                                               ; preds = %60, %53
  br label %63

63:                                               ; preds = %62, %48
  br label %64

64:                                               ; preds = %63
  br label %24

65:                                               ; preds = %36
  ret void
}

declare dso_local i32 @unexpected_EOF(...) #1

declare dso_local i64 @isdigit(i32) #1

declare dso_local i8* @get_number(...) #1

declare dso_local i64 @isalpha(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isspace(i32) #2

declare dso_local i32 @syntax_error(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
