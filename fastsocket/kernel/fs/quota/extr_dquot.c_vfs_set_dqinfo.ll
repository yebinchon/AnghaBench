; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_vfs_set_dqinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_vfs_set_dqinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.super_block*, i32)* }
%struct.if_dqinfo = type { i32, i32, i32, i32 }
%struct.mem_dqinfo = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.mem_dqinfo* }

@ESRCH = common dso_local global i32 0, align 4
@dq_data_lock = common dso_local global i32 0, align 4
@IIF_BGRACE = common dso_local global i32 0, align 4
@IIF_IGRACE = common dso_local global i32 0, align 4
@IIF_FLAGS = common dso_local global i32 0, align 4
@DQF_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_set_dqinfo(%struct.super_block* %0, i32 %1, %struct.if_dqinfo* %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.if_dqinfo*, align 8
  %7 = alloca %struct.mem_dqinfo*, align 8
  %8 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.if_dqinfo* %2, %struct.if_dqinfo** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.super_block*, %struct.super_block** %4, align 8
  %10 = call %struct.TYPE_4__* @sb_dqopt(%struct.super_block* %9)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.super_block*, %struct.super_block** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @sb_has_quota_active(%struct.super_block* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ESRCH, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %8, align 4
  br label %89

20:                                               ; preds = %3
  %21 = load %struct.super_block*, %struct.super_block** %4, align 8
  %22 = call %struct.TYPE_4__* @sb_dqopt(%struct.super_block* %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %24, i64 %26
  store %struct.mem_dqinfo* %27, %struct.mem_dqinfo** %7, align 8
  %28 = call i32 @spin_lock(i32* @dq_data_lock)
  %29 = load %struct.if_dqinfo*, %struct.if_dqinfo** %6, align 8
  %30 = getelementptr inbounds %struct.if_dqinfo, %struct.if_dqinfo* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IIF_BGRACE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %20
  %36 = load %struct.if_dqinfo*, %struct.if_dqinfo** %6, align 8
  %37 = getelementptr inbounds %struct.if_dqinfo, %struct.if_dqinfo* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %7, align 8
  %40 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %35, %20
  %42 = load %struct.if_dqinfo*, %struct.if_dqinfo** %6, align 8
  %43 = getelementptr inbounds %struct.if_dqinfo, %struct.if_dqinfo* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IIF_IGRACE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load %struct.if_dqinfo*, %struct.if_dqinfo** %6, align 8
  %50 = getelementptr inbounds %struct.if_dqinfo, %struct.if_dqinfo* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %7, align 8
  %53 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %48, %41
  %55 = load %struct.if_dqinfo*, %struct.if_dqinfo** %6, align 8
  %56 = getelementptr inbounds %struct.if_dqinfo, %struct.if_dqinfo* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @IIF_FLAGS, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %54
  %62 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %7, align 8
  %63 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @DQF_MASK, align 4
  %66 = xor i32 %65, -1
  %67 = and i32 %64, %66
  %68 = load %struct.if_dqinfo*, %struct.if_dqinfo** %6, align 8
  %69 = getelementptr inbounds %struct.if_dqinfo, %struct.if_dqinfo* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @DQF_MASK, align 4
  %72 = and i32 %70, %71
  %73 = or i32 %67, %72
  %74 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %7, align 8
  %75 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %61, %54
  %77 = call i32 @spin_unlock(i32* @dq_data_lock)
  %78 = load %struct.super_block*, %struct.super_block** %4, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @mark_info_dirty(%struct.super_block* %78, i32 %79)
  %81 = load %struct.super_block*, %struct.super_block** %4, align 8
  %82 = getelementptr inbounds %struct.super_block, %struct.super_block* %81, i32 0, i32 0
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)** %84, align 8
  %86 = load %struct.super_block*, %struct.super_block** %4, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i32 %85(%struct.super_block* %86, i32 %87)
  br label %89

89:                                               ; preds = %76, %17
  %90 = load %struct.super_block*, %struct.super_block** %4, align 8
  %91 = call %struct.TYPE_4__* @sb_dqopt(%struct.super_block* %90)
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = call i32 @mutex_unlock(i32* %92)
  %94 = load i32, i32* %8, align 4
  ret i32 %94
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_4__* @sb_dqopt(%struct.super_block*) #1

declare dso_local i32 @sb_has_quota_active(%struct.super_block*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mark_info_dirty(%struct.super_block*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
