; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_alloc_mnt_ns.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_alloc_mnt_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mnt_namespace = type { i64, i32, i32, i32*, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mnt_ns_seq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mnt_namespace* ()* @alloc_mnt_ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mnt_namespace* @alloc_mnt_ns() #0 {
  %1 = alloca %struct.mnt_namespace*, align 8
  %2 = alloca %struct.mnt_namespace*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.mnt_namespace* @kmalloc(i32 40, i32 %4)
  store %struct.mnt_namespace* %5, %struct.mnt_namespace** %2, align 8
  %6 = load %struct.mnt_namespace*, %struct.mnt_namespace** %2, align 8
  %7 = icmp ne %struct.mnt_namespace* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  %11 = call %struct.mnt_namespace* @ERR_PTR(i32 %10)
  store %struct.mnt_namespace* %11, %struct.mnt_namespace** %1, align 8
  br label %41

12:                                               ; preds = %0
  %13 = load %struct.mnt_namespace*, %struct.mnt_namespace** %2, align 8
  %14 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %13, i32 0, i32 6
  %15 = call i32 @proc_alloc_inum(i32* %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load %struct.mnt_namespace*, %struct.mnt_namespace** %2, align 8
  %20 = call i32 @kfree(%struct.mnt_namespace* %19)
  %21 = load i32, i32* %3, align 4
  %22 = call %struct.mnt_namespace* @ERR_PTR(i32 %21)
  store %struct.mnt_namespace* %22, %struct.mnt_namespace** %1, align 8
  br label %41

23:                                               ; preds = %12
  %24 = call i32 @atomic64_add_return(i32 1, i32* @mnt_ns_seq)
  %25 = load %struct.mnt_namespace*, %struct.mnt_namespace** %2, align 8
  %26 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 4
  %27 = load %struct.mnt_namespace*, %struct.mnt_namespace** %2, align 8
  %28 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %27, i32 0, i32 4
  %29 = call i32 @atomic_set(i32* %28, i32 1)
  %30 = load %struct.mnt_namespace*, %struct.mnt_namespace** %2, align 8
  %31 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %30, i32 0, i32 3
  store i32* null, i32** %31, align 8
  %32 = load %struct.mnt_namespace*, %struct.mnt_namespace** %2, align 8
  %33 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %32, i32 0, i32 2
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.mnt_namespace*, %struct.mnt_namespace** %2, align 8
  %36 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %35, i32 0, i32 1
  %37 = call i32 @init_waitqueue_head(i32* %36)
  %38 = load %struct.mnt_namespace*, %struct.mnt_namespace** %2, align 8
  %39 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load %struct.mnt_namespace*, %struct.mnt_namespace** %2, align 8
  store %struct.mnt_namespace* %40, %struct.mnt_namespace** %1, align 8
  br label %41

41:                                               ; preds = %23, %18, %8
  %42 = load %struct.mnt_namespace*, %struct.mnt_namespace** %1, align 8
  ret %struct.mnt_namespace* %42
}

declare dso_local %struct.mnt_namespace* @kmalloc(i32, i32) #1

declare dso_local %struct.mnt_namespace* @ERR_PTR(i32) #1

declare dso_local i32 @proc_alloc_inum(i32*) #1

declare dso_local i32 @kfree(%struct.mnt_namespace*) #1

declare dso_local i32 @atomic64_add_return(i32, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
