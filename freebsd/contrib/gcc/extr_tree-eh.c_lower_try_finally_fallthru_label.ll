; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-eh.c_lower_try_finally_fallthru_label.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-eh.c_lower_try_finally_fallthru_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.leh_tf_state = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.leh_tf_state*)* @lower_try_finally_fallthru_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lower_try_finally_fallthru_label(%struct.leh_tf_state* %0) #0 {
  %2 = alloca %struct.leh_tf_state*, align 8
  %3 = alloca i64, align 8
  store %struct.leh_tf_state* %0, %struct.leh_tf_state** %2, align 8
  %4 = load %struct.leh_tf_state*, %struct.leh_tf_state** %2, align 8
  %5 = getelementptr inbounds %struct.leh_tf_state, %struct.leh_tf_state* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %31, label %9

9:                                                ; preds = %1
  %10 = call i64 (...) @create_artificial_label()
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = load %struct.leh_tf_state*, %struct.leh_tf_state** %2, align 8
  %13 = getelementptr inbounds %struct.leh_tf_state, %struct.leh_tf_state* %12, i32 0, i32 1
  store i64 %11, i64* %13, align 8
  %14 = load %struct.leh_tf_state*, %struct.leh_tf_state** %2, align 8
  %15 = getelementptr inbounds %struct.leh_tf_state, %struct.leh_tf_state* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = icmp ne %struct.TYPE_3__* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %9
  %21 = load i64, i64* %3, align 8
  %22 = load %struct.leh_tf_state*, %struct.leh_tf_state** %2, align 8
  %23 = getelementptr inbounds %struct.leh_tf_state, %struct.leh_tf_state* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @record_in_finally_tree(i64 %21, i32 %28)
  br label %30

30:                                               ; preds = %20, %9
  br label %31

31:                                               ; preds = %30, %1
  %32 = load i64, i64* %3, align 8
  ret i64 %32
}

declare dso_local i64 @create_artificial_label(...) #1

declare dso_local i32 @record_in_finally_tree(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
