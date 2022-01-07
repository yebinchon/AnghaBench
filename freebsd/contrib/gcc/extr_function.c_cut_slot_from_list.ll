; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_cut_slot_from_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_cut_slot_from_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.temp_slot = type { %struct.temp_slot*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.temp_slot* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.temp_slot*, %struct.temp_slot**)* @cut_slot_from_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cut_slot_from_list(%struct.temp_slot* %0, %struct.temp_slot** %1) #0 {
  %3 = alloca %struct.temp_slot*, align 8
  %4 = alloca %struct.temp_slot**, align 8
  store %struct.temp_slot* %0, %struct.temp_slot** %3, align 8
  store %struct.temp_slot** %1, %struct.temp_slot*** %4, align 8
  %5 = load %struct.temp_slot*, %struct.temp_slot** %3, align 8
  %6 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %5, i32 0, i32 0
  %7 = load %struct.temp_slot*, %struct.temp_slot** %6, align 8
  %8 = icmp ne %struct.temp_slot* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load %struct.temp_slot*, %struct.temp_slot** %3, align 8
  %11 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load %struct.temp_slot*, %struct.temp_slot** %3, align 8
  %14 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %13, i32 0, i32 0
  %15 = load %struct.temp_slot*, %struct.temp_slot** %14, align 8
  %16 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %15, i32 0, i32 1
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %16, align 8
  br label %17

17:                                               ; preds = %9, %2
  %18 = load %struct.temp_slot*, %struct.temp_slot** %3, align 8
  %19 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load %struct.temp_slot*, %struct.temp_slot** %3, align 8
  %24 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %23, i32 0, i32 0
  %25 = load %struct.temp_slot*, %struct.temp_slot** %24, align 8
  %26 = load %struct.temp_slot*, %struct.temp_slot** %3, align 8
  %27 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store %struct.temp_slot* %25, %struct.temp_slot** %29, align 8
  br label %35

30:                                               ; preds = %17
  %31 = load %struct.temp_slot*, %struct.temp_slot** %3, align 8
  %32 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %31, i32 0, i32 0
  %33 = load %struct.temp_slot*, %struct.temp_slot** %32, align 8
  %34 = load %struct.temp_slot**, %struct.temp_slot*** %4, align 8
  store %struct.temp_slot* %33, %struct.temp_slot** %34, align 8
  br label %35

35:                                               ; preds = %30, %22
  %36 = load %struct.temp_slot*, %struct.temp_slot** %3, align 8
  %37 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %36, i32 0, i32 0
  store %struct.temp_slot* null, %struct.temp_slot** %37, align 8
  %38 = load %struct.temp_slot*, %struct.temp_slot** %3, align 8
  %39 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %38, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %39, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
