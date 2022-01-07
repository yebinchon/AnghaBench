; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_dqget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_dqget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.dquot = type { i32, i32, i32, i32 }
%struct.super_block = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (%struct.dquot*)* }

@dq_list_lock = common dso_local global i32 0, align 4
@dq_state_lock = common dso_local global i32 0, align 4
@dqstats = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@DQ_ACTIVE_B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dquot* @dqget(%struct.super_block* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dquot*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dquot*, align 8
  %10 = alloca %struct.dquot*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @hashfn(%struct.super_block* %11, i32 %12, i32 %13)
  store i32 %14, i32* %8, align 4
  store %struct.dquot* null, %struct.dquot** %9, align 8
  store %struct.dquot* null, %struct.dquot** %10, align 8
  %15 = load %struct.super_block*, %struct.super_block** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @sb_has_quota_active(%struct.super_block* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store %struct.dquot* null, %struct.dquot** %4, align 8
  br label %111

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %52, %20
  %22 = call i32 @spin_lock(i32* @dq_list_lock)
  %23 = call i32 @spin_lock(i32* @dq_state_lock)
  %24 = load %struct.super_block*, %struct.super_block** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @sb_has_quota_active(%struct.super_block* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = call i32 @spin_unlock(i32* @dq_state_lock)
  %30 = call i32 @spin_unlock(i32* @dq_list_lock)
  br label %103

31:                                               ; preds = %21
  %32 = call i32 @spin_unlock(i32* @dq_state_lock)
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.super_block*, %struct.super_block** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call %struct.dquot* @find_dquot(i32 %33, %struct.super_block* %34, i32 %35, i32 %36)
  store %struct.dquot* %37, %struct.dquot** %9, align 8
  %38 = load %struct.dquot*, %struct.dquot** %9, align 8
  %39 = icmp ne %struct.dquot* %38, null
  br i1 %39, label %65, label %40

40:                                               ; preds = %31
  %41 = load %struct.dquot*, %struct.dquot** %10, align 8
  %42 = icmp ne %struct.dquot* %41, null
  br i1 %42, label %53, label %43

43:                                               ; preds = %40
  %44 = call i32 @spin_unlock(i32* @dq_list_lock)
  %45 = load %struct.super_block*, %struct.super_block** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call %struct.dquot* @get_empty_dquot(%struct.super_block* %45, i32 %46)
  store %struct.dquot* %47, %struct.dquot** %10, align 8
  %48 = load %struct.dquot*, %struct.dquot** %10, align 8
  %49 = icmp ne %struct.dquot* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %43
  %51 = call i32 (...) @schedule()
  br label %52

52:                                               ; preds = %50, %43
  br label %21

53:                                               ; preds = %40
  %54 = load %struct.dquot*, %struct.dquot** %10, align 8
  store %struct.dquot* %54, %struct.dquot** %9, align 8
  store %struct.dquot* null, %struct.dquot** %10, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.dquot*, %struct.dquot** %9, align 8
  %57 = getelementptr inbounds %struct.dquot, %struct.dquot* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.dquot*, %struct.dquot** %9, align 8
  %59 = call i32 @put_inuse(%struct.dquot* %58)
  %60 = load %struct.dquot*, %struct.dquot** %9, align 8
  %61 = call i32 @insert_dquot_hash(%struct.dquot* %60)
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dqstats, i32 0, i32 0), align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dqstats, i32 0, i32 0), align 4
  %64 = call i32 @spin_unlock(i32* @dq_list_lock)
  br label %82

65:                                               ; preds = %31
  %66 = load %struct.dquot*, %struct.dquot** %9, align 8
  %67 = getelementptr inbounds %struct.dquot, %struct.dquot* %66, i32 0, i32 3
  %68 = call i32 @atomic_read(i32* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = load %struct.dquot*, %struct.dquot** %9, align 8
  %72 = call i32 @remove_free_dquot(%struct.dquot* %71)
  br label %73

73:                                               ; preds = %70, %65
  %74 = load %struct.dquot*, %struct.dquot** %9, align 8
  %75 = getelementptr inbounds %struct.dquot, %struct.dquot* %74, i32 0, i32 3
  %76 = call i32 @atomic_inc(i32* %75)
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dqstats, i32 0, i32 1), align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dqstats, i32 0, i32 1), align 4
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dqstats, i32 0, i32 0), align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dqstats, i32 0, i32 0), align 4
  %81 = call i32 @spin_unlock(i32* @dq_list_lock)
  br label %82

82:                                               ; preds = %73, %53
  %83 = load %struct.dquot*, %struct.dquot** %9, align 8
  %84 = call i32 @wait_on_dquot(%struct.dquot* %83)
  %85 = load i32, i32* @DQ_ACTIVE_B, align 4
  %86 = load %struct.dquot*, %struct.dquot** %9, align 8
  %87 = getelementptr inbounds %struct.dquot, %struct.dquot* %86, i32 0, i32 2
  %88 = call i32 @test_bit(i32 %85, i32* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %102, label %90

90:                                               ; preds = %82
  %91 = load %struct.super_block*, %struct.super_block** %5, align 8
  %92 = getelementptr inbounds %struct.super_block, %struct.super_block* %91, i32 0, i32 0
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i64 (%struct.dquot*)*, i64 (%struct.dquot*)** %94, align 8
  %96 = load %struct.dquot*, %struct.dquot** %9, align 8
  %97 = call i64 %95(%struct.dquot* %96)
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %90
  %100 = load %struct.dquot*, %struct.dquot** %9, align 8
  %101 = call i32 @dqput(%struct.dquot* %100)
  store %struct.dquot* null, %struct.dquot** %9, align 8
  br label %103

102:                                              ; preds = %90, %82
  br label %103

103:                                              ; preds = %102, %99, %28
  %104 = load %struct.dquot*, %struct.dquot** %10, align 8
  %105 = icmp ne %struct.dquot* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load %struct.dquot*, %struct.dquot** %10, align 8
  %108 = call i32 @do_destroy_dquot(%struct.dquot* %107)
  br label %109

109:                                              ; preds = %106, %103
  %110 = load %struct.dquot*, %struct.dquot** %9, align 8
  store %struct.dquot* %110, %struct.dquot** %4, align 8
  br label %111

111:                                              ; preds = %109, %19
  %112 = load %struct.dquot*, %struct.dquot** %4, align 8
  ret %struct.dquot* %112
}

declare dso_local i32 @hashfn(%struct.super_block*, i32, i32) #1

declare dso_local i32 @sb_has_quota_active(%struct.super_block*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.dquot* @find_dquot(i32, %struct.super_block*, i32, i32) #1

declare dso_local %struct.dquot* @get_empty_dquot(%struct.super_block*, i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @put_inuse(%struct.dquot*) #1

declare dso_local i32 @insert_dquot_hash(%struct.dquot*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @remove_free_dquot(%struct.dquot*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @wait_on_dquot(%struct.dquot*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @dqput(%struct.dquot*) #1

declare dso_local i32 @do_destroy_dquot(%struct.dquot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
