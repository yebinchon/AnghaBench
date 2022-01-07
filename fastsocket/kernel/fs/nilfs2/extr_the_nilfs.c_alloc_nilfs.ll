; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_the_nilfs.c_alloc_nilfs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_the_nilfs.c_alloc_nilfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.the_nilfs = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.block_device* }
%struct.block_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.the_nilfs* (%struct.block_device*)* @alloc_nilfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.the_nilfs* @alloc_nilfs(%struct.block_device* %0) #0 {
  %2 = alloca %struct.the_nilfs*, align 8
  %3 = alloca %struct.block_device*, align 8
  %4 = alloca %struct.the_nilfs*, align 8
  store %struct.block_device* %0, %struct.block_device** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.the_nilfs* @kzalloc(i32 64, i32 %5)
  store %struct.the_nilfs* %6, %struct.the_nilfs** %4, align 8
  %7 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %8 = icmp ne %struct.the_nilfs* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.the_nilfs* null, %struct.the_nilfs** %2, align 8
  br label %47

10:                                               ; preds = %1
  %11 = load %struct.block_device*, %struct.block_device** %3, align 8
  %12 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %13 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %12, i32 0, i32 11
  store %struct.block_device* %11, %struct.block_device** %13, align 8
  %14 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %15 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %14, i32 0, i32 10
  %16 = call i32 @atomic_set(i32* %15, i32 1)
  %17 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %18 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %17, i32 0, i32 9
  %19 = call i32 @atomic_set(i32* %18, i32 0)
  %20 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %21 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %20, i32 0, i32 8
  %22 = call i32 @init_rwsem(i32* %21)
  %23 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %24 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %23, i32 0, i32 7
  %25 = call i32 @init_rwsem(i32* %24)
  %26 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %27 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %26, i32 0, i32 6
  %28 = call i32 @mutex_init(i32* %27)
  %29 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %30 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %29, i32 0, i32 5
  %31 = call i32 @init_rwsem(i32* %30)
  %32 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %33 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %32, i32 0, i32 4
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %36 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %35, i32 0, i32 3
  %37 = call i32 @INIT_LIST_HEAD(i32* %36)
  %38 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %39 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %38, i32 0, i32 2
  %40 = call i32 @spin_lock_init(i32* %39)
  %41 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %42 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %41, i32 0, i32 1
  store i32* null, i32** %42, align 8
  %43 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %44 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %43, i32 0, i32 0
  %45 = call i32 @init_rwsem(i32* %44)
  %46 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  store %struct.the_nilfs* %46, %struct.the_nilfs** %2, align 8
  br label %47

47:                                               ; preds = %10, %9
  %48 = load %struct.the_nilfs*, %struct.the_nilfs** %2, align 8
  ret %struct.the_nilfs* %48
}

declare dso_local %struct.the_nilfs* @kzalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
