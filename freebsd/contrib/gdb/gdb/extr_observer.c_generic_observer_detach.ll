; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_observer.c_generic_observer_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_observer.c_generic_observer_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.observer_list = type { %struct.observer_list*, %struct.observer* }
%struct.observer = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Failed to detach observer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.observer_list**, %struct.observer*)* @generic_observer_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generic_observer_detach(%struct.observer_list** %0, %struct.observer* %1) #0 {
  %3 = alloca %struct.observer_list**, align 8
  %4 = alloca %struct.observer*, align 8
  %5 = alloca %struct.observer_list*, align 8
  %6 = alloca %struct.observer_list*, align 8
  store %struct.observer_list** %0, %struct.observer_list*** %3, align 8
  store %struct.observer* %1, %struct.observer** %4, align 8
  store %struct.observer_list* null, %struct.observer_list** %5, align 8
  %7 = load %struct.observer_list**, %struct.observer_list*** %3, align 8
  %8 = load %struct.observer_list*, %struct.observer_list** %7, align 8
  store %struct.observer_list* %8, %struct.observer_list** %6, align 8
  br label %9

9:                                                ; preds = %35, %2
  %10 = load %struct.observer_list*, %struct.observer_list** %6, align 8
  %11 = icmp ne %struct.observer_list* %10, null
  br i1 %11, label %12, label %40

12:                                               ; preds = %9
  %13 = load %struct.observer_list*, %struct.observer_list** %6, align 8
  %14 = getelementptr inbounds %struct.observer_list, %struct.observer_list* %13, i32 0, i32 1
  %15 = load %struct.observer*, %struct.observer** %14, align 8
  %16 = load %struct.observer*, %struct.observer** %4, align 8
  %17 = icmp eq %struct.observer* %15, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %12
  %19 = load %struct.observer_list*, %struct.observer_list** %5, align 8
  %20 = icmp ne %struct.observer_list* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load %struct.observer_list*, %struct.observer_list** %6, align 8
  %23 = getelementptr inbounds %struct.observer_list, %struct.observer_list* %22, i32 0, i32 0
  %24 = load %struct.observer_list*, %struct.observer_list** %23, align 8
  %25 = load %struct.observer_list*, %struct.observer_list** %5, align 8
  %26 = getelementptr inbounds %struct.observer_list, %struct.observer_list* %25, i32 0, i32 0
  store %struct.observer_list* %24, %struct.observer_list** %26, align 8
  br label %32

27:                                               ; preds = %18
  %28 = load %struct.observer_list*, %struct.observer_list** %6, align 8
  %29 = getelementptr inbounds %struct.observer_list, %struct.observer_list* %28, i32 0, i32 0
  %30 = load %struct.observer_list*, %struct.observer_list** %29, align 8
  %31 = load %struct.observer_list**, %struct.observer_list*** %3, align 8
  store %struct.observer_list* %30, %struct.observer_list** %31, align 8
  br label %32

32:                                               ; preds = %27, %21
  %33 = load %struct.observer_list*, %struct.observer_list** %6, align 8
  %34 = call i32 @xfree_observer_list_node(%struct.observer_list* %33)
  br label %42

35:                                               ; preds = %12
  %36 = load %struct.observer_list*, %struct.observer_list** %6, align 8
  store %struct.observer_list* %36, %struct.observer_list** %5, align 8
  %37 = load %struct.observer_list*, %struct.observer_list** %6, align 8
  %38 = getelementptr inbounds %struct.observer_list, %struct.observer_list* %37, i32 0, i32 0
  %39 = load %struct.observer_list*, %struct.observer_list** %38, align 8
  store %struct.observer_list* %39, %struct.observer_list** %6, align 8
  br label %9

40:                                               ; preds = %9
  %41 = call i32 @warning(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %32
  ret void
}

declare dso_local i32 @xfree_observer_list_node(%struct.observer_list*) #1

declare dso_local i32 @warning(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
