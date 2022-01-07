; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_fs_struct.c_exit_fs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_fs_struct.c_exit_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.fs_struct* }
%struct.fs_struct = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exit_fs(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.fs_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %5 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %6 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %5, i32 0, i32 0
  %7 = load %struct.fs_struct*, %struct.fs_struct** %6, align 8
  store %struct.fs_struct* %7, %struct.fs_struct** %3, align 8
  %8 = load %struct.fs_struct*, %struct.fs_struct** %3, align 8
  %9 = icmp ne %struct.fs_struct* %8, null
  br i1 %9, label %10, label %36

10:                                               ; preds = %1
  %11 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %12 = call i32 @task_lock(%struct.task_struct* %11)
  %13 = load %struct.fs_struct*, %struct.fs_struct** %3, align 8
  %14 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %13, i32 0, i32 0
  %15 = call i32 @write_lock(i32* %14)
  %16 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %17 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %16, i32 0, i32 0
  store %struct.fs_struct* null, %struct.fs_struct** %17, align 8
  %18 = load %struct.fs_struct*, %struct.fs_struct** %3, align 8
  %19 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %19, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %4, align 4
  %25 = load %struct.fs_struct*, %struct.fs_struct** %3, align 8
  %26 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %25, i32 0, i32 0
  %27 = call i32 @write_unlock(i32* %26)
  %28 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %29 = call i32 @task_unlock(%struct.task_struct* %28)
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %10
  %33 = load %struct.fs_struct*, %struct.fs_struct** %3, align 8
  %34 = call i32 @free_fs_struct(%struct.fs_struct* %33)
  br label %35

35:                                               ; preds = %32, %10
  br label %36

36:                                               ; preds = %35, %1
  ret void
}

declare dso_local i32 @task_lock(%struct.task_struct*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @task_unlock(%struct.task_struct*) #1

declare dso_local i32 @free_fs_struct(%struct.fs_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
