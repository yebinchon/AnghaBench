; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_quota.c_do_glock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_quota.c_do_glock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_quota_data = type { %struct.TYPE_2__*, %struct.gfs2_quota_lvb }
%struct.TYPE_2__ = type { i64, %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i32 }
%struct.gfs2_quota_lvb = type { i64 }
%struct.gfs2_holder = type { i32 }
%struct.gfs2_inode = type { %struct.TYPE_2__* }

@LM_ST_SHARED = common dso_local global i32 0, align 4
@GFS2_MAGIC = common dso_local global i32 0, align 4
@LM_ST_EXCLUSIVE = common dso_local global i32 0, align 4
@GL_NOCACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_quota_data*, i32, %struct.gfs2_holder*)* @do_glock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_glock(%struct.gfs2_quota_data* %0, i32 %1, %struct.gfs2_holder* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_quota_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gfs2_holder*, align 8
  %8 = alloca %struct.gfs2_sbd*, align 8
  %9 = alloca %struct.gfs2_inode*, align 8
  %10 = alloca %struct.gfs2_holder, align 4
  %11 = alloca i32, align 4
  store %struct.gfs2_quota_data* %0, %struct.gfs2_quota_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.gfs2_holder* %2, %struct.gfs2_holder** %7, align 8
  %12 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %5, align 8
  %13 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %15, align 8
  store %struct.gfs2_sbd* %16, %struct.gfs2_sbd** %8, align 8
  %17 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %18 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.gfs2_inode* @GFS2_I(i32 %19)
  store %struct.gfs2_inode* %20, %struct.gfs2_inode** %9, align 8
  br label %21

21:                                               ; preds = %83, %3
  %22 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %5, align 8
  %23 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* @LM_ST_SHARED, align 4
  %26 = load %struct.gfs2_holder*, %struct.gfs2_holder** %7, align 8
  %27 = call i32 @gfs2_glock_nq_init(%struct.TYPE_2__* %24, i32 %25, i32 0, %struct.gfs2_holder* %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %4, align 4
  br label %94

32:                                               ; preds = %21
  %33 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %5, align 8
  %34 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %33, i32 0, i32 1
  %35 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %5, align 8
  %36 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.gfs2_quota_lvb*
  %41 = bitcast %struct.gfs2_quota_lvb* %34 to i8*
  %42 = bitcast %struct.gfs2_quota_lvb* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 8, i1 false)
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %32
  %46 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %5, align 8
  %47 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.gfs2_quota_lvb, %struct.gfs2_quota_lvb* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* @GFS2_MAGIC, align 4
  %51 = call i64 @cpu_to_be32(i32 %50)
  %52 = icmp ne i64 %49, %51
  br i1 %52, label %53, label %87

53:                                               ; preds = %45, %32
  %54 = load %struct.gfs2_holder*, %struct.gfs2_holder** %7, align 8
  %55 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %54)
  %56 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %5, align 8
  %57 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %60 = load i32, i32* @GL_NOCACHE, align 4
  %61 = load %struct.gfs2_holder*, %struct.gfs2_holder** %7, align 8
  %62 = call i32 @gfs2_glock_nq_init(%struct.TYPE_2__* %58, i32 %59, i32 %60, %struct.gfs2_holder* %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %53
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %4, align 4
  br label %94

67:                                               ; preds = %53
  %68 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %69 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32, i32* @LM_ST_SHARED, align 4
  %72 = call i32 @gfs2_glock_nq_init(%struct.TYPE_2__* %70, i32 %71, i32 0, %struct.gfs2_holder* %10)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %90

76:                                               ; preds = %67
  %77 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %78 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %5, align 8
  %79 = call i32 @update_qd(%struct.gfs2_sbd* %77, %struct.gfs2_quota_data* %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %88

83:                                               ; preds = %76
  %84 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %10)
  %85 = load %struct.gfs2_holder*, %struct.gfs2_holder** %7, align 8
  %86 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %85)
  store i32 0, i32* %6, align 4
  br label %21

87:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %94

88:                                               ; preds = %82
  %89 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %10)
  br label %90

90:                                               ; preds = %88, %75
  %91 = load %struct.gfs2_holder*, %struct.gfs2_holder** %7, align 8
  %92 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %91)
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %90, %87, %65, %30
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

declare dso_local i32 @gfs2_glock_nq_init(%struct.TYPE_2__*, i32, i32, %struct.gfs2_holder*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

declare dso_local i32 @update_qd(%struct.gfs2_sbd*, %struct.gfs2_quota_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
