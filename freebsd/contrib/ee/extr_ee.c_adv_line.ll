; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_adv_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_adv_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32* }

@point = common dso_local global i64 0, align 8
@curr_line = common dso_local global %struct.TYPE_2__* null, align 8
@scr_pos = common dso_local global i64 0, align 8
@position = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adv_line() #0 {
  %1 = load i64, i64* @point, align 8
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curr_line, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = icmp ne i64 %1, %4
  br i1 %5, label %9, label %6

6:                                                ; preds = %0
  %7 = load i64, i64* @scr_pos, align 8
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %6, %0
  br label %10

10:                                               ; preds = %16, %9
  %11 = load i64, i64* @position, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curr_line, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %11, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i32, i32* @TRUE, align 4
  %18 = call i32 @right(i32 %17)
  br label %10

19:                                               ; preds = %10
  %20 = load i32, i32* @TRUE, align 4
  %21 = call i32 @right(i32 %20)
  br label %30

22:                                               ; preds = %6
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curr_line, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  store i64 0, i64* @scr_pos, align 8
  %28 = call i32 (...) @down()
  br label %29

29:                                               ; preds = %27, %22
  br label %30

30:                                               ; preds = %29, %19
  ret void
}

declare dso_local i32 @right(i32) #1

declare dso_local i32 @down(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
