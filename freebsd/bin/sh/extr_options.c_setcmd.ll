; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_options.c_setcmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_options.c_setcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTOFF = common dso_local global i32 0, align 4
@argptr = common dso_local global i8** null, align 8
@INTON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setcmd(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = call i32 @showvarscmd(i32 %9, i8** %10)
  store i32 %11, i32* %3, align 4
  br label %34

12:                                               ; preds = %2
  %13 = load i32, i32* @INTOFF, align 4
  %14 = call i32 @options(i32 0)
  %15 = call i32 (...) @optschanged()
  %16 = load i8**, i8*** @argptr, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %12
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = load i8**, i8*** @argptr, align 8
  %23 = load i8**, i8*** %5, align 8
  %24 = ptrtoint i8** %22 to i64
  %25 = ptrtoint i8** %23 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 8
  %28 = sub nsw i64 %21, %27
  %29 = trunc i64 %28 to i32
  %30 = load i8**, i8*** @argptr, align 8
  %31 = call i32 @setparam(i32 %29, i8** %30)
  br label %32

32:                                               ; preds = %19, %12
  %33 = load i32, i32* @INTON, align 4
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %8
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @showvarscmd(i32, i8**) #1

declare dso_local i32 @options(i32) #1

declare dso_local i32 @optschanged(...) #1

declare dso_local i32 @setparam(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
