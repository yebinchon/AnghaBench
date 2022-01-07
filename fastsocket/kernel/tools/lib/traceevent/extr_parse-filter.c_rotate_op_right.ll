; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_rotate_op_right.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_rotate_op_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filter_arg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.filter_arg* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.filter_arg* (%struct.filter_arg*, %struct.filter_arg*)* @rotate_op_right to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.filter_arg* @rotate_op_right(%struct.filter_arg* %0, %struct.filter_arg* %1) #0 {
  %3 = alloca %struct.filter_arg*, align 8
  %4 = alloca %struct.filter_arg*, align 8
  %5 = alloca %struct.filter_arg*, align 8
  store %struct.filter_arg* %0, %struct.filter_arg** %3, align 8
  store %struct.filter_arg* %1, %struct.filter_arg** %4, align 8
  %6 = load %struct.filter_arg*, %struct.filter_arg** %3, align 8
  %7 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.filter_arg*, %struct.filter_arg** %8, align 8
  store %struct.filter_arg* %9, %struct.filter_arg** %5, align 8
  %10 = load %struct.filter_arg*, %struct.filter_arg** %4, align 8
  %11 = load %struct.filter_arg*, %struct.filter_arg** %3, align 8
  %12 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.filter_arg* %10, %struct.filter_arg** %13, align 8
  %14 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  ret %struct.filter_arg* %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
