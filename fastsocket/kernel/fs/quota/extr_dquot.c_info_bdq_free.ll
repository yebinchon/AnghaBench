; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_info_bdq_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_info_bdq_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64, i64 }

@DQ_FAKE_B = common dso_local global i32 0, align 4
@QUOTA_NL_NOWARN = common dso_local global i32 0, align 4
@QUOTA_NL_BSOFTBELOW = common dso_local global i32 0, align 4
@QUOTA_NL_BHARDBELOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dquot*, i64)* @info_bdq_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @info_bdq_free(%struct.dquot* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dquot*, align 8
  %5 = alloca i64, align 8
  store %struct.dquot* %0, %struct.dquot** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i32, i32* @DQ_FAKE_B, align 4
  %7 = load %struct.dquot*, %struct.dquot** %4, align 8
  %8 = getelementptr inbounds %struct.dquot, %struct.dquot* %7, i32 0, i32 1
  %9 = call i64 @test_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %2
  %12 = load %struct.dquot*, %struct.dquot** %4, align 8
  %13 = getelementptr inbounds %struct.dquot, %struct.dquot* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.dquot*, %struct.dquot** %4, align 8
  %17 = getelementptr inbounds %struct.dquot, %struct.dquot* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp sle i64 %15, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %11, %2
  %22 = load i32, i32* @QUOTA_NL_NOWARN, align 4
  store i32 %22, i32* %3, align 4
  br label %63

23:                                               ; preds = %11
  %24 = load %struct.dquot*, %struct.dquot** %4, align 8
  %25 = getelementptr inbounds %struct.dquot, %struct.dquot* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = sub nsw i64 %27, %28
  %30 = load %struct.dquot*, %struct.dquot** %4, align 8
  %31 = getelementptr inbounds %struct.dquot, %struct.dquot* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sle i64 %29, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %23
  %36 = load i32, i32* @QUOTA_NL_BSOFTBELOW, align 4
  store i32 %36, i32* %3, align 4
  br label %63

37:                                               ; preds = %23
  %38 = load %struct.dquot*, %struct.dquot** %4, align 8
  %39 = getelementptr inbounds %struct.dquot, %struct.dquot* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.dquot*, %struct.dquot** %4, align 8
  %43 = getelementptr inbounds %struct.dquot, %struct.dquot* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp sge i64 %41, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %37
  %48 = load %struct.dquot*, %struct.dquot** %4, align 8
  %49 = getelementptr inbounds %struct.dquot, %struct.dquot* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %5, align 8
  %53 = sub nsw i64 %51, %52
  %54 = load %struct.dquot*, %struct.dquot** %4, align 8
  %55 = getelementptr inbounds %struct.dquot, %struct.dquot* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %53, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %47
  %60 = load i32, i32* @QUOTA_NL_BHARDBELOW, align 4
  store i32 %60, i32* %3, align 4
  br label %63

61:                                               ; preds = %47, %37
  %62 = load i32, i32* @QUOTA_NL_NOWARN, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %59, %35, %21
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
