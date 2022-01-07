; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_check_bdq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_check_bdq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { i64, %struct.TYPE_4__, i32, %struct.super_block* }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64 }
%struct.super_block = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@QUOTA_NL_NOWARN = common dso_local global i8 0, align 1
@DQ_FAKE_B = common dso_local global i32 0, align 4
@QUOTA_OK = common dso_local global i32 0, align 4
@QUOTA_NL_BHARDWARN = common dso_local global i8 0, align 1
@NO_QUOTA = common dso_local global i32 0, align 4
@QUOTA_NL_BSOFTLONGWARN = common dso_local global i8 0, align 1
@QUOTA_NL_BSOFTWARN = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dquot*, i64, i32, i8*)* @check_bdq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_bdq(%struct.dquot* %0, i64 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dquot*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.super_block*, align 8
  store %struct.dquot* %0, %struct.dquot** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load %struct.dquot*, %struct.dquot** %6, align 8
  %13 = getelementptr inbounds %struct.dquot, %struct.dquot* %12, i32 0, i32 3
  %14 = load %struct.super_block*, %struct.super_block** %13, align 8
  store %struct.super_block* %14, %struct.super_block** %11, align 8
  %15 = load i8, i8* @QUOTA_NL_NOWARN, align 1
  %16 = load i8*, i8** %9, align 8
  store i8 %15, i8* %16, align 1
  %17 = load %struct.super_block*, %struct.super_block** %11, align 8
  %18 = load %struct.dquot*, %struct.dquot** %6, align 8
  %19 = getelementptr inbounds %struct.dquot, %struct.dquot* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @sb_has_quota_limits_enabled(%struct.super_block* %17, i64 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load i32, i32* @DQ_FAKE_B, align 4
  %25 = load %struct.dquot*, %struct.dquot** %6, align 8
  %26 = getelementptr inbounds %struct.dquot, %struct.dquot* %25, i32 0, i32 2
  %27 = call i64 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23, %4
  %30 = load i32, i32* @QUOTA_OK, align 4
  store i32 %30, i32* %5, align 4
  br label %150

31:                                               ; preds = %23
  %32 = load %struct.dquot*, %struct.dquot** %6, align 8
  %33 = getelementptr inbounds %struct.dquot, %struct.dquot* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.dquot*, %struct.dquot** %6, align 8
  %37 = getelementptr inbounds %struct.dquot, %struct.dquot* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %35, %39
  %41 = load i64, i64* %7, align 8
  %42 = add nsw i64 %40, %41
  store i64 %42, i64* %10, align 8
  %43 = load %struct.dquot*, %struct.dquot** %6, align 8
  %44 = getelementptr inbounds %struct.dquot, %struct.dquot* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %31
  %49 = load i64, i64* %10, align 8
  %50 = load %struct.dquot*, %struct.dquot** %6, align 8
  %51 = getelementptr inbounds %struct.dquot, %struct.dquot* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %49, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %48
  %56 = load %struct.dquot*, %struct.dquot** %6, align 8
  %57 = call i32 @ignore_hardlimit(%struct.dquot* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i8, i8* @QUOTA_NL_BHARDWARN, align 1
  %64 = load i8*, i8** %9, align 8
  store i8 %63, i8* %64, align 1
  br label %65

65:                                               ; preds = %62, %59
  %66 = load i32, i32* @NO_QUOTA, align 4
  store i32 %66, i32* %5, align 4
  br label %150

67:                                               ; preds = %55, %48, %31
  %68 = load %struct.dquot*, %struct.dquot** %6, align 8
  %69 = getelementptr inbounds %struct.dquot, %struct.dquot* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %105

73:                                               ; preds = %67
  %74 = load i64, i64* %10, align 8
  %75 = load %struct.dquot*, %struct.dquot** %6, align 8
  %76 = getelementptr inbounds %struct.dquot, %struct.dquot* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp sgt i64 %74, %78
  br i1 %79, label %80, label %105

80:                                               ; preds = %73
  %81 = load %struct.dquot*, %struct.dquot** %6, align 8
  %82 = getelementptr inbounds %struct.dquot, %struct.dquot* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %105

86:                                               ; preds = %80
  %87 = call i64 (...) @get_seconds()
  %88 = load %struct.dquot*, %struct.dquot** %6, align 8
  %89 = getelementptr inbounds %struct.dquot, %struct.dquot* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = icmp sge i64 %87, %91
  br i1 %92, label %93, label %105

93:                                               ; preds = %86
  %94 = load %struct.dquot*, %struct.dquot** %6, align 8
  %95 = call i32 @ignore_hardlimit(%struct.dquot* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %93
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load i8, i8* @QUOTA_NL_BSOFTLONGWARN, align 1
  %102 = load i8*, i8** %9, align 8
  store i8 %101, i8* %102, align 1
  br label %103

103:                                              ; preds = %100, %97
  %104 = load i32, i32* @NO_QUOTA, align 4
  store i32 %104, i32* %5, align 4
  br label %150

105:                                              ; preds = %93, %86, %80, %73, %67
  %106 = load %struct.dquot*, %struct.dquot** %6, align 8
  %107 = getelementptr inbounds %struct.dquot, %struct.dquot* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %148

111:                                              ; preds = %105
  %112 = load i64, i64* %10, align 8
  %113 = load %struct.dquot*, %struct.dquot** %6, align 8
  %114 = getelementptr inbounds %struct.dquot, %struct.dquot* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = icmp sgt i64 %112, %116
  br i1 %117, label %118, label %148

118:                                              ; preds = %111
  %119 = load %struct.dquot*, %struct.dquot** %6, align 8
  %120 = getelementptr inbounds %struct.dquot, %struct.dquot* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %148

124:                                              ; preds = %118
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %145, label %127

127:                                              ; preds = %124
  %128 = load i8, i8* @QUOTA_NL_BSOFTWARN, align 1
  %129 = load i8*, i8** %9, align 8
  store i8 %128, i8* %129, align 1
  %130 = call i64 (...) @get_seconds()
  %131 = load %struct.super_block*, %struct.super_block** %11, align 8
  %132 = call %struct.TYPE_6__* @sb_dqopt(%struct.super_block* %131)
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = load %struct.dquot*, %struct.dquot** %6, align 8
  %136 = getelementptr inbounds %struct.dquot, %struct.dquot* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %130, %140
  %142 = load %struct.dquot*, %struct.dquot** %6, align 8
  %143 = getelementptr inbounds %struct.dquot, %struct.dquot* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 4
  store i64 %141, i64* %144, align 8
  br label %147

145:                                              ; preds = %124
  %146 = load i32, i32* @NO_QUOTA, align 4
  store i32 %146, i32* %5, align 4
  br label %150

147:                                              ; preds = %127
  br label %148

148:                                              ; preds = %147, %118, %111, %105
  %149 = load i32, i32* @QUOTA_OK, align 4
  store i32 %149, i32* %5, align 4
  br label %150

150:                                              ; preds = %148, %145, %103, %65, %29
  %151 = load i32, i32* %5, align 4
  ret i32 %151
}

declare dso_local i32 @sb_has_quota_limits_enabled(%struct.super_block*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ignore_hardlimit(%struct.dquot*) #1

declare dso_local i64 @get_seconds(...) #1

declare dso_local %struct.TYPE_6__* @sb_dqopt(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
