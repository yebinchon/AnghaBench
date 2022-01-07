; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_quota.c_do_qc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_quota.c_do_qc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_quota_data = type { i32, i64, i32, i32, %struct.gfs2_quota_change*, %struct.TYPE_2__* }
%struct.gfs2_quota_change = type { i8*, i8*, i64 }
%struct.TYPE_2__ = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i32, i32 }
%struct.gfs2_inode = type { i32 }

@QDF_CHANGE = common dso_local global i32 0, align 4
@QDF_USER = common dso_local global i32 0, align 4
@GFS2_QCF_USER = common dso_local global i32 0, align 4
@qd_lru_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_quota_data*, i64)* @do_qc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_qc(%struct.gfs2_quota_data* %0, i64 %1) #0 {
  %3 = alloca %struct.gfs2_quota_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.gfs2_sbd*, align 8
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca %struct.gfs2_quota_change*, align 8
  %8 = alloca i64, align 8
  store %struct.gfs2_quota_data* %0, %struct.gfs2_quota_data** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %10 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %9, i32 0, i32 5
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %12, align 8
  store %struct.gfs2_sbd* %13, %struct.gfs2_sbd** %5, align 8
  %14 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %15 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.gfs2_inode* @GFS2_I(i32 %16)
  store %struct.gfs2_inode* %17, %struct.gfs2_inode** %6, align 8
  %18 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %19 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %18, i32 0, i32 4
  %20 = load %struct.gfs2_quota_change*, %struct.gfs2_quota_change** %19, align 8
  store %struct.gfs2_quota_change* %20, %struct.gfs2_quota_change** %7, align 8
  %21 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %22 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %25 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %28 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @gfs2_trans_add_meta(i32 %26, i32 %29)
  %31 = load i32, i32* @QDF_CHANGE, align 4
  %32 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %33 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %32, i32 0, i32 0
  %34 = call i64 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %58, label %36

36:                                               ; preds = %2
  %37 = load %struct.gfs2_quota_change*, %struct.gfs2_quota_change** %7, align 8
  %38 = getelementptr inbounds %struct.gfs2_quota_change, %struct.gfs2_quota_change* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load %struct.gfs2_quota_change*, %struct.gfs2_quota_change** %7, align 8
  %40 = getelementptr inbounds %struct.gfs2_quota_change, %struct.gfs2_quota_change* %39, i32 0, i32 1
  store i8* null, i8** %40, align 8
  %41 = load i32, i32* @QDF_USER, align 4
  %42 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %43 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %42, i32 0, i32 0
  %44 = call i64 @test_bit(i32 %41, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %36
  %47 = load i32, i32* @GFS2_QCF_USER, align 4
  %48 = call i8* @cpu_to_be32(i32 %47)
  %49 = load %struct.gfs2_quota_change*, %struct.gfs2_quota_change** %7, align 8
  %50 = getelementptr inbounds %struct.gfs2_quota_change, %struct.gfs2_quota_change* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  br label %51

51:                                               ; preds = %46, %36
  %52 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %53 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i8* @cpu_to_be32(i32 %54)
  %56 = load %struct.gfs2_quota_change*, %struct.gfs2_quota_change** %7, align 8
  %57 = getelementptr inbounds %struct.gfs2_quota_change, %struct.gfs2_quota_change* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  br label %58

58:                                               ; preds = %51, %2
  %59 = load %struct.gfs2_quota_change*, %struct.gfs2_quota_change** %7, align 8
  %60 = getelementptr inbounds %struct.gfs2_quota_change, %struct.gfs2_quota_change* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @be64_to_cpu(i64 %61)
  %63 = load i64, i64* %4, align 8
  %64 = add nsw i64 %62, %63
  store i64 %64, i64* %8, align 8
  %65 = load i64, i64* %8, align 8
  %66 = call i64 @cpu_to_be64(i64 %65)
  %67 = load %struct.gfs2_quota_change*, %struct.gfs2_quota_change** %7, align 8
  %68 = getelementptr inbounds %struct.gfs2_quota_change, %struct.gfs2_quota_change* %67, i32 0, i32 2
  store i64 %66, i64* %68, align 8
  %69 = call i32 @spin_lock(i32* @qd_lru_lock)
  %70 = load i64, i64* %8, align 8
  %71 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %72 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  %73 = call i32 @spin_unlock(i32* @qd_lru_lock)
  %74 = load i64, i64* %8, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %95, label %76

76:                                               ; preds = %58
  %77 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %78 = load i32, i32* @QDF_CHANGE, align 4
  %79 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %80 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %79, i32 0, i32 0
  %81 = call i64 @test_bit(i32 %78, i32* %80)
  %82 = call i32 @gfs2_assert_warn(%struct.gfs2_sbd* %77, i64 %81)
  %83 = load i32, i32* @QDF_CHANGE, align 4
  %84 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %85 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %84, i32 0, i32 0
  %86 = call i32 @clear_bit(i32 %83, i32* %85)
  %87 = load %struct.gfs2_quota_change*, %struct.gfs2_quota_change** %7, align 8
  %88 = getelementptr inbounds %struct.gfs2_quota_change, %struct.gfs2_quota_change* %87, i32 0, i32 1
  store i8* null, i8** %88, align 8
  %89 = load %struct.gfs2_quota_change*, %struct.gfs2_quota_change** %7, align 8
  %90 = getelementptr inbounds %struct.gfs2_quota_change, %struct.gfs2_quota_change* %89, i32 0, i32 0
  store i8* null, i8** %90, align 8
  %91 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %92 = call i32 @slot_put(%struct.gfs2_quota_data* %91)
  %93 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %94 = call i32 @qd_put(%struct.gfs2_quota_data* %93)
  br label %107

95:                                               ; preds = %58
  %96 = load i32, i32* @QDF_CHANGE, align 4
  %97 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %98 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %97, i32 0, i32 0
  %99 = call i32 @test_and_set_bit(i32 %96, i32* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %95
  %102 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %103 = call i32 @qd_hold(%struct.gfs2_quota_data* %102)
  %104 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %105 = call i32 @slot_hold(%struct.gfs2_quota_data* %104)
  br label %106

106:                                              ; preds = %101, %95
  br label %107

107:                                              ; preds = %106, %76
  %108 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %109 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %108, i32 0, i32 0
  %110 = call i32 @mutex_unlock(i32* %109)
  ret void
}

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i64 @be64_to_cpu(i64) #1

declare dso_local i64 @cpu_to_be64(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @gfs2_assert_warn(%struct.gfs2_sbd*, i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @slot_put(%struct.gfs2_quota_data*) #1

declare dso_local i32 @qd_put(%struct.gfs2_quota_data*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @qd_hold(%struct.gfs2_quota_data*) #1

declare dso_local i32 @slot_hold(%struct.gfs2_quota_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
