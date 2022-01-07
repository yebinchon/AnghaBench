; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_adv_word.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_adv_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@position = common dso_local global i64 0, align 8
@curr_line = common dso_local global %struct.TYPE_2__* null, align 8
@point = common dso_local global i32* null, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adv_word() #0 {
  br label %1

1:                                                ; preds = %19, %0
  %2 = load i64, i64* @position, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curr_line, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp slt i64 %2, %5
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load i32*, i32** @point, align 8
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 32
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = load i32*, i32** @point, align 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 9
  br label %15

15:                                               ; preds = %11, %7
  %16 = phi i1 [ false, %7 ], [ %14, %11 ]
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi i1 [ false, %1 ], [ %16, %15 ]
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %20 = load i32, i32* @TRUE, align 4
  %21 = call i32 @right(i32 %20)
  br label %1

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %41, %22
  %24 = load i64, i64* @position, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curr_line, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = load i32*, i32** @point, align 8
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 32
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i32*, i32** @point, align 8
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 9
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i1 [ true, %29 ], [ %36, %33 ]
  br label %39

39:                                               ; preds = %37, %23
  %40 = phi i1 [ false, %23 ], [ %38, %37 ]
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = load i32, i32* @TRUE, align 4
  %43 = call i32 @right(i32 %42)
  br label %23

44:                                               ; preds = %39
  ret void
}

declare dso_local i32 @right(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
