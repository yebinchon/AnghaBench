; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ed/extr_main.c_mark_line_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ed/extr_main.c_mark_line_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"invalid mark character\00", align 1
@errmsg = common dso_local global i8* null, align 8
@ERR = common dso_local global i32 0, align 4
@mark = common dso_local global i32** null, align 8
@markno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mark_line_node(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = trunc i32 %6 to i8
  %8 = call i32 @islower(i8 zeroext %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** @errmsg, align 8
  %11 = load i32, i32* @ERR, align 4
  store i32 %11, i32* %3, align 4
  br label %31

12:                                               ; preds = %2
  %13 = load i32**, i32*** @mark, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sub nsw i32 %14, 97
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32*, i32** %13, i64 %16
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load i32, i32* @markno, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @markno, align 4
  br label %23

23:                                               ; preds = %20, %12
  br label %24

24:                                               ; preds = %23
  %25 = load i32*, i32** %4, align 8
  %26 = load i32**, i32*** @mark, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sub nsw i32 %27, 97
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %26, i64 %29
  store i32* %25, i32** %30, align 8
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %24, %10
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @islower(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
