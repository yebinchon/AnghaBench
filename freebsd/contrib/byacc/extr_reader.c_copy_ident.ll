; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_reader.c_copy_ident.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_reader.c_copy_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@output_file = common dso_local global i32* null, align 8
@EOF = common dso_local global i32 0, align 4
@lineno = common dso_local global i32 0, align 4
@line = common dso_local global i32 0, align 4
@cptr = common dso_local global i32* null, align 8
@outline = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"#ident \22\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @copy_ident to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_ident() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = load i32*, i32** @output_file, align 8
  store i32* %3, i32** %2, align 8
  %4 = call i32 (...) @nextc()
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @EOF, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 (...) @unexpected_EOF()
  br label %10

10:                                               ; preds = %8, %0
  %11 = load i32, i32* %1, align 4
  %12 = icmp ne i32 %11, 34
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load i32, i32* @lineno, align 4
  %15 = load i32, i32* @line, align 4
  %16 = load i32*, i32** @cptr, align 8
  %17 = call i32 @syntax_error(i32 %14, i32 %15, i32* %16)
  br label %18

18:                                               ; preds = %13, %10
  %19 = load i32, i32* @outline, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @outline, align 4
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @fprintf(i32* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %44, %18
  %24 = load i32*, i32** @cptr, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** @cptr, align 8
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %1, align 4
  %27 = load i32, i32* %1, align 4
  %28 = icmp eq i32 %27, 10
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @fprintf(i32* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %45

32:                                               ; preds = %23
  %33 = load i32, i32* %1, align 4
  %34 = trunc i32 %33 to i8
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @putc(i8 signext %34, i32* %35)
  %37 = load i32, i32* %1, align 4
  %38 = icmp eq i32 %37, 34
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @putc(i8 signext 10, i32* %40)
  %42 = load i32*, i32** @cptr, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** @cptr, align 8
  br label %45

44:                                               ; preds = %32
  br label %23

45:                                               ; preds = %39, %29
  ret void
}

declare dso_local i32 @nextc(...) #1

declare dso_local i32 @unexpected_EOF(...) #1

declare dso_local i32 @syntax_error(i32, i32, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i32 @putc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
