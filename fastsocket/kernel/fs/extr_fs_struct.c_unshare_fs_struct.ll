; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_fs_struct.c_unshare_fs_struct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_fs_struct.c_unshare_fs_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.fs_struct* }
%struct.fs_struct = type { i32, i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unshare_fs_struct() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.fs_struct*, align 8
  %3 = alloca %struct.fs_struct*, align 8
  %4 = alloca i32, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.fs_struct*, %struct.fs_struct** %6, align 8
  store %struct.fs_struct* %7, %struct.fs_struct** %2, align 8
  %8 = load %struct.fs_struct*, %struct.fs_struct** %2, align 8
  %9 = call %struct.fs_struct* @copy_fs_struct(%struct.fs_struct* %8)
  store %struct.fs_struct* %9, %struct.fs_struct** %3, align 8
  %10 = load %struct.fs_struct*, %struct.fs_struct** %3, align 8
  %11 = icmp ne %struct.fs_struct* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %0
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %1, align 4
  br label %42

15:                                               ; preds = %0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %17 = call i32 @task_lock(%struct.TYPE_4__* %16)
  %18 = load %struct.fs_struct*, %struct.fs_struct** %2, align 8
  %19 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %18, i32 0, i32 0
  %20 = call i32 @write_lock(i32* %19)
  %21 = load %struct.fs_struct*, %struct.fs_struct** %2, align 8
  %22 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %22, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %4, align 4
  %28 = load %struct.fs_struct*, %struct.fs_struct** %3, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store %struct.fs_struct* %28, %struct.fs_struct** %30, align 8
  %31 = load %struct.fs_struct*, %struct.fs_struct** %2, align 8
  %32 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %31, i32 0, i32 0
  %33 = call i32 @write_unlock(i32* %32)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %35 = call i32 @task_unlock(%struct.TYPE_4__* %34)
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %15
  %39 = load %struct.fs_struct*, %struct.fs_struct** %2, align 8
  %40 = call i32 @free_fs_struct(%struct.fs_struct* %39)
  br label %41

41:                                               ; preds = %38, %15
  store i32 0, i32* %1, align 4
  br label %42

42:                                               ; preds = %41, %12
  %43 = load i32, i32* %1, align 4
  ret i32 %43
}

declare dso_local %struct.fs_struct* @copy_fs_struct(%struct.fs_struct*) #1

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
