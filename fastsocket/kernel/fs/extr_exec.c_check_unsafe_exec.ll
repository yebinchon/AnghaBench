; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_exec.c_check_unsafe_exec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_exec.c_check_unsafe_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.linux_binprm = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@LSM_UNSAFE_SHARE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_unsafe_exec(%struct.linux_binprm* %0) #0 {
  %2 = alloca %struct.linux_binprm*, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.linux_binprm* %0, %struct.linux_binprm** %2, align 8
  %7 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %7, %struct.task_struct** %3, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %9 = call i32 @tracehook_unsafe_exec(%struct.task_struct* %8)
  %10 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %11 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  store i32 1, i32* %5, align 4
  %12 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %13 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = call i32 @write_lock(i32* %15)
  %17 = call i32 (...) @rcu_read_lock()
  %18 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %19 = call %struct.task_struct* @next_thread(%struct.task_struct* %18)
  store %struct.task_struct* %19, %struct.task_struct** %4, align 8
  br label %20

20:                                               ; preds = %36, %1
  %21 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %22 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %23 = icmp ne %struct.task_struct* %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  %25 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %26 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %29 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = icmp eq %struct.TYPE_2__* %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* %5, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %32, %24
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %38 = call %struct.task_struct* @next_thread(%struct.task_struct* %37)
  store %struct.task_struct* %38, %struct.task_struct** %4, align 8
  br label %20

39:                                               ; preds = %20
  %40 = call i32 (...) @rcu_read_unlock()
  %41 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %42 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ugt i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %39
  %49 = load i32, i32* @LSM_UNSAFE_SHARE, align 4
  %50 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %51 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %69

54:                                               ; preds = %39
  %55 = load i32, i32* @EAGAIN, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  %57 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %58 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %54
  %64 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %65 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  store i32 1, i32* %6, align 4
  br label %68

68:                                               ; preds = %63, %54
  br label %69

69:                                               ; preds = %68, %48
  %70 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %71 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = call i32 @write_unlock(i32* %73)
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i32 @tracehook_unsafe_exec(%struct.task_struct*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.task_struct* @next_thread(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
