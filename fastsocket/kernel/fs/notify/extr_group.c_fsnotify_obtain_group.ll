; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/notify/extr_group.c_fsnotify_obtain_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/notify/extr_group.c_fsnotify_obtain_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsnotify_group = type { i32, i32, i32, i32, %struct.fsnotify_ops*, i32, i32, i32, i64, i32, i32, i32, i64, i32 }
%struct.fsnotify_ops = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@fsnotify_grp_mutex = common dso_local global i32 0, align 4
@fsnotify_groups = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fsnotify_group* @fsnotify_obtain_group(i32 %0, i64 %1, %struct.fsnotify_ops* %2) #0 {
  %4 = alloca %struct.fsnotify_group*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.fsnotify_ops*, align 8
  %8 = alloca %struct.fsnotify_group*, align 8
  %9 = alloca %struct.fsnotify_group*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store %struct.fsnotify_ops* %2, %struct.fsnotify_ops** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.fsnotify_group* @kmalloc(i32 80, i32 %10)
  store %struct.fsnotify_group* %11, %struct.fsnotify_group** %8, align 8
  %12 = load %struct.fsnotify_group*, %struct.fsnotify_group** %8, align 8
  %13 = icmp ne %struct.fsnotify_group* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.fsnotify_group* @ERR_PTR(i32 %16)
  store %struct.fsnotify_group* %17, %struct.fsnotify_group** %4, align 8
  br label %84

18:                                               ; preds = %3
  %19 = load %struct.fsnotify_group*, %struct.fsnotify_group** %8, align 8
  %20 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %19, i32 0, i32 13
  %21 = call i32 @atomic_set(i32* %20, i32 1)
  %22 = load %struct.fsnotify_group*, %struct.fsnotify_group** %8, align 8
  %23 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.fsnotify_group*, %struct.fsnotify_group** %8, align 8
  %26 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.fsnotify_group*, %struct.fsnotify_group** %8, align 8
  %29 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %28, i32 0, i32 12
  store i64 %27, i64* %29, align 8
  %30 = load %struct.fsnotify_group*, %struct.fsnotify_group** %8, align 8
  %31 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %30, i32 0, i32 11
  %32 = call i32 @mutex_init(i32* %31)
  %33 = load %struct.fsnotify_group*, %struct.fsnotify_group** %8, align 8
  %34 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %33, i32 0, i32 10
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.fsnotify_group*, %struct.fsnotify_group** %8, align 8
  %37 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %36, i32 0, i32 9
  %38 = call i32 @init_waitqueue_head(i32* %37)
  %39 = load %struct.fsnotify_group*, %struct.fsnotify_group** %8, align 8
  %40 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %39, i32 0, i32 8
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* @UINT_MAX, align 4
  %42 = load %struct.fsnotify_group*, %struct.fsnotify_group** %8, align 8
  %43 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %42, i32 0, i32 7
  store i32 %41, i32* %43, align 8
  %44 = load %struct.fsnotify_group*, %struct.fsnotify_group** %8, align 8
  %45 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %44, i32 0, i32 6
  %46 = call i32 @spin_lock_init(i32* %45)
  %47 = load %struct.fsnotify_group*, %struct.fsnotify_group** %8, align 8
  %48 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %47, i32 0, i32 2
  %49 = call i32 @atomic_set(i32* %48, i32 0)
  %50 = load %struct.fsnotify_group*, %struct.fsnotify_group** %8, align 8
  %51 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %50, i32 0, i32 5
  %52 = call i32 @INIT_LIST_HEAD(i32* %51)
  %53 = load %struct.fsnotify_ops*, %struct.fsnotify_ops** %7, align 8
  %54 = load %struct.fsnotify_group*, %struct.fsnotify_group** %8, align 8
  %55 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %54, i32 0, i32 4
  store %struct.fsnotify_ops* %53, %struct.fsnotify_ops** %55, align 8
  %56 = call i32 @mutex_lock(i32* @fsnotify_grp_mutex)
  %57 = load i32, i32* %5, align 4
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.fsnotify_ops*, %struct.fsnotify_ops** %7, align 8
  %60 = call %struct.fsnotify_group* @fsnotify_find_group(i32 %57, i64 %58, %struct.fsnotify_ops* %59)
  store %struct.fsnotify_group* %60, %struct.fsnotify_group** %9, align 8
  %61 = load %struct.fsnotify_group*, %struct.fsnotify_group** %9, align 8
  %62 = icmp ne %struct.fsnotify_group* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %18
  %64 = call i32 @mutex_unlock(i32* @fsnotify_grp_mutex)
  %65 = load %struct.fsnotify_group*, %struct.fsnotify_group** %8, align 8
  %66 = call i32 @fsnotify_put_group(%struct.fsnotify_group* %65)
  %67 = load %struct.fsnotify_group*, %struct.fsnotify_group** %9, align 8
  store %struct.fsnotify_group* %67, %struct.fsnotify_group** %4, align 8
  br label %84

68:                                               ; preds = %18
  %69 = load %struct.fsnotify_group*, %struct.fsnotify_group** %8, align 8
  %70 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %69, i32 0, i32 3
  %71 = call i32 @list_add_rcu(i32* %70, i32* @fsnotify_groups)
  %72 = load %struct.fsnotify_group*, %struct.fsnotify_group** %8, align 8
  %73 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  %74 = load %struct.fsnotify_group*, %struct.fsnotify_group** %8, align 8
  %75 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %74, i32 0, i32 2
  %76 = call i32 @atomic_inc(i32* %75)
  %77 = call i32 @mutex_unlock(i32* @fsnotify_grp_mutex)
  %78 = load i64, i64* %6, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %68
  %81 = call i32 (...) @fsnotify_recalc_global_mask()
  br label %82

82:                                               ; preds = %80, %68
  %83 = load %struct.fsnotify_group*, %struct.fsnotify_group** %8, align 8
  store %struct.fsnotify_group* %83, %struct.fsnotify_group** %4, align 8
  br label %84

84:                                               ; preds = %82, %63, %14
  %85 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  ret %struct.fsnotify_group* %85
}

declare dso_local %struct.fsnotify_group* @kmalloc(i32, i32) #1

declare dso_local %struct.fsnotify_group* @ERR_PTR(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.fsnotify_group* @fsnotify_find_group(i32, i64, %struct.fsnotify_ops*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @fsnotify_put_group(%struct.fsnotify_group*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @fsnotify_recalc_global_mask(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
