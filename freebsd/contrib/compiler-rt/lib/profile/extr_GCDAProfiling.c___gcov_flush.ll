; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/profile/extr_GCDAProfiling.c___gcov_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/profile/extr_GCDAProfiling.c___gcov_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.fn_node* }
%struct.fn_node = type { %struct.fn_node*, i32 (...)* }

@flush_fn_list = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__gcov_flush() #0 {
  %1 = alloca %struct.fn_node*, align 8
  %2 = load %struct.fn_node*, %struct.fn_node** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @flush_fn_list, i32 0, i32 0), align 8
  store %struct.fn_node* %2, %struct.fn_node** %1, align 8
  br label %3

3:                                                ; preds = %6, %0
  %4 = load %struct.fn_node*, %struct.fn_node** %1, align 8
  %5 = icmp ne %struct.fn_node* %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %3
  %7 = load %struct.fn_node*, %struct.fn_node** %1, align 8
  %8 = getelementptr inbounds %struct.fn_node, %struct.fn_node* %7, i32 0, i32 1
  %9 = load i32 (...)*, i32 (...)** %8, align 8
  %10 = call i32 (...) %9()
  %11 = load %struct.fn_node*, %struct.fn_node** %1, align 8
  %12 = getelementptr inbounds %struct.fn_node, %struct.fn_node* %11, i32 0, i32 0
  %13 = load %struct.fn_node*, %struct.fn_node** %12, align 8
  store %struct.fn_node* %13, %struct.fn_node** %1, align 8
  br label %3

14:                                               ; preds = %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
