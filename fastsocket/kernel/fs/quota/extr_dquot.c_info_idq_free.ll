; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_info_idq_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_info_idq_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i64, i64 }

@DQ_FAKE_B = common dso_local global i32 0, align 4
@QUOTA_NL_NOWARN = common dso_local global i32 0, align 4
@QUOTA_NL_ISOFTBELOW = common dso_local global i32 0, align 4
@QUOTA_NL_IHARDBELOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dquot*, i64)* @info_idq_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @info_idq_free(%struct.dquot* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dquot*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.dquot* %0, %struct.dquot** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* @DQ_FAKE_B, align 4
  %8 = load %struct.dquot*, %struct.dquot** %4, align 8
  %9 = getelementptr inbounds %struct.dquot, %struct.dquot* %8, i32 0, i32 3
  %10 = call i64 @test_bit(i32 %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %31, label %12

12:                                               ; preds = %2
  %13 = load %struct.dquot*, %struct.dquot** %4, align 8
  %14 = getelementptr inbounds %struct.dquot, %struct.dquot* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.dquot*, %struct.dquot** %4, align 8
  %18 = getelementptr inbounds %struct.dquot, %struct.dquot* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp sle i64 %16, %20
  br i1 %21, label %31, label %22

22:                                               ; preds = %12
  %23 = load %struct.dquot*, %struct.dquot** %4, align 8
  %24 = getelementptr inbounds %struct.dquot, %struct.dquot* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.dquot*, %struct.dquot** %4, align 8
  %27 = getelementptr inbounds %struct.dquot, %struct.dquot* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @sb_has_quota_limits_enabled(i32 %25, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %22, %12, %2
  %32 = load i32, i32* @QUOTA_NL_NOWARN, align 4
  store i32 %32, i32* %3, align 4
  br label %69

33:                                               ; preds = %22
  %34 = load %struct.dquot*, %struct.dquot** %4, align 8
  %35 = getelementptr inbounds %struct.dquot, %struct.dquot* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = sub nsw i64 %37, %38
  store i64 %39, i64* %6, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.dquot*, %struct.dquot** %4, align 8
  %42 = getelementptr inbounds %struct.dquot, %struct.dquot* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sle i64 %40, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %33
  %47 = load i32, i32* @QUOTA_NL_ISOFTBELOW, align 4
  store i32 %47, i32* %3, align 4
  br label %69

48:                                               ; preds = %33
  %49 = load %struct.dquot*, %struct.dquot** %4, align 8
  %50 = getelementptr inbounds %struct.dquot, %struct.dquot* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.dquot*, %struct.dquot** %4, align 8
  %54 = getelementptr inbounds %struct.dquot, %struct.dquot* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp sge i64 %52, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %48
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.dquot*, %struct.dquot** %4, align 8
  %61 = getelementptr inbounds %struct.dquot, %struct.dquot* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %59, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* @QUOTA_NL_IHARDBELOW, align 4
  store i32 %66, i32* %3, align 4
  br label %69

67:                                               ; preds = %58, %48
  %68 = load i32, i32* @QUOTA_NL_NOWARN, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %65, %46, %31
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @sb_has_quota_limits_enabled(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
