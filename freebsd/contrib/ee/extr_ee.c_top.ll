; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_top.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_top.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.TYPE_2__* }

@curr_line = common dso_local global %struct.TYPE_2__* null, align 8
@absolute_lin = common dso_local global i32 0, align 4
@point = common dso_local global i32 0, align 4
@horiz_offset = common dso_local global i64 0, align 8
@position = common dso_local global i32 0, align 4
@scr_horz = common dso_local global i32 0, align 4
@scr_pos = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @top() #0 {
  br label %1

1:                                                ; preds = %6, %0
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curr_line, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 1
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %5 = icmp ne %struct.TYPE_2__* %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curr_line, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** @curr_line, align 8
  %10 = load i32, i32* @absolute_lin, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* @absolute_lin, align 4
  br label %1

12:                                               ; preds = %1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curr_line, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* @point, align 4
  %16 = load i64, i64* @horiz_offset, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i64 0, i64* @horiz_offset, align 8
  br label %19

19:                                               ; preds = %18, %12
  store i32 1, i32* @position, align 4
  %20 = load i32, i32* @point, align 4
  %21 = call i32 @midscreen(i32 0, i32 %20)
  %22 = load i32, i32* @scr_horz, align 4
  store i32 %22, i32* @scr_pos, align 4
  ret void
}

declare dso_local i32 @midscreen(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
