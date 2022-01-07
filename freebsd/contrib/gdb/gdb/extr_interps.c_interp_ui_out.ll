; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_interps.c_interp_ui_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_interps.c_interp_ui_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.ui_out* }
%struct.ui_out = type { i32 }
%struct.interp = type { %struct.ui_out* }

@current_interpreter = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ui_out* @interp_ui_out(%struct.interp* %0) #0 {
  %2 = alloca %struct.ui_out*, align 8
  %3 = alloca %struct.interp*, align 8
  store %struct.interp* %0, %struct.interp** %3, align 8
  %4 = load %struct.interp*, %struct.interp** %3, align 8
  %5 = icmp ne %struct.interp* %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load %struct.interp*, %struct.interp** %3, align 8
  %8 = getelementptr inbounds %struct.interp, %struct.interp* %7, i32 0, i32 0
  %9 = load %struct.ui_out*, %struct.ui_out** %8, align 8
  store %struct.ui_out* %9, %struct.ui_out** %2, align 8
  br label %14

10:                                               ; preds = %1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_interpreter, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.ui_out*, %struct.ui_out** %12, align 8
  store %struct.ui_out* %13, %struct.ui_out** %2, align 8
  br label %14

14:                                               ; preds = %10, %6
  %15 = load %struct.ui_out*, %struct.ui_out** %2, align 8
  ret %struct.ui_out* %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
