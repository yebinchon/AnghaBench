; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_buildsym.c_add_free_pendings.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_buildsym.c_add_free_pendings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pending = type { %struct.pending* }

@free_pendings = common dso_local global %struct.pending* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_free_pendings(%struct.pending* %0) #0 {
  %2 = alloca %struct.pending*, align 8
  %3 = alloca %struct.pending*, align 8
  store %struct.pending* %0, %struct.pending** %2, align 8
  %4 = load %struct.pending*, %struct.pending** %2, align 8
  store %struct.pending* %4, %struct.pending** %3, align 8
  %5 = load %struct.pending*, %struct.pending** %2, align 8
  %6 = icmp ne %struct.pending* %5, null
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %13, %7
  %9 = load %struct.pending*, %struct.pending** %3, align 8
  %10 = getelementptr inbounds %struct.pending, %struct.pending* %9, i32 0, i32 0
  %11 = load %struct.pending*, %struct.pending** %10, align 8
  %12 = icmp ne %struct.pending* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = load %struct.pending*, %struct.pending** %3, align 8
  %15 = getelementptr inbounds %struct.pending, %struct.pending* %14, i32 0, i32 0
  %16 = load %struct.pending*, %struct.pending** %15, align 8
  store %struct.pending* %16, %struct.pending** %3, align 8
  br label %8

17:                                               ; preds = %8
  %18 = load %struct.pending*, %struct.pending** @free_pendings, align 8
  %19 = load %struct.pending*, %struct.pending** %3, align 8
  %20 = getelementptr inbounds %struct.pending, %struct.pending* %19, i32 0, i32 0
  store %struct.pending* %18, %struct.pending** %20, align 8
  %21 = load %struct.pending*, %struct.pending** %2, align 8
  store %struct.pending* %21, %struct.pending** @free_pendings, align 8
  br label %22

22:                                               ; preds = %17, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
