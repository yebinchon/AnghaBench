; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_read-rtl.c_read_escape.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_read-rtl.c_read_escape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@read_rtx_lineno = common dso_local global i32 0, align 4
@string_obstack = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"\\n\\t\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"%s:%d: warning: unrecognized escape \\%c\0A\00", align 1
@read_rtx_filename = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @read_escape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_escape(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 @getc(i32* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %15 [
    i32 10, label %7
    i32 92, label %10
    i32 34, label %10
    i32 39, label %10
    i32 97, label %11
    i32 98, label %11
    i32 102, label %11
    i32 110, label %11
    i32 114, label %11
    i32 116, label %11
    i32 118, label %11
    i32 48, label %11
    i32 49, label %11
    i32 50, label %11
    i32 51, label %11
    i32 52, label %11
    i32 53, label %11
    i32 54, label %11
    i32 55, label %11
    i32 120, label %11
    i32 59, label %13
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* @read_rtx_lineno, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @read_rtx_lineno, align 4
  br label %25

10:                                               ; preds = %1, %1, %1
  br label %22

11:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %12 = call i32 @obstack_1grow(i32* @string_obstack, i32 92)
  br label %22

13:                                               ; preds = %1
  %14 = call i32 @obstack_grow(i32* @string_obstack, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  br label %25

15:                                               ; preds = %1
  %16 = load i32, i32* @stderr, align 4
  %17 = load i8*, i8** @read_rtx_filename, align 8
  %18 = load i32, i32* @read_rtx_lineno, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %17, i32 %18, i32 %19)
  %21 = call i32 @obstack_1grow(i32* @string_obstack, i32 92)
  br label %22

22:                                               ; preds = %15, %11, %10
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @obstack_1grow(i32* @string_obstack, i32 %23)
  br label %25

25:                                               ; preds = %22, %13, %7
  ret void
}

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @obstack_1grow(i32*, i32) #1

declare dso_local i32 @obstack_grow(i32*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
