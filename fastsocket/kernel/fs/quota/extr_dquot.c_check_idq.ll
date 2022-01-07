; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_check_idq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_check_idq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { i64, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@QUOTA_NL_NOWARN = common dso_local global i8 0, align 1
@DQ_FAKE_B = common dso_local global i32 0, align 4
@QUOTA_OK = common dso_local global i32 0, align 4
@QUOTA_NL_IHARDWARN = common dso_local global i8 0, align 1
@NO_QUOTA = common dso_local global i32 0, align 4
@QUOTA_NL_ISOFTLONGWARN = common dso_local global i8 0, align 1
@QUOTA_NL_ISOFTWARN = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dquot*, i64, i8*)* @check_idq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_idq(%struct.dquot* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dquot*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.dquot* %0, %struct.dquot** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.dquot*, %struct.dquot** %5, align 8
  %10 = getelementptr inbounds %struct.dquot, %struct.dquot* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %6, align 8
  %14 = add nsw i64 %12, %13
  store i64 %14, i64* %8, align 8
  %15 = load i8, i8* @QUOTA_NL_NOWARN, align 1
  %16 = load i8*, i8** %7, align 8
  store i8 %15, i8* %16, align 1
  %17 = load %struct.dquot*, %struct.dquot** %5, align 8
  %18 = getelementptr inbounds %struct.dquot, %struct.dquot* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.dquot*, %struct.dquot** %5, align 8
  %21 = getelementptr inbounds %struct.dquot, %struct.dquot* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @sb_has_quota_limits_enabled(i32 %19, i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %3
  %26 = load i32, i32* @DQ_FAKE_B, align 4
  %27 = load %struct.dquot*, %struct.dquot** %5, align 8
  %28 = getelementptr inbounds %struct.dquot, %struct.dquot* %27, i32 0, i32 3
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25, %3
  %32 = load i32, i32* @QUOTA_OK, align 4
  store i32 %32, i32* %4, align 4
  br label %129

33:                                               ; preds = %25
  %34 = load %struct.dquot*, %struct.dquot** %5, align 8
  %35 = getelementptr inbounds %struct.dquot, %struct.dquot* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %33
  %40 = load i64, i64* %8, align 8
  %41 = load %struct.dquot*, %struct.dquot** %5, align 8
  %42 = getelementptr inbounds %struct.dquot, %struct.dquot* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %40, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %39
  %47 = load %struct.dquot*, %struct.dquot** %5, align 8
  %48 = call i32 @ignore_hardlimit(%struct.dquot* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i8, i8* @QUOTA_NL_IHARDWARN, align 1
  %52 = load i8*, i8** %7, align 8
  store i8 %51, i8* %52, align 1
  %53 = load i32, i32* @NO_QUOTA, align 4
  store i32 %53, i32* %4, align 4
  br label %129

54:                                               ; preds = %46, %39, %33
  %55 = load %struct.dquot*, %struct.dquot** %5, align 8
  %56 = getelementptr inbounds %struct.dquot, %struct.dquot* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %88

60:                                               ; preds = %54
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.dquot*, %struct.dquot** %5, align 8
  %63 = getelementptr inbounds %struct.dquot, %struct.dquot* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %61, %65
  br i1 %66, label %67, label %88

67:                                               ; preds = %60
  %68 = load %struct.dquot*, %struct.dquot** %5, align 8
  %69 = getelementptr inbounds %struct.dquot, %struct.dquot* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %67
  %74 = call i64 (...) @get_seconds()
  %75 = load %struct.dquot*, %struct.dquot** %5, align 8
  %76 = getelementptr inbounds %struct.dquot, %struct.dquot* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp sge i64 %74, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %73
  %81 = load %struct.dquot*, %struct.dquot** %5, align 8
  %82 = call i32 @ignore_hardlimit(%struct.dquot* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = load i8, i8* @QUOTA_NL_ISOFTLONGWARN, align 1
  %86 = load i8*, i8** %7, align 8
  store i8 %85, i8* %86, align 1
  %87 = load i32, i32* @NO_QUOTA, align 4
  store i32 %87, i32* %4, align 4
  br label %129

88:                                               ; preds = %80, %73, %67, %60, %54
  %89 = load %struct.dquot*, %struct.dquot** %5, align 8
  %90 = getelementptr inbounds %struct.dquot, %struct.dquot* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %127

94:                                               ; preds = %88
  %95 = load i64, i64* %8, align 8
  %96 = load %struct.dquot*, %struct.dquot** %5, align 8
  %97 = getelementptr inbounds %struct.dquot, %struct.dquot* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp sgt i64 %95, %99
  br i1 %100, label %101, label %127

101:                                              ; preds = %94
  %102 = load %struct.dquot*, %struct.dquot** %5, align 8
  %103 = getelementptr inbounds %struct.dquot, %struct.dquot* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %127

107:                                              ; preds = %101
  %108 = load i8, i8* @QUOTA_NL_ISOFTWARN, align 1
  %109 = load i8*, i8** %7, align 8
  store i8 %108, i8* %109, align 1
  %110 = call i64 (...) @get_seconds()
  %111 = load %struct.dquot*, %struct.dquot** %5, align 8
  %112 = getelementptr inbounds %struct.dquot, %struct.dquot* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call %struct.TYPE_6__* @sb_dqopt(i32 %113)
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = load %struct.dquot*, %struct.dquot** %5, align 8
  %118 = getelementptr inbounds %struct.dquot, %struct.dquot* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %110, %122
  %124 = load %struct.dquot*, %struct.dquot** %5, align 8
  %125 = getelementptr inbounds %struct.dquot, %struct.dquot* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 3
  store i64 %123, i64* %126, align 8
  br label %127

127:                                              ; preds = %107, %101, %94, %88
  %128 = load i32, i32* @QUOTA_OK, align 4
  store i32 %128, i32* %4, align 4
  br label %129

129:                                              ; preds = %127, %84, %50, %31
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i32 @sb_has_quota_limits_enabled(i32, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ignore_hardlimit(%struct.dquot*) #1

declare dso_local i64 @get_seconds(...) #1

declare dso_local %struct.TYPE_6__* @sb_dqopt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
