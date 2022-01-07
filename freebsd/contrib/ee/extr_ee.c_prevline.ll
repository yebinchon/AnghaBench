; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_prevline.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_prevline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, %struct.TYPE_2__* }

@curr_line = common dso_local global %struct.TYPE_2__* null, align 8
@absolute_lin = common dso_local global i32 0, align 4
@point = common dso_local global i32 0, align 4
@position = common dso_local global i32 0, align 4
@scr_vert = common dso_local global i64 0, align 8
@text_win = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prevline() #0 {
  %1 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curr_line, align 8
  %2 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 2
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** %2, align 8
  store %struct.TYPE_2__* %3, %struct.TYPE_2__** @curr_line, align 8
  %4 = load i32, i32* @absolute_lin, align 4
  %5 = add nsw i32 %4, -1
  store i32 %5, i32* @absolute_lin, align 4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curr_line, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* @point, align 4
  store i32 1, i32* @position, align 4
  %9 = load i64, i64* @scr_vert, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %0
  %12 = load i32, i32* @text_win, align 4
  %13 = call i32 @winsertln(i32 %12)
  %14 = load i32, i32* @point, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curr_line, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @draw_line(i32 0, i32 0, i32 %14, i32 1, i32 %17)
  br label %22

19:                                               ; preds = %0
  %20 = load i64, i64* @scr_vert, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* @scr_vert, align 8
  br label %22

22:                                               ; preds = %19, %11
  br label %23

23:                                               ; preds = %29, %22
  %24 = load i32, i32* @position, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curr_line, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load i32, i32* @position, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @position, align 4
  %32 = load i32, i32* @point, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* @point, align 4
  br label %23

34:                                               ; preds = %23
  ret void
}

declare dso_local i32 @winsertln(i32) #1

declare dso_local i32 @draw_line(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
