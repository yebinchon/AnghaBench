; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_bol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_bol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32* }

@point = common dso_local global i64 0, align 8
@curr_line = common dso_local global %struct.TYPE_2__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@scr_pos = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bol() #0 {
  %1 = load i64, i64* @point, align 8
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curr_line, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = icmp ne i64 %1, %4
  br i1 %5, label %6, label %17

6:                                                ; preds = %0
  br label %7

7:                                                ; preds = %13, %6
  %8 = load i64, i64* @point, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curr_line, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load i32, i32* @TRUE, align 4
  %15 = call i32 @left(i32 %14)
  br label %7

16:                                               ; preds = %7
  br label %25

17:                                               ; preds = %0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curr_line, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  store i64 0, i64* @scr_pos, align 8
  %23 = call i32 (...) @up()
  br label %24

24:                                               ; preds = %22, %17
  br label %25

25:                                               ; preds = %24, %16
  ret void
}

declare dso_local i32 @left(i32) #1

declare dso_local i32 @up(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
