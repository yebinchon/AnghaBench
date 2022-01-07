; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_cgroup_rmdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_cgroup_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32, %struct.cgroup* }
%struct.cgroup = type { i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32, %struct.cgroup* }
%struct.TYPE_2__ = type { i32 }

@wait = common dso_local global i32 0, align 4
@cgroup_mutex = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CGRP_WAIT_ON_RMDIR = common dso_local global i32 0, align 4
@cgroup_rmdir_waitq = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@release_list_lock = common dso_local global i32 0, align 4
@CGRP_REMOVED = common dso_local global i32 0, align 4
@CGRP_RELEASABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @cgroup_rmdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgroup_rmdir(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.cgroup*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.cgroup*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %10 = load %struct.dentry*, %struct.dentry** %5, align 8
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i32 0, i32 1
  %12 = load %struct.cgroup*, %struct.cgroup** %11, align 8
  store %struct.cgroup* %12, %struct.cgroup** %6, align 8
  %13 = load i32, i32* @wait, align 4
  %14 = call i32 @DEFINE_WAIT(i32 %13)
  br label %15

15:                                               ; preds = %99, %2
  %16 = call i32 @mutex_lock(i32* @cgroup_mutex)
  %17 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %18 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %17, i32 0, i32 6
  %19 = call i64 @atomic_read(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = call i32 @mutex_unlock(i32* @cgroup_mutex)
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %155

25:                                               ; preds = %15
  %26 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %27 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %26, i32 0, i32 5
  %28 = call i32 @list_empty(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = call i32 @mutex_unlock(i32* @cgroup_mutex)
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %155

34:                                               ; preds = %25
  %35 = call i32 @mutex_unlock(i32* @cgroup_mutex)
  %36 = load i32, i32* @CGRP_WAIT_ON_RMDIR, align 4
  %37 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %38 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %37, i32 0, i32 0
  %39 = call i32 @set_bit(i32 %36, i32* %38)
  %40 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %41 = call i32 @cgroup_call_pre_destroy(%struct.cgroup* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %34
  %45 = load i32, i32* @CGRP_WAIT_ON_RMDIR, align 4
  %46 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %47 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %46, i32 0, i32 0
  %48 = call i32 @clear_bit(i32 %45, i32* %47)
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %3, align 4
  br label %155

50:                                               ; preds = %34
  %51 = call i32 @mutex_lock(i32* @cgroup_mutex)
  %52 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %53 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %52, i32 0, i32 7
  %54 = load %struct.cgroup*, %struct.cgroup** %53, align 8
  store %struct.cgroup* %54, %struct.cgroup** %8, align 8
  %55 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %56 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %55, i32 0, i32 6
  %57 = call i64 @atomic_read(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %50
  %60 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %61 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %60, i32 0, i32 5
  %62 = call i32 @list_empty(i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %59, %50
  %65 = load i32, i32* @CGRP_WAIT_ON_RMDIR, align 4
  %66 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %67 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %66, i32 0, i32 0
  %68 = call i32 @clear_bit(i32 %65, i32* %67)
  %69 = call i32 @mutex_unlock(i32* @cgroup_mutex)
  %70 = load i32, i32* @EBUSY, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %155

72:                                               ; preds = %59
  %73 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %74 = call i32 @prepare_to_wait(i32* @cgroup_rmdir_waitq, i32* @wait, i32 %73)
  %75 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %76 = call i32 @cgroup_clear_css_refs(%struct.cgroup* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %100, label %78

78:                                               ; preds = %72
  %79 = call i32 @mutex_unlock(i32* @cgroup_mutex)
  %80 = load i32, i32* @CGRP_WAIT_ON_RMDIR, align 4
  %81 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %82 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %81, i32 0, i32 0
  %83 = call i64 @test_bit(i32 %80, i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = call i32 (...) @schedule()
  br label %87

87:                                               ; preds = %85, %78
  %88 = call i32 @finish_wait(i32* @cgroup_rmdir_waitq, i32* @wait)
  %89 = load i32, i32* @CGRP_WAIT_ON_RMDIR, align 4
  %90 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %91 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %90, i32 0, i32 0
  %92 = call i32 @clear_bit(i32 %89, i32* %91)
  %93 = load i32, i32* @current, align 4
  %94 = call i64 @signal_pending(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %87
  %97 = load i32, i32* @EINTR, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %155

99:                                               ; preds = %87
  br label %15

100:                                              ; preds = %72
  %101 = call i32 @finish_wait(i32* @cgroup_rmdir_waitq, i32* @wait)
  %102 = load i32, i32* @CGRP_WAIT_ON_RMDIR, align 4
  %103 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %104 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %103, i32 0, i32 0
  %105 = call i32 @clear_bit(i32 %102, i32* %104)
  %106 = call i32 @spin_lock(i32* @release_list_lock)
  %107 = load i32, i32* @CGRP_REMOVED, align 4
  %108 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %109 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %108, i32 0, i32 0
  %110 = call i32 @set_bit(i32 %107, i32* %109)
  %111 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %112 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %111, i32 0, i32 4
  %113 = call i32 @list_empty(i32* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %100
  %116 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %117 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %116, i32 0, i32 4
  %118 = call i32 @list_del(i32* %117)
  br label %119

119:                                              ; preds = %115, %100
  %120 = call i32 @spin_unlock(i32* @release_list_lock)
  %121 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %122 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @cgroup_lock_hierarchy(i32 %123)
  %125 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %126 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %125, i32 0, i32 3
  %127 = call i32 @list_del(i32* %126)
  %128 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %129 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @cgroup_unlock_hierarchy(i32 %130)
  %132 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %133 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %132, i32 0, i32 1
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = call i32 @spin_lock(i32* %135)
  %137 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %138 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %137, i32 0, i32 1
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = call %struct.dentry* @dget(%struct.TYPE_2__* %139)
  store %struct.dentry* %140, %struct.dentry** %7, align 8
  %141 = load %struct.dentry*, %struct.dentry** %7, align 8
  %142 = getelementptr inbounds %struct.dentry, %struct.dentry* %141, i32 0, i32 0
  %143 = call i32 @spin_unlock(i32* %142)
  %144 = load %struct.dentry*, %struct.dentry** %7, align 8
  %145 = call i32 @cgroup_d_remove_dir(%struct.dentry* %144)
  %146 = load %struct.dentry*, %struct.dentry** %7, align 8
  %147 = call i32 @dput(%struct.dentry* %146)
  %148 = load i32, i32* @CGRP_RELEASABLE, align 4
  %149 = load %struct.cgroup*, %struct.cgroup** %8, align 8
  %150 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %149, i32 0, i32 0
  %151 = call i32 @set_bit(i32 %148, i32* %150)
  %152 = load %struct.cgroup*, %struct.cgroup** %8, align 8
  %153 = call i32 @check_for_release(%struct.cgroup* %152)
  %154 = call i32 @mutex_unlock(i32* @cgroup_mutex)
  store i32 0, i32* %3, align 4
  br label %155

155:                                              ; preds = %119, %96, %64, %44, %30, %21
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @cgroup_call_pre_destroy(%struct.cgroup*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @cgroup_clear_css_refs(%struct.cgroup*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cgroup_lock_hierarchy(i32) #1

declare dso_local i32 @cgroup_unlock_hierarchy(i32) #1

declare dso_local %struct.dentry* @dget(%struct.TYPE_2__*) #1

declare dso_local i32 @cgroup_d_remove_dir(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @check_for_release(%struct.cgroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
