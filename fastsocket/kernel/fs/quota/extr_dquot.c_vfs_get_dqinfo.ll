; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_vfs_get_dqinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_vfs_get_dqinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.if_dqinfo = type { i32, i32, i32, i32 }
%struct.mem_dqinfo = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.mem_dqinfo* }

@ESRCH = common dso_local global i32 0, align 4
@dq_data_lock = common dso_local global i32 0, align 4
@DQF_MASK = common dso_local global i32 0, align 4
@IIF_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_get_dqinfo(%struct.super_block* %0, i32 %1, %struct.if_dqinfo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.if_dqinfo*, align 8
  %8 = alloca %struct.mem_dqinfo*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.if_dqinfo* %2, %struct.if_dqinfo** %7, align 8
  %9 = load %struct.super_block*, %struct.super_block** %5, align 8
  %10 = call %struct.TYPE_2__* @sb_dqopt(%struct.super_block* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.super_block*, %struct.super_block** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @sb_has_quota_active(%struct.super_block* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %3
  %18 = load %struct.super_block*, %struct.super_block** %5, align 8
  %19 = call %struct.TYPE_2__* @sb_dqopt(%struct.super_block* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @mutex_unlock(i32* %20)
  %22 = load i32, i32* @ESRCH, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %58

24:                                               ; preds = %3
  %25 = load %struct.super_block*, %struct.super_block** %5, align 8
  %26 = call %struct.TYPE_2__* @sb_dqopt(%struct.super_block* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %28, i64 %30
  store %struct.mem_dqinfo* %31, %struct.mem_dqinfo** %8, align 8
  %32 = call i32 @spin_lock(i32* @dq_data_lock)
  %33 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %8, align 8
  %34 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.if_dqinfo*, %struct.if_dqinfo** %7, align 8
  %37 = getelementptr inbounds %struct.if_dqinfo, %struct.if_dqinfo* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %8, align 8
  %39 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.if_dqinfo*, %struct.if_dqinfo** %7, align 8
  %42 = getelementptr inbounds %struct.if_dqinfo, %struct.if_dqinfo* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %8, align 8
  %44 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @DQF_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load %struct.if_dqinfo*, %struct.if_dqinfo** %7, align 8
  %49 = getelementptr inbounds %struct.if_dqinfo, %struct.if_dqinfo* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @IIF_ALL, align 4
  %51 = load %struct.if_dqinfo*, %struct.if_dqinfo** %7, align 8
  %52 = getelementptr inbounds %struct.if_dqinfo, %struct.if_dqinfo* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = call i32 @spin_unlock(i32* @dq_data_lock)
  %54 = load %struct.super_block*, %struct.super_block** %5, align 8
  %55 = call %struct.TYPE_2__* @sb_dqopt(%struct.super_block* %54)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %24, %17
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_2__* @sb_dqopt(%struct.super_block*) #1

declare dso_local i32 @sb_has_quota_active(%struct.super_block*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
