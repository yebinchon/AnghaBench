; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_dquot_commit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_dquot_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { i64, i32, i32 }
%struct.quota_info = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 (%struct.dquot*)* }

@dq_list_lock = common dso_local global i32 0, align 4
@DQ_ACTIVE_B = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dquot_commit(%struct.dquot* %0) #0 {
  %2 = alloca %struct.dquot*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.quota_info*, align 8
  store %struct.dquot* %0, %struct.dquot** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.dquot*, %struct.dquot** %2, align 8
  %6 = getelementptr inbounds %struct.dquot, %struct.dquot* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.quota_info* @sb_dqopt(i32 %7)
  store %struct.quota_info* %8, %struct.quota_info** %4, align 8
  %9 = load %struct.quota_info*, %struct.quota_info** %4, align 8
  %10 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = call i32 @spin_lock(i32* @dq_list_lock)
  %13 = load %struct.dquot*, %struct.dquot** %2, align 8
  %14 = call i32 @clear_dquot_dirty(%struct.dquot* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = call i32 @spin_unlock(i32* @dq_list_lock)
  br label %42

18:                                               ; preds = %1
  %19 = call i32 @spin_unlock(i32* @dq_list_lock)
  %20 = load i32, i32* @DQ_ACTIVE_B, align 4
  %21 = load %struct.dquot*, %struct.dquot** %2, align 8
  %22 = getelementptr inbounds %struct.dquot, %struct.dquot* %21, i32 0, i32 1
  %23 = call i64 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %18
  %26 = load %struct.quota_info*, %struct.quota_info** %4, align 8
  %27 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %27, align 8
  %29 = load %struct.dquot*, %struct.dquot** %2, align 8
  %30 = getelementptr inbounds %struct.dquot, %struct.dquot* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %28, i64 %31
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.dquot*)*, i32 (%struct.dquot*)** %34, align 8
  %36 = load %struct.dquot*, %struct.dquot** %2, align 8
  %37 = call i32 %35(%struct.dquot* %36)
  store i32 %37, i32* %3, align 4
  br label %41

38:                                               ; preds = %18
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %38, %25
  br label %42

42:                                               ; preds = %41, %16
  %43 = load %struct.quota_info*, %struct.quota_info** %4, align 8
  %44 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.quota_info* @sb_dqopt(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @clear_dquot_dirty(%struct.dquot*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
