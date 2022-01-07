; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_zdb_leak_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_zdb_leak_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_22__*, %struct.TYPE_21__*, %struct.TYPE_24__*, %struct.TYPE_26__* }
%struct.TYPE_22__ = type { i32* }
%struct.TYPE_21__ = type { i32* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_25__* }

@dump_opt = common dso_local global i32* null, align 8
@zdb_metaslab_ops = common dso_local global i32 0, align 4
@UMEM_NOFAIL = common dso_local global i32 0, align 4
@SM_ALLOC = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SPA_FEATURE_DEVICE_REMOVAL = common dso_local global i32 0, align 4
@increment_indirect_mapping_cb = common dso_local global i32 0, align 4
@SCL_CONFIG = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_25__*, %struct.TYPE_23__*)* @zdb_leak_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zdb_leak_init(%struct.TYPE_25__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %4, align 8
  %7 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %8 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 2
  store %struct.TYPE_25__* %7, %struct.TYPE_25__** %9, align 8
  %10 = load i32*, i32** @dump_opt, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 76
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %65, label %14

14:                                               ; preds = %2
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  store %struct.TYPE_26__* %17, %struct.TYPE_26__** %5, align 8
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  store %struct.TYPE_24__* %20, %struct.TYPE_24__** %6, align 8
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 0
  store i32* @zdb_metaslab_ops, i32** %24, align 8
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 0
  store i32* @zdb_metaslab_ops, i32** %28, align 8
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 8
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* @UMEM_NOFAIL, align 4
  %36 = call i32 @umem_zalloc(i32 %34, i32 %35)
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %41 = call i32 @zdb_leak_init_prepare_indirect_vdevs(%struct.TYPE_25__* %39, %struct.TYPE_23__* %40)
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %43 = load i32, i32* @SM_ALLOC, align 4
  %44 = call i32 @load_concrete_ms_allocatable_trees(%struct.TYPE_25__* %42, i32 %43)
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %47 = call i32 @zdb_leak_init_exclude_checkpoint(%struct.TYPE_25__* %45, %struct.TYPE_23__* %46)
  %48 = load i32, i32* @stderr, align 4
  %49 = call i32 @fprintf(i32 %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %50, i32 0, i32 0
  %52 = call i64 @bpobj_is_open(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %14
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %56 = load i32, i32* @SPA_FEATURE_DEVICE_REMOVAL, align 4
  %57 = call i32 @spa_feature_is_enabled(%struct.TYPE_25__* %55, i32 %56)
  %58 = call i32 @ASSERT(i32 %57)
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %59, i32 0, i32 0
  %61 = load i32, i32* @increment_indirect_mapping_cb, align 4
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %63 = call i32 @bpobj_iterate_nofree(i32* %60, i32 %61, %struct.TYPE_23__* %62, i32* null)
  br label %64

64:                                               ; preds = %54, %14
  br label %74

65:                                               ; preds = %2
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %67 = call i64 @spa_get_checkpoint_space(%struct.TYPE_25__* %66)
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %67
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %69, align 8
  br label %74

74:                                               ; preds = %65, %64
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %76 = load i32, i32* @SCL_CONFIG, align 4
  %77 = load i32, i32* @FTAG, align 4
  %78 = load i32, i32* @RW_READER, align 4
  %79 = call i32 @spa_config_enter(%struct.TYPE_25__* %75, i32 %76, i32 %77, i32 %78)
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %82 = call i32 @zdb_ddt_leak_init(%struct.TYPE_25__* %80, %struct.TYPE_23__* %81)
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %84 = load i32, i32* @SCL_CONFIG, align 4
  %85 = load i32, i32* @FTAG, align 4
  %86 = call i32 @spa_config_exit(%struct.TYPE_25__* %83, i32 %84, i32 %85)
  ret void
}

declare dso_local i32 @umem_zalloc(i32, i32) #1

declare dso_local i32 @zdb_leak_init_prepare_indirect_vdevs(%struct.TYPE_25__*, %struct.TYPE_23__*) #1

declare dso_local i32 @load_concrete_ms_allocatable_trees(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @zdb_leak_init_exclude_checkpoint(%struct.TYPE_25__*, %struct.TYPE_23__*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @bpobj_is_open(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @spa_feature_is_enabled(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @bpobj_iterate_nofree(i32*, i32, %struct.TYPE_23__*, i32*) #1

declare dso_local i64 @spa_get_checkpoint_space(%struct.TYPE_25__*) #1

declare dso_local i32 @spa_config_enter(%struct.TYPE_25__*, i32, i32, i32) #1

declare dso_local i32 @zdb_ddt_leak_init(%struct.TYPE_25__*, %struct.TYPE_23__*) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_25__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
