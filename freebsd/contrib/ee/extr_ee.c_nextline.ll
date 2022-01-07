; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_nextline.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_nextline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, %struct.TYPE_2__* }

@curr_line = common dso_local global %struct.TYPE_2__* null, align 8
@absolute_lin = common dso_local global i32 0, align 4
@point = common dso_local global i32 0, align 4
@position = common dso_local global i32 0, align 4
@scr_vert = common dso_local global i64 0, align 8
@last_line = common dso_local global i64 0, align 8
@text_win = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nextline() #0 {
  %1 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curr_line, align 8
  %2 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 2
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** %2, align 8
  store %struct.TYPE_2__* %3, %struct.TYPE_2__** @curr_line, align 8
  %4 = load i32, i32* @absolute_lin, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* @absolute_lin, align 4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curr_line, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* @point, align 4
  store i32 1, i32* @position, align 4
  %9 = load i64, i64* @scr_vert, align 8
  %10 = load i64, i64* @last_line, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %0
  %13 = load i32, i32* @text_win, align 4
  %14 = call i32 @wmove(i32 %13, i64 0, i32 0)
  %15 = load i32, i32* @text_win, align 4
  %16 = call i32 @wdeleteln(i32 %15)
  %17 = load i32, i32* @text_win, align 4
  %18 = load i64, i64* @last_line, align 8
  %19 = call i32 @wmove(i32 %17, i64 %18, i32 0)
  %20 = load i32, i32* @text_win, align 4
  %21 = call i32 @wclrtobot(i32 %20)
  %22 = load i64, i64* @last_line, align 8
  %23 = load i32, i32* @point, align 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curr_line, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @draw_line(i64 %22, i32 0, i32 %23, i32 1, i32 %26)
  br label %31

28:                                               ; preds = %0
  %29 = load i64, i64* @scr_vert, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* @scr_vert, align 8
  br label %31

31:                                               ; preds = %28, %12
  ret void
}

declare dso_local i32 @wmove(i32, i64, i32) #1

declare dso_local i32 @wdeleteln(i32) #1

declare dso_local i32 @wclrtobot(i32) #1

declare dso_local i32 @draw_line(i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
