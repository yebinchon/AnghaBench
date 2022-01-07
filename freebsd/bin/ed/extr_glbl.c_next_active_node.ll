; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ed/extr_glbl.c_next_active_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ed/extr_glbl.c_next_active_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@active_ptr = common dso_local global i64 0, align 8
@active_last = common dso_local global i64 0, align 8
@active_list = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @next_active_node() #0 {
  br label %1

1:                                                ; preds = %13, %0
  %2 = load i64, i64* @active_ptr, align 8
  %3 = load i64, i64* @active_last, align 8
  %4 = icmp ult i64 %2, %3
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = load i32**, i32*** @active_list, align 8
  %7 = load i64, i64* @active_ptr, align 8
  %8 = getelementptr inbounds i32*, i32** %6, i64 %7
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i1 [ false, %1 ], [ %10, %5 ]
  br i1 %12, label %13, label %16

13:                                               ; preds = %11
  %14 = load i64, i64* @active_ptr, align 8
  %15 = add i64 %14, 1
  store i64 %15, i64* @active_ptr, align 8
  br label %1

16:                                               ; preds = %11
  %17 = load i64, i64* @active_ptr, align 8
  %18 = load i64, i64* @active_last, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load i32**, i32*** @active_list, align 8
  %22 = load i64, i64* @active_ptr, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* @active_ptr, align 8
  %24 = getelementptr inbounds i32*, i32** %21, i64 %22
  %25 = load i32*, i32** %24, align 8
  br label %27

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %26, %20
  %28 = phi i32* [ %25, %20 ], [ null, %26 ]
  ret i32* %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
