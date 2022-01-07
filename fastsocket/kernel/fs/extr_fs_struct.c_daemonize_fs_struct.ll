; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_fs_struct.c_daemonize_fs_struct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_fs_struct.c_daemonize_fs_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.fs_struct* }
%struct.fs_struct = type { i32, i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@init_fs = common dso_local global %struct.fs_struct zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @daemonize_fs_struct() #0 {
  %1 = alloca %struct.fs_struct*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %5 = load %struct.fs_struct*, %struct.fs_struct** %4, align 8
  store %struct.fs_struct* %5, %struct.fs_struct** %1, align 8
  %6 = load %struct.fs_struct*, %struct.fs_struct** %1, align 8
  %7 = icmp ne %struct.fs_struct* %6, null
  br i1 %7, label %8, label %38

8:                                                ; preds = %0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %10 = call i32 @task_lock(%struct.TYPE_4__* %9)
  %11 = call i32 @write_lock(i32* getelementptr inbounds (%struct.fs_struct, %struct.fs_struct* @init_fs, i32 0, i32 0))
  %12 = load i32, i32* getelementptr inbounds (%struct.fs_struct, %struct.fs_struct* @init_fs, i32 0, i32 1), align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* getelementptr inbounds (%struct.fs_struct, %struct.fs_struct* @init_fs, i32 0, i32 1), align 4
  %14 = call i32 @write_unlock(i32* getelementptr inbounds (%struct.fs_struct, %struct.fs_struct* @init_fs, i32 0, i32 0))
  %15 = load %struct.fs_struct*, %struct.fs_struct** %1, align 8
  %16 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %15, i32 0, i32 0
  %17 = call i32 @write_lock(i32* %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.fs_struct* @init_fs, %struct.fs_struct** %19, align 8
  %20 = load %struct.fs_struct*, %struct.fs_struct** %1, align 8
  %21 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %21, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %2, align 4
  %27 = load %struct.fs_struct*, %struct.fs_struct** %1, align 8
  %28 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %27, i32 0, i32 0
  %29 = call i32 @write_unlock(i32* %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %31 = call i32 @task_unlock(%struct.TYPE_4__* %30)
  %32 = load i32, i32* %2, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %8
  %35 = load %struct.fs_struct*, %struct.fs_struct** %1, align 8
  %36 = call i32 @free_fs_struct(%struct.fs_struct* %35)
  br label %37

37:                                               ; preds = %34, %8
  br label %38

38:                                               ; preds = %37, %0
  ret void
}

declare dso_local i32 @task_lock(%struct.TYPE_4__*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @task_unlock(%struct.TYPE_4__*) #1

declare dso_local i32 @free_fs_struct(%struct.fs_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
