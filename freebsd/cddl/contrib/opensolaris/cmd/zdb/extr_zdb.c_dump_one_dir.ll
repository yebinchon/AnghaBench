; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_dump_one_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_dump_one_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32* }

@DMU_OST_ANY = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@SPA_FEATURES = common dso_local global i64 0, align 8
@spa_feature_table = common dso_local global %struct.TYPE_4__* null, align 8
@ZFEATURE_FLAG_PER_DATASET = common dso_local global i32 0, align 4
@dataset_feature_count = common dso_local global i32* null, align 8
@remap_deadlist_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @dump_one_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_one_dir(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* @DMU_OST_ANY, align 4
  %11 = load i32, i32* @FTAG, align 4
  %12 = call i32 @open_objset(i8* %9, i32 %10, i32 %11, i32** %7)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %63

16:                                               ; preds = %2
  store i64 0, i64* %8, align 8
  br label %17

17:                                               ; preds = %45, %16
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @SPA_FEATURES, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %48

21:                                               ; preds = %17
  %22 = load i32*, i32** %7, align 8
  %23 = call %struct.TYPE_5__* @dmu_objset_ds(i32* %22)
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  br label %45

31:                                               ; preds = %21
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @spa_feature_table, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ZFEATURE_FLAG_PER_DATASET, align 4
  %38 = and i32 %36, %37
  %39 = call i32 @ASSERT(i32 %38)
  %40 = load i32*, i32** @dataset_feature_count, align 8
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %31, %30
  %46 = load i64, i64* %8, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %8, align 8
  br label %17

48:                                               ; preds = %17
  %49 = load i32*, i32** %7, align 8
  %50 = call %struct.TYPE_5__* @dmu_objset_ds(i32* %49)
  %51 = call i64 @dsl_dataset_remap_deadlist_exists(%struct.TYPE_5__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* @remap_deadlist_count, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* @remap_deadlist_count, align 4
  br label %56

56:                                               ; preds = %53, %48
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @dump_dir(i32* %57)
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* @FTAG, align 4
  %61 = call i32 @close_objset(i32* %59, i32 %60)
  %62 = call i32 (...) @fuid_table_destroy()
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %56, %15
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @open_objset(i8*, i32, i32, i32**) #1

declare dso_local %struct.TYPE_5__* @dmu_objset_ds(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @dsl_dataset_remap_deadlist_exists(%struct.TYPE_5__*) #1

declare dso_local i32 @dump_dir(i32*) #1

declare dso_local i32 @close_objset(i32*, i32) #1

declare dso_local i32 @fuid_table_destroy(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
