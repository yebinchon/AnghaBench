; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_quota.c_qd_trylock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_quota.c_qd_trylock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_quota_data = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@MS_RDONLY = common dso_local global i32 0, align 4
@qd_lru_lock = common dso_local global i32 0, align 4
@QDF_LOCKED = common dso_local global i32 0, align 4
@QDF_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_quota_data*)* @qd_trylock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qd_trylock(%struct.gfs2_quota_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gfs2_quota_data*, align 8
  %4 = alloca %struct.gfs2_sbd*, align 8
  store %struct.gfs2_quota_data* %0, %struct.gfs2_quota_data** %3, align 8
  %5 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %6 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %5, i32 0, i32 6
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  store %struct.gfs2_sbd* %9, %struct.gfs2_sbd** %4, align 8
  %10 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %11 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MS_RDONLY, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %85

19:                                               ; preds = %1
  %20 = call i32 @spin_lock(i32* @qd_lru_lock)
  %21 = load i32, i32* @QDF_LOCKED, align 4
  %22 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %23 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %22, i32 0, i32 0
  %24 = call i64 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @QDF_CHANGE, align 4
  %28 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %29 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %28, i32 0, i32 0
  %30 = call i64 @test_bit(i32 %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %26, %19
  %33 = call i32 @spin_unlock(i32* @qd_lru_lock)
  store i32 0, i32* %2, align 4
  br label %85

34:                                               ; preds = %26
  %35 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %36 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %35, i32 0, i32 5
  %37 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %38 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %37, i32 0, i32 0
  %39 = call i32 @list_move_tail(i32* %36, i32* %38)
  %40 = load i32, i32* @QDF_LOCKED, align 4
  %41 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %42 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %41, i32 0, i32 0
  %43 = call i32 @set_bit(i32 %40, i32* %42)
  %44 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %45 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %46 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %45, i32 0, i32 4
  %47 = call i32 @atomic_read(i32* %46)
  %48 = call i32 @gfs2_assert_warn(%struct.gfs2_sbd* %44, i32 %47)
  %49 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %50 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %49, i32 0, i32 4
  %51 = call i32 @atomic_inc(i32* %50)
  %52 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %53 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %56 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %58 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %59 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @gfs2_assert_warn(%struct.gfs2_sbd* %57, i32 %60)
  %62 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %63 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 8
  %66 = call i32 @spin_unlock(i32* @qd_lru_lock)
  %67 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %68 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %69 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @gfs2_assert_warn(%struct.gfs2_sbd* %67, i32 %70)
  %72 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %73 = call i64 @bh_get(%struct.gfs2_quota_data* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %34
  %76 = load i32, i32* @QDF_LOCKED, align 4
  %77 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %78 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %77, i32 0, i32 0
  %79 = call i32 @clear_bit(i32 %76, i32* %78)
  %80 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %81 = call i32 @slot_put(%struct.gfs2_quota_data* %80)
  %82 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %83 = call i32 @qd_put(%struct.gfs2_quota_data* %82)
  store i32 0, i32* %2, align 4
  br label %85

84:                                               ; preds = %34
  store i32 1, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %75, %32, %18
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @gfs2_assert_warn(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @bh_get(%struct.gfs2_quota_data*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @slot_put(%struct.gfs2_quota_data*) #1

declare dso_local i32 @qd_put(%struct.gfs2_quota_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
