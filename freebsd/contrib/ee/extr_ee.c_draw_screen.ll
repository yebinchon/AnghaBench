; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_draw_screen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_draw_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.text = type { i8*, %struct.text*, i32 }

@curr_line = common dso_local global %struct.text* null, align 8
@scr_vert = common dso_local global i32 0, align 4
@text_win = common dso_local global i32 0, align 4
@last_line = common dso_local global i32 0, align 4
@scr_horz = common dso_local global i64 0, align 8
@horiz_offset = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @draw_screen() #0 {
  %1 = alloca %struct.text*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = load %struct.text*, %struct.text** @curr_line, align 8
  store %struct.text* %4, %struct.text** %1, align 8
  %5 = load i32, i32* @scr_vert, align 4
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @text_win, align 4
  %7 = call i32 @wclrtobot(i32 %6)
  br label %8

8:                                                ; preds = %17, %0
  %9 = load %struct.text*, %struct.text** %1, align 8
  %10 = icmp ne %struct.text* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @last_line, align 4
  %14 = icmp sle i32 %12, %13
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i1 [ false, %8 ], [ %14, %11 ]
  br i1 %16, label %17, label %32

17:                                               ; preds = %15
  %18 = load %struct.text*, %struct.text** %1, align 8
  %19 = getelementptr inbounds %struct.text, %struct.text* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = load i8*, i8** %2, align 8
  %23 = load %struct.text*, %struct.text** %1, align 8
  %24 = getelementptr inbounds %struct.text, %struct.text* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @draw_line(i32 %21, i32 0, i8* %22, i32 1, i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  %29 = load %struct.text*, %struct.text** %1, align 8
  %30 = getelementptr inbounds %struct.text, %struct.text* %29, i32 0, i32 1
  %31 = load %struct.text*, %struct.text** %30, align 8
  store %struct.text* %31, %struct.text** %1, align 8
  br label %8

32:                                               ; preds = %15
  %33 = load i32, i32* @text_win, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @wmove(i32 %33, i32 %34, i64 0)
  %36 = load i32, i32* @text_win, align 4
  %37 = load i32, i32* @scr_vert, align 4
  %38 = load i64, i64* @scr_horz, align 8
  %39 = load i64, i64* @horiz_offset, align 8
  %40 = sub nsw i64 %38, %39
  %41 = call i32 @wmove(i32 %36, i32 %37, i64 %40)
  ret void
}

declare dso_local i32 @wclrtobot(i32) #1

declare dso_local i32 @draw_line(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @wmove(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
