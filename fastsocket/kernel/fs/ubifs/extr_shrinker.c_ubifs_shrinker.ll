; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_shrinker.c_ubifs_shrinker.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_shrinker.c_ubifs_shrinker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shrinker = type { i32 }

@ubifs_clean_zn_cnt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"no clean znodes, kick a thread\00", align 1
@OLD_ZNODE_AGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"not enough old znodes, try to free young ones\00", align 1
@YOUNG_ZNODE_AGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"not enough young znodes, free all\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"freed nothing, but contention\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"%d znodes were freed, requested %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_shrinker(%struct.shrinker* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.shrinker*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.shrinker* %0, %struct.shrinker** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %11 = call i64 @atomic_long_read(i32* @ubifs_clean_zn_cnt)
  store i64 %11, i64* %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i64, i64* %10, align 8
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %4, align 4
  br label %65

17:                                               ; preds = %3
  %18 = load i64, i64* %10, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = call i32 (i8*, ...) @dbg_tnc(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 (...) @kick_a_thread()
  store i32 %22, i32* %4, align 4
  br label %65

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @OLD_ZNODE_AGE, align 4
  %26 = call i32 @shrink_tnc_trees(i32 %24, i32 %25, i32* %9)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %60

31:                                               ; preds = %23
  %32 = call i32 (i8*, ...) @dbg_tnc(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %8, align 4
  %35 = sub nsw i32 %33, %34
  %36 = load i32, i32* @YOUNG_ZNODE_AGE, align 4
  %37 = call i32 @shrink_tnc_trees(i32 %35, i32 %36, i32* %9)
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  br label %60

44:                                               ; preds = %31
  %45 = call i32 (i8*, ...) @dbg_tnc(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %8, align 4
  %48 = sub nsw i32 %46, %47
  %49 = call i32 @shrink_tnc_trees(i32 %48, i32 0, i32* %9)
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %44
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = call i32 (i8*, ...) @dbg_tnc(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %65

59:                                               ; preds = %54, %44
  br label %60

60:                                               ; preds = %59, %43, %30
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 (i8*, ...) @dbg_tnc(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %61, i32 %62)
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %60, %57, %20, %14
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i64 @atomic_long_read(i32*) #1

declare dso_local i32 @dbg_tnc(i8*, ...) #1

declare dso_local i32 @kick_a_thread(...) #1

declare dso_local i32 @shrink_tnc_trees(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
