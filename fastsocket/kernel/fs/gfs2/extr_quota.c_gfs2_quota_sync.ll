; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_quota.c_gfs2_quota_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_quota.c_gfs2_quota_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i64 }
%struct.gfs2_quota_data = type { i64 }

@gt_quota_simul_sync = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_quota_sync(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gfs2_sbd*, align 8
  %7 = alloca %struct.gfs2_quota_data**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.super_block*, %struct.super_block** %4, align 8
  %13 = getelementptr inbounds %struct.super_block, %struct.super_block* %12, i32 0, i32 0
  %14 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  store %struct.gfs2_sbd* %14, %struct.gfs2_sbd** %6, align 8
  %15 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %16 = load i32, i32* @gt_quota_simul_sync, align 4
  %17 = call i32 @gfs2_tune_get(%struct.gfs2_sbd* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %18 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %19 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %19, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.gfs2_quota_data** @kcalloc(i32 %22, i32 8, i32 %23)
  store %struct.gfs2_quota_data** %24, %struct.gfs2_quota_data*** %7, align 8
  %25 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %7, align 8
  %26 = icmp ne %struct.gfs2_quota_data** %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %118

30:                                               ; preds = %2
  br label %31

31:                                               ; preds = %112, %30
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %55, %31
  %33 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %34 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %7, align 8
  %35 = load i32, i32* %9, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %34, i64 %36
  %38 = call i32 @qd_fish(%struct.gfs2_sbd* %33, %struct.gfs2_quota_data** %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %32
  %42 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %7, align 8
  %43 = load i32, i32* %9, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %42, i64 %44
  %46 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %45, align 8
  %47 = icmp ne %struct.gfs2_quota_data* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %41, %32
  br label %56

49:                                               ; preds = %41
  %50 = load i32, i32* %9, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %56

55:                                               ; preds = %49
  br label %32

56:                                               ; preds = %54, %48
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %104

59:                                               ; preds = %56
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %7, align 8
  %65 = call i32 @do_sync(i32 %63, %struct.gfs2_quota_data** %64)
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %62, %59
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %88, label %69

69:                                               ; preds = %66
  store i32 0, i32* %10, align 4
  br label %70

70:                                               ; preds = %84, %69
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %70
  %75 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %76 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %7, align 8
  %79 = load i32, i32* %10, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %78, i64 %80
  %82 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %81, align 8
  %83 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %82, i32 0, i32 0
  store i64 %77, i64* %83, align 8
  br label %84

84:                                               ; preds = %74
  %85 = load i32, i32* %10, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %10, align 4
  br label %70

87:                                               ; preds = %70
  br label %88

88:                                               ; preds = %87, %66
  store i32 0, i32* %10, align 4
  br label %89

89:                                               ; preds = %100, %88
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp ult i32 %90, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %89
  %94 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %7, align 8
  %95 = load i32, i32* %10, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %94, i64 %96
  %98 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %97, align 8
  %99 = call i32 @qd_unlock(%struct.gfs2_quota_data* %98)
  br label %100

100:                                              ; preds = %93
  %101 = load i32, i32* %10, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %10, align 4
  br label %89

103:                                              ; preds = %89
  br label %104

104:                                              ; preds = %103, %56
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %105
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp eq i32 %109, %110
  br label %112

112:                                              ; preds = %108, %105
  %113 = phi i1 [ false, %105 ], [ %111, %108 ]
  br i1 %113, label %31, label %114

114:                                              ; preds = %112
  %115 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %7, align 8
  %116 = call i32 @kfree(%struct.gfs2_quota_data** %115)
  %117 = load i32, i32* %11, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %114, %27
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @gfs2_tune_get(%struct.gfs2_sbd*, i32) #1

declare dso_local %struct.gfs2_quota_data** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @qd_fish(%struct.gfs2_sbd*, %struct.gfs2_quota_data**) #1

declare dso_local i32 @do_sync(i32, %struct.gfs2_quota_data**) #1

declare dso_local i32 @qd_unlock(%struct.gfs2_quota_data*) #1

declare dso_local i32 @kfree(%struct.gfs2_quota_data**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
