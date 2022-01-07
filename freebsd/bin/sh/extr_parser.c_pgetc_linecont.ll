; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_parser.c_pgetc_linecont.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_parser.c_pgetc_linecont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@plinno = common dso_local global i32 0, align 4
@doprompt = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pgetc_linecont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pgetc_linecont() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  br label %3

3:                                                ; preds = %24, %0
  %4 = call i32 (...) @pgetc_macro()
  store i32 %4, i32* %2, align 4
  %5 = icmp eq i32 %4, 92
  br i1 %5, label %6, label %25

6:                                                ; preds = %3
  %7 = call i32 (...) @pgetc()
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp eq i32 %8, 10
  br i1 %9, label %10, label %20

10:                                               ; preds = %6
  %11 = load i32, i32* @plinno, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @plinno, align 4
  %13 = load i64, i64* @doprompt, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = call i32 @setprompt(i32 2)
  br label %19

17:                                               ; preds = %10
  %18 = call i32 @setprompt(i32 0)
  br label %19

19:                                               ; preds = %17, %15
  br label %24

20:                                               ; preds = %6
  %21 = call i32 (...) @pungetc()
  %22 = call i32 @pushstring(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1, i32* null)
  %23 = call i32 (...) @pgetc()
  store i32 %23, i32* %1, align 4
  br label %27

24:                                               ; preds = %19
  br label %3

25:                                               ; preds = %3
  %26 = load i32, i32* %2, align 4
  store i32 %26, i32* %1, align 4
  br label %27

27:                                               ; preds = %25, %20
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare dso_local i32 @pgetc_macro(...) #1

declare dso_local i32 @pgetc(...) #1

declare dso_local i32 @setprompt(i32) #1

declare dso_local i32 @pungetc(...) #1

declare dso_local i32 @pushstring(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
