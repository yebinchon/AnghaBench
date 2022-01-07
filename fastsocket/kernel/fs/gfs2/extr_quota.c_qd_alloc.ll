; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_quota.c_qd_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_quota.c_qd_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32 }
%struct.gfs2_quota_data = type { i32, i32, i32, i32, i64, i32 }

@gfs2_quotad_cachep = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QDF_USER = common dso_local global i32 0, align 4
@gfs2_quota_glops = common dso_local global i32 0, align 4
@CREATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_sbd*, i32, i64, %struct.gfs2_quota_data**)* @qd_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qd_alloc(%struct.gfs2_sbd* %0, i32 %1, i64 %2, %struct.gfs2_quota_data** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gfs2_sbd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.gfs2_quota_data**, align 8
  %10 = alloca %struct.gfs2_quota_data*, align 8
  %11 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store %struct.gfs2_quota_data** %3, %struct.gfs2_quota_data*** %9, align 8
  %12 = load i32, i32* @gfs2_quotad_cachep, align 4
  %13 = load i32, i32* @GFP_NOFS, align 4
  %14 = call %struct.gfs2_quota_data* @kmem_cache_zalloc(i32 %12, i32 %13)
  store %struct.gfs2_quota_data* %14, %struct.gfs2_quota_data** %10, align 8
  %15 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %10, align 8
  %16 = icmp ne %struct.gfs2_quota_data* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %64

20:                                               ; preds = %4
  %21 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %10, align 8
  %22 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %21, i32 0, i32 5
  %23 = call i32 @atomic_set(i32* %22, i32 1)
  %24 = load i64, i64* %8, align 8
  %25 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %10, align 8
  %26 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %25, i32 0, i32 4
  store i64 %24, i64* %26, align 8
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %20
  %30 = load i32, i32* @QDF_USER, align 4
  %31 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %10, align 8
  %32 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %31, i32 0, i32 3
  %33 = call i32 @set_bit(i32 %30, i32* %32)
  br label %34

34:                                               ; preds = %29, %20
  %35 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %10, align 8
  %36 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %35, i32 0, i32 0
  store i32 -1, i32* %36, align 8
  %37 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %10, align 8
  %38 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %37, i32 0, i32 2
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  %40 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %41 = load i64, i64* %8, align 8
  %42 = trunc i64 %41 to i32
  %43 = mul nsw i32 2, %42
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = add nsw i32 %43, %47
  %49 = load i32, i32* @CREATE, align 4
  %50 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %10, align 8
  %51 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %50, i32 0, i32 1
  %52 = call i32 @gfs2_glock_get(%struct.gfs2_sbd* %40, i32 %48, i32* @gfs2_quota_glops, i32 %49, i32* %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %34
  br label %59

56:                                               ; preds = %34
  %57 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %10, align 8
  %58 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %9, align 8
  store %struct.gfs2_quota_data* %57, %struct.gfs2_quota_data** %58, align 8
  store i32 0, i32* %5, align 4
  br label %64

59:                                               ; preds = %55
  %60 = load i32, i32* @gfs2_quotad_cachep, align 4
  %61 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %10, align 8
  %62 = call i32 @kmem_cache_free(i32 %60, %struct.gfs2_quota_data* %61)
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %59, %56, %17
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local %struct.gfs2_quota_data* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @gfs2_glock_get(%struct.gfs2_sbd*, i32, i32*, i32, i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.gfs2_quota_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
