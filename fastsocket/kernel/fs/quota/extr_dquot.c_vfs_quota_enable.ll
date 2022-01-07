; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_vfs_quota_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_vfs_quota_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.quota_info = type { i32, i32 }

@DQUOT_SUSPENDED = common dso_local global i32 0, align 4
@DQUOT_USAGE_ENABLED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@DQUOT_LIMITS_ENABLED = common dso_local global i32 0, align 4
@dq_state_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_quota_enable(%struct.inode* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.super_block*, align 8
  %12 = alloca %struct.quota_info*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load %struct.super_block*, %struct.super_block** %14, align 8
  store %struct.super_block* %15, %struct.super_block** %11, align 8
  %16 = load %struct.super_block*, %struct.super_block** %11, align 8
  %17 = call %struct.quota_info* @sb_dqopt(%struct.super_block* %16)
  store %struct.quota_info* %17, %struct.quota_info** %12, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @DQUOT_SUSPENDED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load %struct.super_block*, %struct.super_block** %11, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @vfs_quota_on_remount(%struct.super_block* %23, i32 %24)
  store i32 %25, i32* %5, align 4
  br label %96

26:                                               ; preds = %4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %96

30:                                               ; preds = %26
  %31 = load %struct.super_block*, %struct.super_block** %11, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @sb_has_quota_loaded(%struct.super_block* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %89

35:                                               ; preds = %30
  %36 = load %struct.quota_info*, %struct.quota_info** %12, align 8
  %37 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %36, i32 0, i32 0
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.super_block*, %struct.super_block** %11, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @sb_has_quota_loaded(%struct.super_block* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %35
  %44 = load %struct.quota_info*, %struct.quota_info** %12, align 8
  %45 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  br label %90

47:                                               ; preds = %35
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @DQUOT_USAGE_ENABLED, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load %struct.super_block*, %struct.super_block** %11, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i64 @sb_has_quota_usage_enabled(%struct.super_block* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* @EBUSY, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %10, align 4
  br label %84

60:                                               ; preds = %52, %47
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @DQUOT_LIMITS_ENABLED, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load %struct.super_block*, %struct.super_block** %11, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i64 @sb_has_quota_limits_enabled(%struct.super_block* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i32, i32* @EBUSY, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %10, align 4
  br label %84

73:                                               ; preds = %65, %60
  %74 = call i32 @spin_lock(i32* @dq_state_lock)
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @dquot_state_flag(i32 %75, i32 %76)
  %78 = load %struct.super_block*, %struct.super_block** %11, align 8
  %79 = call %struct.quota_info* @sb_dqopt(%struct.super_block* %78)
  %80 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %77
  store i32 %82, i32* %80, align 4
  %83 = call i32 @spin_unlock(i32* @dq_state_lock)
  br label %84

84:                                               ; preds = %73, %70, %57
  %85 = load %struct.quota_info*, %struct.quota_info** %12, align 8
  %86 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %85, i32 0, i32 0
  %87 = call i32 @mutex_unlock(i32* %86)
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %5, align 4
  br label %96

89:                                               ; preds = %30
  br label %90

90:                                               ; preds = %89, %43
  %91 = load %struct.inode*, %struct.inode** %6, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @vfs_load_quota_inode(%struct.inode* %91, i32 %92, i32 %93, i32 %94)
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %90, %84, %29, %22
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local %struct.quota_info* @sb_dqopt(%struct.super_block*) #1

declare dso_local i32 @vfs_quota_on_remount(%struct.super_block*, i32) #1

declare dso_local i64 @sb_has_quota_loaded(%struct.super_block*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @sb_has_quota_usage_enabled(%struct.super_block*, i32) #1

declare dso_local i64 @sb_has_quota_limits_enabled(%struct.super_block*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dquot_state_flag(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @vfs_load_quota_inode(%struct.inode*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
