; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-tasks.c_add_task_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-tasks.c_add_task_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_entry = type { i32, i32, i64, %struct.task_entry*, i8* }

@highest_task_num = common dso_local global i32 0, align 4
@task_list = common dso_local global %struct.task_entry* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @add_task_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_task_entry(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_entry*, align 8
  %6 = alloca %struct.task_entry*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.task_entry* null, %struct.task_entry** %5, align 8
  %7 = load i32, i32* @highest_task_num, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @highest_task_num, align 4
  %9 = call %struct.task_entry* @xmalloc(i32 32)
  store %struct.task_entry* %9, %struct.task_entry** %5, align 8
  %10 = load i32, i32* @highest_task_num, align 4
  %11 = load %struct.task_entry*, %struct.task_entry** %5, align 8
  %12 = getelementptr inbounds %struct.task_entry, %struct.task_entry* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = load %struct.task_entry*, %struct.task_entry** %5, align 8
  %15 = getelementptr inbounds %struct.task_entry, %struct.task_entry* %14, i32 0, i32 4
  store i8* %13, i8** %15, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.task_entry*, %struct.task_entry** %5, align 8
  %18 = getelementptr inbounds %struct.task_entry, %struct.task_entry* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.task_entry*, %struct.task_entry** %5, align 8
  %20 = getelementptr inbounds %struct.task_entry, %struct.task_entry* %19, i32 0, i32 3
  store %struct.task_entry* null, %struct.task_entry** %20, align 8
  %21 = load %struct.task_entry*, %struct.task_entry** @task_list, align 8
  store %struct.task_entry* %21, %struct.task_entry** %6, align 8
  %22 = load %struct.task_entry*, %struct.task_entry** %6, align 8
  %23 = icmp ne %struct.task_entry* %22, null
  br i1 %23, label %24, label %40

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %30, %24
  %26 = load %struct.task_entry*, %struct.task_entry** %6, align 8
  %27 = getelementptr inbounds %struct.task_entry, %struct.task_entry* %26, i32 0, i32 3
  %28 = load %struct.task_entry*, %struct.task_entry** %27, align 8
  %29 = icmp ne %struct.task_entry* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.task_entry*, %struct.task_entry** %6, align 8
  %32 = getelementptr inbounds %struct.task_entry, %struct.task_entry* %31, i32 0, i32 3
  %33 = load %struct.task_entry*, %struct.task_entry** %32, align 8
  store %struct.task_entry* %33, %struct.task_entry** %6, align 8
  br label %25

34:                                               ; preds = %25
  %35 = load %struct.task_entry*, %struct.task_entry** %5, align 8
  %36 = load %struct.task_entry*, %struct.task_entry** %6, align 8
  %37 = getelementptr inbounds %struct.task_entry, %struct.task_entry* %36, i32 0, i32 3
  store %struct.task_entry* %35, %struct.task_entry** %37, align 8
  %38 = load %struct.task_entry*, %struct.task_entry** %6, align 8
  %39 = getelementptr inbounds %struct.task_entry, %struct.task_entry* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  br label %42

40:                                               ; preds = %2
  %41 = load %struct.task_entry*, %struct.task_entry** %5, align 8
  store %struct.task_entry* %41, %struct.task_entry** @task_list, align 8
  br label %42

42:                                               ; preds = %40, %34
  %43 = load %struct.task_entry*, %struct.task_entry** %5, align 8
  %44 = getelementptr inbounds %struct.task_entry, %struct.task_entry* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  ret i32 %45
}

declare dso_local %struct.task_entry* @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
