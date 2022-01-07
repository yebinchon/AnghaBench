; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_ztest_verify_dnode_bt.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_ztest_verify_dnode_bt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.TYPE_10__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@FTAG = common dso_local global i32 0, align 4
@BT_MAGIC = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ztest_verify_dnode_bt(%struct.TYPE_9__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_11__, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %5, align 8
  store i32 0, i32* %7, align 4
  store i64 0, i64* %6, align 8
  br label %14

14:                                               ; preds = %74, %2
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %78

17:                                               ; preds = %14
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %8, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i32, i32* @FTAG, align 4
  %21 = call i64 @dmu_bonus_hold(i32* %18, i64 %19, i32 %20, i32** %10)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %74

24:                                               ; preds = %17
  %25 = load i32*, i32** %10, align 8
  %26 = call i32 @dmu_object_info_from_db(i32* %25, %struct.TYPE_11__* %9)
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp uge i64 %29, 24
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32*, i32** %10, align 8
  %33 = call %struct.TYPE_10__* @ztest_bt_bonus(i32* %32)
  store %struct.TYPE_10__* %33, %struct.TYPE_10__** %8, align 8
  br label %34

34:                                               ; preds = %31, %24
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %36 = icmp ne %struct.TYPE_10__* %35, null
  br i1 %36, label %37, label %70

37:                                               ; preds = %34
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @BT_MAGIC, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %70

43:                                               ; preds = %37
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ztest_bt_verify(%struct.TYPE_10__* %44, i32* %45, i64 %46, i32 %48, i32 %51, i32 %54, i32 %57, i32 %60)
  %62 = load i32*, i32** %10, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @ztest_verify_unused_bonus(i32* %62, %struct.TYPE_10__* %63, i64 %64, i32* %65, i32 %68)
  br label %70

70:                                               ; preds = %43, %37, %34
  %71 = load i32*, i32** %10, align 8
  %72 = load i32, i32* @FTAG, align 4
  %73 = call i32 @dmu_buf_rele(i32* %71, i32 %72)
  br label %74

74:                                               ; preds = %70, %23
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* @FALSE, align 4
  %77 = call i32 @dmu_object_next(i32* %75, i64* %6, i32 %76, i32 0)
  store i32 %77, i32* %7, align 4
  br label %14

78:                                               ; preds = %14
  ret void
}

declare dso_local i64 @dmu_bonus_hold(i32*, i64, i32, i32**) #1

declare dso_local i32 @dmu_object_info_from_db(i32*, %struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_10__* @ztest_bt_bonus(i32*) #1

declare dso_local i32 @ztest_bt_verify(%struct.TYPE_10__*, i32*, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ztest_verify_unused_bonus(i32*, %struct.TYPE_10__*, i64, i32*, i32) #1

declare dso_local i32 @dmu_buf_rele(i32*, i32) #1

declare dso_local i32 @dmu_object_next(i32*, i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
