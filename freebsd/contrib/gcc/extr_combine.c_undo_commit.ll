; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_undo_commit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_undo_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.undo*, %struct.undo* }
%struct.undo = type { %struct.undo* }

@undobuf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @undo_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @undo_commit() #0 {
  %1 = alloca %struct.undo*, align 8
  %2 = alloca %struct.undo*, align 8
  %3 = load %struct.undo*, %struct.undo** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @undobuf, i32 0, i32 0), align 8
  store %struct.undo* %3, %struct.undo** %1, align 8
  br label %4

4:                                                ; preds = %15, %0
  %5 = load %struct.undo*, %struct.undo** %1, align 8
  %6 = icmp ne %struct.undo* %5, null
  br i1 %6, label %7, label %17

7:                                                ; preds = %4
  %8 = load %struct.undo*, %struct.undo** %1, align 8
  %9 = getelementptr inbounds %struct.undo, %struct.undo* %8, i32 0, i32 0
  %10 = load %struct.undo*, %struct.undo** %9, align 8
  store %struct.undo* %10, %struct.undo** %2, align 8
  %11 = load %struct.undo*, %struct.undo** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @undobuf, i32 0, i32 1), align 8
  %12 = load %struct.undo*, %struct.undo** %1, align 8
  %13 = getelementptr inbounds %struct.undo, %struct.undo* %12, i32 0, i32 0
  store %struct.undo* %11, %struct.undo** %13, align 8
  %14 = load %struct.undo*, %struct.undo** %1, align 8
  store %struct.undo* %14, %struct.undo** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @undobuf, i32 0, i32 1), align 8
  br label %15

15:                                               ; preds = %7
  %16 = load %struct.undo*, %struct.undo** %2, align 8
  store %struct.undo* %16, %struct.undo** %1, align 8
  br label %4

17:                                               ; preds = %4
  store %struct.undo* null, %struct.undo** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @undobuf, i32 0, i32 0), align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
