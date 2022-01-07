; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_fork.c_copy_sighand.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_fork.c_copy_sighand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.task_struct = type { i32 }
%struct.sighand_struct = type { i32, i32 }

@CLONE_SIGHAND = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_4__* null, align 8
@sighand_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.task_struct*)* @copy_sighand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_sighand(i64 %0, %struct.task_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.sighand_struct*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @CLONE_SIGHAND, align 8
  %9 = and i64 %7, %8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = call i32 @atomic_inc(i32* %15)
  store i32 0, i32* %3, align 4
  br label %44

17:                                               ; preds = %2
  %18 = load i32, i32* @sighand_cachep, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.sighand_struct* @kmem_cache_alloc(i32 %18, i32 %19)
  store %struct.sighand_struct* %20, %struct.sighand_struct** %6, align 8
  %21 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %22 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sighand_struct*, %struct.sighand_struct** %6, align 8
  %25 = call i32 @rcu_assign_pointer(i32 %23, %struct.sighand_struct* %24)
  %26 = load %struct.sighand_struct*, %struct.sighand_struct** %6, align 8
  %27 = icmp ne %struct.sighand_struct* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %17
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %44

31:                                               ; preds = %17
  %32 = load %struct.sighand_struct*, %struct.sighand_struct** %6, align 8
  %33 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %32, i32 0, i32 1
  %34 = call i32 @atomic_set(i32* %33, i32 1)
  %35 = load %struct.sighand_struct*, %struct.sighand_struct** %6, align 8
  %36 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @memcpy(i32 %37, i32 %42, i32 4)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %31, %28, %11
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local %struct.sighand_struct* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.sighand_struct*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
