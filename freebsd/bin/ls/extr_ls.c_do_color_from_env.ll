; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ls/extr_ls.c_do_color_from_env.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ls/extr_ls.c_do_color_from_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"CLICOLOR\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"COLORTERM\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"CLICOLOR_FORCE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @do_color_from_env to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_color_from_env() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %3, i8** %1, align 8
  %4 = load i8*, i8** %1, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %17

6:                                                ; preds = %0
  %7 = call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i8* %7, i8** %1, align 8
  %8 = load i8*, i8** %1, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i8*, i8** %1, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %16

16:                                               ; preds = %15, %10, %6
  br label %18

17:                                               ; preds = %0
  store i32 1, i32* %2, align 4
  br label %18

18:                                               ; preds = %17, %16
  %19 = load i32, i32* %2, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load i32, i32* @STDOUT_FILENO, align 4
  %23 = call i64 @isatty(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = call i8* @getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %27 = icmp ne i8* %26, null
  br label %28

28:                                               ; preds = %25, %21
  %29 = phi i1 [ true, %21 ], [ %27, %25 ]
  br label %30

30:                                               ; preds = %28, %18
  %31 = phi i1 [ false, %18 ], [ %29, %28 ]
  %32 = zext i1 %31 to i32
  ret i32 %32
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @isatty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
