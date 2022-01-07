; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_file_table.c_get_empty_filp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_file_table.c_get_empty_filp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.file = type { i32, i32, %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.cred = type { i32 }

@get_empty_filp.old_max = internal global i64 0, align 8
@files_stat = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@nr_files = common dso_local global i32 0, align 4
@filp_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"VFS: file-max limit %lu reached\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.file* @get_empty_filp() #0 {
  %1 = alloca %struct.file*, align 8
  %2 = alloca %struct.cred*, align 8
  %3 = alloca %struct.file*, align 8
  %4 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %4, %struct.cred** %2, align 8
  %5 = call i64 (...) @get_nr_files()
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @files_stat, i32 0, i32 0), align 8
  %7 = icmp sge i64 %5, %6
  br i1 %7, label %8, label %18

8:                                                ; preds = %0
  %9 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %10 = call i32 @capable(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = call i64 @percpu_counter_sum_positive(i32* @nr_files)
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @files_stat, i32 0, i32 0), align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %53

17:                                               ; preds = %12
  br label %18

18:                                               ; preds = %17, %8, %0
  %19 = load i32, i32* @filp_cachep, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.file* @kmem_cache_zalloc(i32 %19, i32 %20)
  store %struct.file* %21, %struct.file** %3, align 8
  %22 = load %struct.file*, %struct.file** %3, align 8
  %23 = icmp eq %struct.file* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %65

25:                                               ; preds = %18
  %26 = call i32 @percpu_counter_inc(i32* @nr_files)
  %27 = load %struct.file*, %struct.file** %3, align 8
  %28 = call i64 @security_file_alloc(%struct.file* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %62

31:                                               ; preds = %25
  %32 = load %struct.file*, %struct.file** %3, align 8
  %33 = getelementptr inbounds %struct.file, %struct.file* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.file*, %struct.file** %3, align 8
  %37 = getelementptr inbounds %struct.file, %struct.file* %36, i32 0, i32 3
  %38 = call i32 @atomic_long_set(i32* %37, i32 1)
  %39 = load %struct.file*, %struct.file** %3, align 8
  %40 = getelementptr inbounds %struct.file, %struct.file* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = call i32 @rwlock_init(i32* %41)
  %43 = load %struct.cred*, %struct.cred** %2, align 8
  %44 = call i32 @get_cred(%struct.cred* %43)
  %45 = load %struct.file*, %struct.file** %3, align 8
  %46 = getelementptr inbounds %struct.file, %struct.file* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.file*, %struct.file** %3, align 8
  %48 = getelementptr inbounds %struct.file, %struct.file* %47, i32 0, i32 0
  %49 = call i32 @spin_lock_init(i32* %48)
  %50 = load %struct.file*, %struct.file** %3, align 8
  %51 = call i32 @eventpoll_init_file(%struct.file* %50)
  %52 = load %struct.file*, %struct.file** %3, align 8
  store %struct.file* %52, %struct.file** %1, align 8
  br label %66

53:                                               ; preds = %16
  %54 = call i64 (...) @get_nr_files()
  %55 = load i64, i64* @get_empty_filp.old_max, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = call i32 (...) @get_max_files()
  %59 = call i32 @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = call i64 (...) @get_nr_files()
  store i64 %60, i64* @get_empty_filp.old_max, align 8
  br label %61

61:                                               ; preds = %57, %53
  br label %65

62:                                               ; preds = %30
  %63 = load %struct.file*, %struct.file** %3, align 8
  %64 = call i32 @file_free(%struct.file* %63)
  br label %65

65:                                               ; preds = %62, %61, %24
  store %struct.file* null, %struct.file** %1, align 8
  br label %66

66:                                               ; preds = %65, %31
  %67 = load %struct.file*, %struct.file** %1, align 8
  ret %struct.file* %67
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i64 @get_nr_files(...) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @percpu_counter_sum_positive(i32*) #1

declare dso_local %struct.file* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @percpu_counter_inc(i32*) #1

declare dso_local i64 @security_file_alloc(%struct.file*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_long_set(i32*, i32) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @get_cred(%struct.cred*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @eventpoll_init_file(%struct.file*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @get_max_files(...) #1

declare dso_local i32 @file_free(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
