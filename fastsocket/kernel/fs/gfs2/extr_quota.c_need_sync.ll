; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_quota.c_need_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_quota.c_need_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_quota_data = type { i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { %struct.gfs2_tune }
%struct.gfs2_tune = type { i32, i32, i32 }

@qd_lru_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_quota_data*)* @need_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @need_sync(%struct.gfs2_quota_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gfs2_quota_data*, align 8
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca %struct.gfs2_tune*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gfs2_quota_data* %0, %struct.gfs2_quota_data** %3, align 8
  %10 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %11 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  store %struct.gfs2_sbd* %14, %struct.gfs2_sbd** %4, align 8
  %15 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %16 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %15, i32 0, i32 0
  store %struct.gfs2_tune* %16, %struct.gfs2_tune** %5, align 8
  store i32 1, i32* %9, align 4
  %17 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %18 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %87

23:                                               ; preds = %1
  %24 = call i32 @spin_lock(i32* @qd_lru_lock)
  %25 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %26 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %6, align 8
  %28 = call i32 @spin_unlock(i32* @qd_lru_lock)
  %29 = load %struct.gfs2_tune*, %struct.gfs2_tune** %5, align 8
  %30 = getelementptr inbounds %struct.gfs2_tune, %struct.gfs2_tune* %29, i32 0, i32 2
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load %struct.gfs2_tune*, %struct.gfs2_tune** %5, align 8
  %33 = getelementptr inbounds %struct.gfs2_tune, %struct.gfs2_tune* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %7, align 4
  %35 = load %struct.gfs2_tune*, %struct.gfs2_tune** %5, align 8
  %36 = getelementptr inbounds %struct.gfs2_tune, %struct.gfs2_tune* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %8, align 4
  %38 = load %struct.gfs2_tune*, %struct.gfs2_tune** %5, align 8
  %39 = getelementptr inbounds %struct.gfs2_tune, %struct.gfs2_tune* %38, i32 0, i32 2
  %40 = call i32 @spin_unlock(i32* %39)
  %41 = load i64, i64* %6, align 8
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %23
  store i32 0, i32* %9, align 4
  br label %85

44:                                               ; preds = %23
  %45 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %46 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @be64_to_cpu(i32 %48)
  %50 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %51 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @be64_to_cpu(i32 %53)
  %55 = icmp sge i64 %49, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %44
  store i32 0, i32* %9, align 4
  br label %84

57:                                               ; preds = %44
  %58 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %59 = call i32 @gfs2_jindex_size(%struct.gfs2_sbd* %58)
  %60 = load i32, i32* %7, align 4
  %61 = mul i32 %59, %60
  %62 = zext i32 %61 to i64
  %63 = load i64, i64* %6, align 8
  %64 = mul nsw i64 %63, %62
  store i64 %64, i64* %6, align 8
  %65 = load i64, i64* %6, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i64 @div_s64(i64 %65, i32 %66)
  store i64 %67, i64* %6, align 8
  %68 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %69 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @be64_to_cpu(i32 %71)
  %73 = load i64, i64* %6, align 8
  %74 = add nsw i64 %73, %72
  store i64 %74, i64* %6, align 8
  %75 = load i64, i64* %6, align 8
  %76 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %77 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @be64_to_cpu(i32 %79)
  %81 = icmp slt i64 %75, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %57
  store i32 0, i32* %9, align 4
  br label %83

83:                                               ; preds = %82, %57
  br label %84

84:                                               ; preds = %83, %56
  br label %85

85:                                               ; preds = %84, %43
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %85, %22
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @gfs2_jindex_size(%struct.gfs2_sbd*) #1

declare dso_local i64 @div_s64(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
