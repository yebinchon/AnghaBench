; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_exec.c_typecmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_exec.c_typecmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@TYPECMD_TYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @typecmd(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = icmp sgt i32 %5, 2
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = load i8**, i8*** %4, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i64 1
  %10 = load i8*, i8** %9, align 8
  %11 = call i64 @strcmp(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %7
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %3, align 4
  %16 = load i8**, i8*** %4, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i32 1
  store i8** %17, i8*** %4, align 8
  br label %18

18:                                               ; preds = %13, %7, %2
  %19 = load i32, i32* %3, align 4
  %20 = load i8**, i8*** %4, align 8
  %21 = load i32, i32* @TYPECMD_TYPE, align 4
  %22 = call i32 @bltinlookup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %23 = call i32 @typecmd_impl(i32 %19, i8** %20, i32 %21, i32 %22)
  ret i32 %23
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @typecmd_impl(i32, i8**, i32, i32) #1

declare dso_local i32 @bltinlookup(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
