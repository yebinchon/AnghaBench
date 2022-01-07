; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_walk_no_bignums.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_walk_no_bignums.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32*, i32* }

@O_big = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @walk_no_bignums to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @walk_no_bignums(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = call %struct.TYPE_2__* @symbol_get_value_expression(i32* %4)
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @O_big, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %43

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = call %struct.TYPE_2__* @symbol_get_value_expression(i32* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %42

17:                                               ; preds = %11
  %18 = load i32*, i32** %3, align 8
  %19 = call %struct.TYPE_2__* @symbol_get_value_expression(i32* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @walk_no_bignums(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %17
  %25 = load i32*, i32** %3, align 8
  %26 = call %struct.TYPE_2__* @symbol_get_value_expression(i32* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load i32*, i32** %3, align 8
  %32 = call %struct.TYPE_2__* @symbol_get_value_expression(i32* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @walk_no_bignums(i32* %34)
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %30, %24
  %38 = phi i1 [ false, %24 ], [ %36, %30 ]
  br label %39

39:                                               ; preds = %37, %17
  %40 = phi i1 [ true, %17 ], [ %38, %37 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %2, align 4
  br label %43

42:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %39, %10
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.TYPE_2__* @symbol_get_value_expression(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
