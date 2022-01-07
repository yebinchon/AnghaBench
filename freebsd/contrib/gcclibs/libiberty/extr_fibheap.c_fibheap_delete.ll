; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_fibheap.c_fibheap_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_fibheap.c_fibheap_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fibheap_delete(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  br label %3

3:                                                ; preds = %8, %1
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = call %struct.TYPE_6__* @fibheap_extr_min_node(%struct.TYPE_6__* %9)
  %11 = call i32 @free(%struct.TYPE_6__* %10)
  br label %3

12:                                               ; preds = %3
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %14 = call i32 @free(%struct.TYPE_6__* %13)
  ret void
}

declare dso_local i32 @free(%struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_6__* @fibheap_extr_min_node(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
