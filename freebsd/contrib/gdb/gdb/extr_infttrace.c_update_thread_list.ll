; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infttrace.c_update_thread_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infttrace.c_update_thread_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64, i32, i64, %struct.TYPE_3__* }

@thread_head = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@vfork_in_flight = common dso_local global i64 0, align 8
@vforking_child_pid = common dso_local global i64 0, align 8
@debug_on = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @update_thread_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_thread_list() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %2, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @thread_head, i32 0, i32 0), align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %1, align 8
  br label %4

4:                                                ; preds = %40, %0
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %6 = icmp ne %struct.TYPE_3__* %5, null
  br i1 %6, label %7, label %44

7:                                                ; preds = %4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %29, label %12

12:                                               ; preds = %7
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = load i64, i64* @vfork_in_flight, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @vforking_child_pid, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  br label %29

29:                                               ; preds = %26, %20, %17, %12, %7
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @del_tthread(i32 %37)
  br label %39

39:                                               ; preds = %34, %29
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  store %struct.TYPE_3__* %43, %struct.TYPE_3__** %1, align 8
  br label %4

44:                                               ; preds = %4
  ret void
}

declare dso_local i32 @del_tthread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
