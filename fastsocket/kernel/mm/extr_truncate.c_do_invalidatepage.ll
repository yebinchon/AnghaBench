; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_truncate.c_do_invalidatepage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_truncate.c_do_invalidatepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_invalidatepage(%struct.page* %0, i64 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i64, align 8
  %5 = alloca void (%struct.page*, i64)*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.page*, %struct.page** %3, align 8
  %7 = getelementptr inbounds %struct.page, %struct.page* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = bitcast {}** %11 to void (%struct.page*, i64)**
  %13 = load void (%struct.page*, i64)*, void (%struct.page*, i64)** %12, align 8
  store void (%struct.page*, i64)* %13, void (%struct.page*, i64)** %5, align 8
  %14 = load void (%struct.page*, i64)*, void (%struct.page*, i64)** %5, align 8
  %15 = icmp ne void (%struct.page*, i64)* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load void (%struct.page*, i64)*, void (%struct.page*, i64)** %5, align 8
  %18 = load %struct.page*, %struct.page** %3, align 8
  %19 = load i64, i64* %4, align 8
  call void %17(%struct.page* %18, i64 %19)
  br label %20

20:                                               ; preds = %16, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
