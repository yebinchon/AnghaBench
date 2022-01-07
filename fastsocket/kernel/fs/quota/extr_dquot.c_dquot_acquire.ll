; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_dquot_acquire.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_dquot_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { i64, i32, i32, i32, i32 }
%struct.quota_info = type { i32, %struct.TYPE_2__**, i32* }
%struct.TYPE_2__ = type { i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (i32, i64)* }

@DQ_READ_B = common dso_local global i32 0, align 4
@DQ_ACTIVE_B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dquot_acquire(%struct.dquot* %0) #0 {
  %2 = alloca %struct.dquot*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.quota_info*, align 8
  store %struct.dquot* %0, %struct.dquot** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = load %struct.dquot*, %struct.dquot** %2, align 8
  %7 = getelementptr inbounds %struct.dquot, %struct.dquot* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.quota_info* @sb_dqopt(i32 %8)
  store %struct.quota_info* %9, %struct.quota_info** %5, align 8
  %10 = load %struct.dquot*, %struct.dquot** %2, align 8
  %11 = getelementptr inbounds %struct.dquot, %struct.dquot* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.quota_info*, %struct.quota_info** %5, align 8
  %14 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load i32, i32* @DQ_READ_B, align 4
  %17 = load %struct.dquot*, %struct.dquot** %2, align 8
  %18 = getelementptr inbounds %struct.dquot, %struct.dquot* %17, i32 0, i32 2
  %19 = call i32 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %1
  %22 = load %struct.quota_info*, %struct.quota_info** %5, align 8
  %23 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %23, align 8
  %25 = load %struct.dquot*, %struct.dquot** %2, align 8
  %26 = getelementptr inbounds %struct.dquot, %struct.dquot* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %24, i64 %27
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.dquot*)*, i32 (%struct.dquot*)** %30, align 8
  %32 = load %struct.dquot*, %struct.dquot** %2, align 8
  %33 = call i32 %31(%struct.dquot* %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %21, %1
  %35 = load i32, i32* %3, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %108

38:                                               ; preds = %34
  %39 = load i32, i32* @DQ_READ_B, align 4
  %40 = load %struct.dquot*, %struct.dquot** %2, align 8
  %41 = getelementptr inbounds %struct.dquot, %struct.dquot* %40, i32 0, i32 2
  %42 = call i32 @set_bit(i32 %39, i32* %41)
  %43 = load i32, i32* @DQ_ACTIVE_B, align 4
  %44 = load %struct.dquot*, %struct.dquot** %2, align 8
  %45 = getelementptr inbounds %struct.dquot, %struct.dquot* %44, i32 0, i32 2
  %46 = call i32 @test_bit(i32 %43, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %103, label %48

48:                                               ; preds = %38
  %49 = load %struct.dquot*, %struct.dquot** %2, align 8
  %50 = getelementptr inbounds %struct.dquot, %struct.dquot* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %103, label %53

53:                                               ; preds = %48
  %54 = load %struct.quota_info*, %struct.quota_info** %5, align 8
  %55 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %55, align 8
  %57 = load %struct.dquot*, %struct.dquot** %2, align 8
  %58 = getelementptr inbounds %struct.dquot, %struct.dquot* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %56, i64 %59
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32 (%struct.dquot*)*, i32 (%struct.dquot*)** %62, align 8
  %64 = load %struct.dquot*, %struct.dquot** %2, align 8
  %65 = call i32 %63(%struct.dquot* %64)
  store i32 %65, i32* %3, align 4
  %66 = load %struct.quota_info*, %struct.quota_info** %5, align 8
  %67 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.dquot*, %struct.dquot** %2, align 8
  %70 = getelementptr inbounds %struct.dquot, %struct.dquot* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = call i64 @info_dirty(i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %93

75:                                               ; preds = %53
  %76 = load %struct.quota_info*, %struct.quota_info** %5, align 8
  %77 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %77, align 8
  %79 = load %struct.dquot*, %struct.dquot** %2, align 8
  %80 = getelementptr inbounds %struct.dquot, %struct.dquot* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %78, i64 %81
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = load i32 (i32, i64)*, i32 (i32, i64)** %84, align 8
  %86 = load %struct.dquot*, %struct.dquot** %2, align 8
  %87 = getelementptr inbounds %struct.dquot, %struct.dquot* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.dquot*, %struct.dquot** %2, align 8
  %90 = getelementptr inbounds %struct.dquot, %struct.dquot* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 %85(i32 %88, i64 %91)
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %75, %53
  %94 = load i32, i32* %3, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  br label %108

97:                                               ; preds = %93
  %98 = load i32, i32* %4, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i32, i32* %4, align 4
  store i32 %101, i32* %3, align 4
  br label %108

102:                                              ; preds = %97
  br label %103

103:                                              ; preds = %102, %48, %38
  %104 = load i32, i32* @DQ_ACTIVE_B, align 4
  %105 = load %struct.dquot*, %struct.dquot** %2, align 8
  %106 = getelementptr inbounds %struct.dquot, %struct.dquot* %105, i32 0, i32 2
  %107 = call i32 @set_bit(i32 %104, i32* %106)
  br label %108

108:                                              ; preds = %103, %100, %96, %37
  %109 = load %struct.quota_info*, %struct.quota_info** %5, align 8
  %110 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %109, i32 0, i32 0
  %111 = call i32 @mutex_unlock(i32* %110)
  %112 = load %struct.dquot*, %struct.dquot** %2, align 8
  %113 = getelementptr inbounds %struct.dquot, %struct.dquot* %112, i32 0, i32 1
  %114 = call i32 @mutex_unlock(i32* %113)
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.quota_info* @sb_dqopt(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @info_dirty(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
