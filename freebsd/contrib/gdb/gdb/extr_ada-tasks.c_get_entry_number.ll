; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-tasks.c_get_entry_number.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-tasks.c_get_entry_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_entry = type { i8*, i32, %struct.task_entry* }

@task_list = common dso_local global %struct.task_entry* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_entry_number(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.task_entry*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load %struct.task_entry*, %struct.task_entry** @task_list, align 8
  store %struct.task_entry* %5, %struct.task_entry** %4, align 8
  br label %6

6:                                                ; preds = %19, %1
  %7 = load %struct.task_entry*, %struct.task_entry** %4, align 8
  %8 = icmp ne %struct.task_entry* %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %6
  %10 = load %struct.task_entry*, %struct.task_entry** %4, align 8
  %11 = getelementptr inbounds %struct.task_entry, %struct.task_entry* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = icmp eq i8* %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load %struct.task_entry*, %struct.task_entry** %4, align 8
  %17 = getelementptr inbounds %struct.task_entry, %struct.task_entry* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %2, align 4
  br label %24

19:                                               ; preds = %9
  %20 = load %struct.task_entry*, %struct.task_entry** %4, align 8
  %21 = getelementptr inbounds %struct.task_entry, %struct.task_entry* %20, i32 0, i32 2
  %22 = load %struct.task_entry*, %struct.task_entry** %21, align 8
  store %struct.task_entry* %22, %struct.task_entry** %4, align 8
  br label %6

23:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %15
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
