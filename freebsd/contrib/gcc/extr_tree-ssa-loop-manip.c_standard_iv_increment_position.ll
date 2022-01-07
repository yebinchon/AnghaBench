; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-manip.c_standard_iv_increment_position.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-manip.c_standard_iv_increment_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }

@LABEL_EXPR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @standard_iv_increment_position(%struct.loop* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.loop*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.loop* %0, %struct.loop** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.loop*, %struct.loop** %4, align 8
  %11 = call i32 @ip_normal_pos(%struct.loop* %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.loop*, %struct.loop** %4, align 8
  %13 = call i32 @ip_end_pos(%struct.loop* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i64 @last_stmt(i32 %14)
  store i64 %15, i64* %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load i64, i64* %9, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load i64, i64* %9, align 8
  %23 = call i64 @TREE_CODE(i64 %22)
  %24 = load i64, i64* @LABEL_EXPR, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %21, %3
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @bsi_last(i32 %27)
  %29 = load i32*, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32*, i32** %6, align 8
  store i32 1, i32* %30, align 4
  br label %36

31:                                               ; preds = %21, %18
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @bsi_last(i32 %32)
  %34 = load i32*, i32** %5, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32*, i32** %6, align 8
  store i32 0, i32* %35, align 4
  br label %36

36:                                               ; preds = %31, %26
  ret void
}

declare dso_local i32 @ip_normal_pos(%struct.loop*) #1

declare dso_local i32 @ip_end_pos(%struct.loop*) #1

declare dso_local i64 @last_stmt(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @bsi_last(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
