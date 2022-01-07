; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_util.c_open_terminal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_util.c_open_terminal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TTY_DEVICE = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32)* @open_terminal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_terminal(i8** %0, i32 %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** @TTY_DEVICE, align 8
  store i8* %6, i8** %5, align 8
  %7 = load i32, i32* @stderr, align 4
  %8 = call i32 @fileno(i32 %7)
  %9 = call i32 @isatty(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 @fileno(i32 %12)
  %14 = call i8* @ttyname(i32 %13)
  store i8* %14, i8** %5, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %40

16:                                               ; preds = %11, %2
  %17 = load i32, i32* @stdout, align 4
  %18 = call i32 @fileno(i32 %17)
  %19 = call i32 @isatty(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i32, i32* @stdout, align 4
  %23 = call i32 @fileno(i32 %22)
  %24 = call i8* @ttyname(i32 %23)
  store i8* %24, i8** %5, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %21, %16
  %27 = load i32, i32* @stdin, align 4
  %28 = call i32 @fileno(i32 %27)
  %29 = call i32 @isatty(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i32, i32* @stdin, align 4
  %33 = call i32 @fileno(i32 %32)
  %34 = call i8* @ttyname(i32 %33)
  store i8* %34, i8** %5, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %31, %26
  %37 = load i8*, i8** @TTY_DEVICE, align 8
  store i8* %37, i8** %5, align 8
  br label %38

38:                                               ; preds = %36, %31
  br label %39

39:                                               ; preds = %38, %21
  br label %40

40:                                               ; preds = %39, %11
  %41 = load i8*, i8** %5, align 8
  %42 = call i8* @dlg_strclone(i8* %41)
  %43 = load i8**, i8*** %3, align 8
  store i8* %42, i8** %43, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @open(i8* %44, i32 %45)
  ret i32 %46
}

declare dso_local i32 @isatty(i32) #1

declare dso_local i32 @fileno(i32) #1

declare dso_local i8* @ttyname(i32) #1

declare dso_local i8* @dlg_strclone(i8*) #1

declare dso_local i32 @open(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
