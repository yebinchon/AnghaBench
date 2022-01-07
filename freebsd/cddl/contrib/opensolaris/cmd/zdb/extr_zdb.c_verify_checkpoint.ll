; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_verify_checkpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_verify_checkpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@SPA_FEATURE_POOL_CHECKPOINT = common dso_local global i32 0, align 4
@DMU_POOL_DIRECTORY_OBJECT = common dso_local global i32 0, align 4
@DMU_POOL_ZPOOL_CHECKPOINT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@dump_opt = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [46 x i8] c"\0APartially discarded checkpoint state found:\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"lookup error %d when looking for checkpointed uberblock in MOS\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"\0ACheckpointed uberblock found:\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"\0Aub_checkpoint_txg not set in checkpointed uberblock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @verify_checkpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_checkpoint(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %7 = load i32, i32* @SPA_FEATURE_POOL_CHECKPOINT, align 4
  %8 = call i32 @spa_feature_is_active(%struct.TYPE_10__* %6, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %58

11:                                               ; preds = %1
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @DMU_POOL_DIRECTORY_OBJECT, align 4
  %16 = load i32, i32* @DMU_POOL_ZPOOL_CHECKPOINT, align 4
  %17 = call i32 @zap_lookup(i32 %14, i32 %15, i32 %16, i32 4, i32 2, %struct.TYPE_9__* %4)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @ENOENT, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %11
  %22 = load i32*, i32** @dump_opt, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 76
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %29 = call i32 @dump_leftover_checkpoint_blocks(%struct.TYPE_10__* %28)
  store i32 0, i32* %2, align 4
  br label %58

30:                                               ; preds = %21, %11
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %58

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37
  %39 = call i32 @dump_uberblock(%struct.TYPE_9__* %4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  store i32 3, i32* %5, align 4
  br label %45

45:                                               ; preds = %43, %38
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load i32*, i32** @dump_opt, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 76
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %55 = call i32 @verify_checkpoint_blocks(%struct.TYPE_10__* %54)
  br label %56

56:                                               ; preds = %53, %48, %45
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %33, %26, %10
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @spa_feature_is_active(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @zap_lookup(i32, i32, i32, i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @dump_leftover_checkpoint_blocks(%struct.TYPE_10__*) #1

declare dso_local i32 @dump_uberblock(%struct.TYPE_9__*, i8*, i8*) #1

declare dso_local i32 @verify_checkpoint_blocks(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
