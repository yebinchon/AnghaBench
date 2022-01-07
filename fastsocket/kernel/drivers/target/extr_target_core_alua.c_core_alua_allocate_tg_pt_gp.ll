; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_alua.c_core_alua_allocate_tg_pt_gp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_alua.c_core_alua_allocate_tg_pt_gp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t10_alua_tg_pt_gp = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, %struct.se_device*, i32, i32, i32, i32 }
%struct.se_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@t10_alua_tg_pt_gp_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Unable to allocate struct t10_alua_tg_pt_gp\0A\00", align 1
@ALUA_MD_BUF_LEN = common dso_local global i32 0, align 4
@ALUA_ACCESS_STATE_ACTIVE_OPTMIZED = common dso_local global i32 0, align 4
@TPGS_EXPLICT_ALUA = common dso_local global i32 0, align 4
@TPGS_IMPLICT_ALUA = common dso_local global i32 0, align 4
@ALUA_DEFAULT_NONOP_DELAY_MSECS = common dso_local global i32 0, align 4
@ALUA_DEFAULT_TRANS_DELAY_MSECS = common dso_local global i32 0, align 4
@ALUA_DEFAULT_IMPLICT_TRANS_SECS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.t10_alua_tg_pt_gp* @core_alua_allocate_tg_pt_gp(%struct.se_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.t10_alua_tg_pt_gp*, align 8
  %5 = alloca %struct.se_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.t10_alua_tg_pt_gp*, align 8
  store %struct.se_device* %0, %struct.se_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @t10_alua_tg_pt_gp_cache, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.t10_alua_tg_pt_gp* @kmem_cache_zalloc(i32 %9, i32 %10)
  store %struct.t10_alua_tg_pt_gp* %11, %struct.t10_alua_tg_pt_gp** %8, align 8
  %12 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  %13 = icmp ne %struct.t10_alua_tg_pt_gp* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store %struct.t10_alua_tg_pt_gp* null, %struct.t10_alua_tg_pt_gp** %4, align 8
  br label %90

16:                                               ; preds = %3
  %17 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  %18 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %17, i32 0, i32 2
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  %21 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %20, i32 0, i32 13
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  %24 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %23, i32 0, i32 12
  %25 = call i32 @mutex_init(i32* %24)
  %26 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  %27 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %26, i32 0, i32 11
  %28 = call i32 @spin_lock_init(i32* %27)
  %29 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  %30 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %29, i32 0, i32 10
  %31 = call i32 @atomic_set(i32* %30, i32 0)
  %32 = load %struct.se_device*, %struct.se_device** %5, align 8
  %33 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  %34 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %33, i32 0, i32 9
  store %struct.se_device* %32, %struct.se_device** %34, align 8
  %35 = load i32, i32* @ALUA_MD_BUF_LEN, align 4
  %36 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  %37 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %36, i32 0, i32 8
  store i32 %35, i32* %37, align 8
  %38 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  %39 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %38, i32 0, i32 7
  %40 = load i32, i32* @ALUA_ACCESS_STATE_ACTIVE_OPTMIZED, align 4
  %41 = call i32 @atomic_set(i32* %39, i32 %40)
  %42 = load i32, i32* @TPGS_EXPLICT_ALUA, align 4
  %43 = load i32, i32* @TPGS_IMPLICT_ALUA, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  %46 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @ALUA_DEFAULT_NONOP_DELAY_MSECS, align 4
  %48 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  %49 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @ALUA_DEFAULT_TRANS_DELAY_MSECS, align 4
  %51 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  %52 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @ALUA_DEFAULT_IMPLICT_TRANS_SECS, align 4
  %54 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  %55 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %88

58:                                               ; preds = %16
  %59 = load %struct.se_device*, %struct.se_device** %5, align 8
  %60 = getelementptr inbounds %struct.se_device, %struct.se_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = call i32 @spin_lock(i32* %61)
  %63 = load %struct.se_device*, %struct.se_device** %5, align 8
  %64 = getelementptr inbounds %struct.se_device, %struct.se_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  %68 = sext i32 %66 to i64
  %69 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  %70 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %69, i32 0, i32 3
  store i64 %68, i64* %70, align 8
  %71 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  %72 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %71, i32 0, i32 1
  store i32 1, i32* %72, align 4
  %73 = load %struct.se_device*, %struct.se_device** %5, align 8
  %74 = getelementptr inbounds %struct.se_device, %struct.se_device* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  %79 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %78, i32 0, i32 2
  %80 = load %struct.se_device*, %struct.se_device** %5, align 8
  %81 = getelementptr inbounds %struct.se_device, %struct.se_device* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = call i32 @list_add_tail(i32* %79, i32* %82)
  %84 = load %struct.se_device*, %struct.se_device** %5, align 8
  %85 = getelementptr inbounds %struct.se_device, %struct.se_device* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = call i32 @spin_unlock(i32* %86)
  br label %88

88:                                               ; preds = %58, %16
  %89 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  store %struct.t10_alua_tg_pt_gp* %89, %struct.t10_alua_tg_pt_gp** %4, align 8
  br label %90

90:                                               ; preds = %88, %14
  %91 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %4, align 8
  ret %struct.t10_alua_tg_pt_gp* %91
}

declare dso_local %struct.t10_alua_tg_pt_gp* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
