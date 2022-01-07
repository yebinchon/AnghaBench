; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_del_char.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_del_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@in = common dso_local global i32 0, align 4
@position = common dso_local global i64 0, align 8
@curr_line = common dso_local global %struct.TYPE_2__* null, align 8
@ee_chinese = common dso_local global i64 0, align 8
@point = common dso_local global i32* null, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @del_char() #0 {
  store i32 8, i32* @in, align 4
  %1 = load i64, i64* @position, align 8
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curr_line, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = icmp slt i64 %1, %4
  br i1 %5, label %6, label %34

6:                                                ; preds = %0
  %7 = load i64, i64* @ee_chinese, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %6
  %10 = load i32*, i32** @point, align 8
  %11 = load i32, i32* %10, align 4
  %12 = icmp sgt i32 %11, 127
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curr_line, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @position, align 8
  %18 = sub nsw i64 %16, %17
  %19 = icmp sge i64 %18, 2
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = load i32*, i32** @point, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** @point, align 8
  %23 = load i64, i64* @position, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* @position, align 8
  br label %25

25:                                               ; preds = %20, %13, %9, %6
  %26 = load i64, i64* @position, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* @position, align 8
  %28 = load i32*, i32** @point, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** @point, align 8
  %30 = load i32*, i32** @point, align 8
  %31 = call i32 @scanline(i32* %30)
  %32 = load i32, i32* @TRUE, align 4
  %33 = call i32 @delete(i32 %32)
  br label %39

34:                                               ; preds = %0
  %35 = load i32, i32* @TRUE, align 4
  %36 = call i32 @right(i32 %35)
  %37 = load i32, i32* @TRUE, align 4
  %38 = call i32 @delete(i32 %37)
  br label %39

39:                                               ; preds = %34, %25
  ret void
}

declare dso_local i32 @scanline(i32*) #1

declare dso_local i32 @delete(i32) #1

declare dso_local i32 @right(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
