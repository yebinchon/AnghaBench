; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_vfs.c_nfsd_get_raparms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_vfs.c_nfsd_get_raparms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raparm_hbucket = type { i32, %struct.raparms* }
%struct.raparms = type { i64, i64, i64, i32, %struct.raparms*, i64 }
%struct.TYPE_2__ = type { i32, i32* }

@RAPARM_HASH_MASK = common dso_local global i32 0, align 4
@raparm_hash = common dso_local global %struct.raparm_hbucket* null, align 8
@nfsdstats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.raparms* (i64, i64)* @nfsd_get_raparms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.raparms* @nfsd_get_raparms(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.raparms*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.raparms*, align 8
  %7 = alloca %struct.raparms**, align 8
  %8 = alloca %struct.raparms**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.raparm_hbucket*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.raparms** null, %struct.raparms*** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @jhash_2words(i64 %12, i64 %13, i32 -17973521)
  %15 = load i32, i32* @RAPARM_HASH_MASK, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %10, align 4
  %17 = load %struct.raparm_hbucket*, %struct.raparm_hbucket** @raparm_hash, align 8
  %18 = load i32, i32* %10, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.raparm_hbucket, %struct.raparm_hbucket* %17, i64 %19
  store %struct.raparm_hbucket* %20, %struct.raparm_hbucket** %11, align 8
  %21 = load %struct.raparm_hbucket*, %struct.raparm_hbucket** %11, align 8
  %22 = getelementptr inbounds %struct.raparm_hbucket, %struct.raparm_hbucket* %21, i32 0, i32 0
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.raparm_hbucket*, %struct.raparm_hbucket** %11, align 8
  %25 = getelementptr inbounds %struct.raparm_hbucket, %struct.raparm_hbucket* %24, i32 0, i32 1
  store %struct.raparms** %25, %struct.raparms*** %7, align 8
  br label %26

26:                                               ; preds = %53, %2
  %27 = load %struct.raparms**, %struct.raparms*** %7, align 8
  %28 = load %struct.raparms*, %struct.raparms** %27, align 8
  store %struct.raparms* %28, %struct.raparms** %6, align 8
  %29 = icmp ne %struct.raparms* %28, null
  br i1 %29, label %30, label %56

30:                                               ; preds = %26
  %31 = load %struct.raparms*, %struct.raparms** %6, align 8
  %32 = getelementptr inbounds %struct.raparms, %struct.raparms* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load %struct.raparms*, %struct.raparms** %6, align 8
  %38 = getelementptr inbounds %struct.raparms, %struct.raparms* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %4, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %81

43:                                               ; preds = %36, %30
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  %46 = load %struct.raparms*, %struct.raparms** %6, align 8
  %47 = getelementptr inbounds %struct.raparms, %struct.raparms* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load %struct.raparms**, %struct.raparms*** %7, align 8
  store %struct.raparms** %51, %struct.raparms*** %8, align 8
  br label %52

52:                                               ; preds = %50, %43
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.raparms*, %struct.raparms** %6, align 8
  %55 = getelementptr inbounds %struct.raparms, %struct.raparms* %54, i32 0, i32 4
  store %struct.raparms** %55, %struct.raparms*** %7, align 8
  br label %26

56:                                               ; preds = %26
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsdstats, i32 0, i32 0), align 8
  %58 = mul nsw i32 %57, 11
  %59 = sdiv i32 %58, 10
  store i32 %59, i32* %9, align 4
  %60 = load %struct.raparms**, %struct.raparms*** %8, align 8
  %61 = icmp ne %struct.raparms** %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %56
  %63 = load %struct.raparm_hbucket*, %struct.raparm_hbucket** %11, align 8
  %64 = getelementptr inbounds %struct.raparm_hbucket, %struct.raparm_hbucket* %63, i32 0, i32 0
  %65 = call i32 @spin_unlock(i32* %64)
  store %struct.raparms* null, %struct.raparms** %3, align 8
  br label %117

66:                                               ; preds = %56
  %67 = load %struct.raparms**, %struct.raparms*** %8, align 8
  store %struct.raparms** %67, %struct.raparms*** %7, align 8
  %68 = load %struct.raparms**, %struct.raparms*** %8, align 8
  %69 = load %struct.raparms*, %struct.raparms** %68, align 8
  store %struct.raparms* %69, %struct.raparms** %6, align 8
  %70 = load i64, i64* %4, align 8
  %71 = load %struct.raparms*, %struct.raparms** %6, align 8
  %72 = getelementptr inbounds %struct.raparms, %struct.raparms* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  %73 = load i64, i64* %5, align 8
  %74 = load %struct.raparms*, %struct.raparms** %6, align 8
  %75 = getelementptr inbounds %struct.raparms, %struct.raparms* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load %struct.raparms*, %struct.raparms** %6, align 8
  %77 = getelementptr inbounds %struct.raparms, %struct.raparms* %76, i32 0, i32 5
  store i64 0, i64* %77, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.raparms*, %struct.raparms** %6, align 8
  %80 = getelementptr inbounds %struct.raparms, %struct.raparms* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %66, %42
  %82 = load %struct.raparms**, %struct.raparms*** %7, align 8
  %83 = load %struct.raparm_hbucket*, %struct.raparm_hbucket** %11, align 8
  %84 = getelementptr inbounds %struct.raparm_hbucket, %struct.raparm_hbucket* %83, i32 0, i32 1
  %85 = icmp ne %struct.raparms** %82, %84
  br i1 %85, label %86, label %99

86:                                               ; preds = %81
  %87 = load %struct.raparms*, %struct.raparms** %6, align 8
  %88 = getelementptr inbounds %struct.raparms, %struct.raparms* %87, i32 0, i32 4
  %89 = load %struct.raparms*, %struct.raparms** %88, align 8
  %90 = load %struct.raparms**, %struct.raparms*** %7, align 8
  store %struct.raparms* %89, %struct.raparms** %90, align 8
  %91 = load %struct.raparm_hbucket*, %struct.raparm_hbucket** %11, align 8
  %92 = getelementptr inbounds %struct.raparm_hbucket, %struct.raparm_hbucket* %91, i32 0, i32 1
  %93 = load %struct.raparms*, %struct.raparms** %92, align 8
  %94 = load %struct.raparms*, %struct.raparms** %6, align 8
  %95 = getelementptr inbounds %struct.raparms, %struct.raparms* %94, i32 0, i32 4
  store %struct.raparms* %93, %struct.raparms** %95, align 8
  %96 = load %struct.raparms*, %struct.raparms** %6, align 8
  %97 = load %struct.raparm_hbucket*, %struct.raparm_hbucket** %11, align 8
  %98 = getelementptr inbounds %struct.raparm_hbucket, %struct.raparm_hbucket* %97, i32 0, i32 1
  store %struct.raparms* %96, %struct.raparms** %98, align 8
  br label %99

99:                                               ; preds = %86, %81
  %100 = load %struct.raparms*, %struct.raparms** %6, align 8
  %101 = getelementptr inbounds %struct.raparms, %struct.raparms* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* %101, align 8
  %104 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsdstats, i32 0, i32 1), align 8
  %105 = load i32, i32* %9, align 4
  %106 = mul nsw i32 %105, 10
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsdstats, i32 0, i32 0), align 8
  %108 = sdiv i32 %106, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %104, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  %113 = load %struct.raparm_hbucket*, %struct.raparm_hbucket** %11, align 8
  %114 = getelementptr inbounds %struct.raparm_hbucket, %struct.raparm_hbucket* %113, i32 0, i32 0
  %115 = call i32 @spin_unlock(i32* %114)
  %116 = load %struct.raparms*, %struct.raparms** %6, align 8
  store %struct.raparms* %116, %struct.raparms** %3, align 8
  br label %117

117:                                              ; preds = %99, %62
  %118 = load %struct.raparms*, %struct.raparms** %3, align 8
  ret %struct.raparms* %118
}

declare dso_local i32 @jhash_2words(i64, i64, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
