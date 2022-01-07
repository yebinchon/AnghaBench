; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rclex.c_rclex_readch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rclex.c_rclex_readch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rclex_lastch = common dso_local global i32 0, align 4
@cpp_pipe = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @rclex_readch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rclex_readch() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  store i32 -1, i32* %1, align 4
  %3 = load i32, i32* @rclex_lastch, align 4
  store i32 %3, i32* %1, align 4
  %4 = icmp ne i32 %3, -1
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 -1, i32* @rclex_lastch, align 4
  br label %32

6:                                                ; preds = %0
  br label %7

7:                                                ; preds = %29, %6
  %8 = load i32, i32* @cpp_pipe, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = load i32, i32* @cpp_pipe, align 4
  %12 = call i64 @feof(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* @cpp_pipe, align 4
  %16 = call i32 @fread(i8* %2, i32 1, i32 1, i32 %15)
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %10, %7
  br label %31

19:                                               ; preds = %14
  %20 = load i8, i8* %2, align 1
  %21 = sext i8 %20 to i32
  %22 = and i32 %21, 255
  store i32 %22, i32* %1, align 4
  br label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %1, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %1, align 4
  %28 = icmp eq i32 %27, 13
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i1 [ true, %23 ], [ %28, %26 ]
  br i1 %30, label %7, label %31

31:                                               ; preds = %29, %18
  br label %32

32:                                               ; preds = %31, %5
  %33 = load i32, i32* %1, align 4
  %34 = call i32 @rclex_tok_add_char(i32 %33)
  %35 = load i32, i32* %1, align 4
  ret i32 %35
}

declare dso_local i64 @feof(i32) #1

declare dso_local i32 @fread(i8*, i32, i32, i32) #1

declare dso_local i32 @rclex_tok_add_char(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
