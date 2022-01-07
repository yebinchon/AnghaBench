; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_argv.c_dlg_eat_argv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_argv.c_dlg_eat_argv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlg_eat_argv(i32* %0, i8*** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8***, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8*** %1, i8**** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %11, align 4
  %13 = sub nsw i32 %12, %10
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %9, align 4
  br label %15

15:                                               ; preds = %34, %4
  %16 = load i32, i32* %9, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp sle i32 %16, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %15
  %21 = load i8***, i8**** %6, align 8
  %22 = load i8**, i8*** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %22, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = load i8***, i8**** %6, align 8
  %30 = load i8**, i8*** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  store i8* %28, i8** %33, align 8
  br label %34

34:                                               ; preds = %20
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  br label %15

37:                                               ; preds = %15
  %38 = load i8***, i8**** %6, align 8
  %39 = load i8**, i8*** %38, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %39, i64 %42
  store i8* null, i8** %43, align 8
  %44 = load i32, i32* @TRUE, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
