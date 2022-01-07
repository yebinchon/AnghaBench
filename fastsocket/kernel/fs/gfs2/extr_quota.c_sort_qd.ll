; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_quota.c_sort_qd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_quota.c_sort_qd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_quota_data = type { i64, i32 }

@QDF_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @sort_qd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sort_qd(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.gfs2_quota_data*, align 8
  %7 = alloca %struct.gfs2_quota_data*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.gfs2_quota_data**
  %10 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %9, align 8
  store %struct.gfs2_quota_data* %10, %struct.gfs2_quota_data** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.gfs2_quota_data**
  %13 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %12, align 8
  store %struct.gfs2_quota_data* %13, %struct.gfs2_quota_data** %7, align 8
  %14 = load i32, i32* @QDF_USER, align 4
  %15 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %6, align 8
  %16 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %15, i32 0, i32 1
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* @QDF_USER, align 4
  %22 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %7, align 8
  %23 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %22, i32 0, i32 1
  %24 = call i64 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = icmp ne i32 %20, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %2
  %30 = load i32, i32* @QDF_USER, align 4
  %31 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %6, align 8
  %32 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %31, i32 0, i32 1
  %33 = call i64 @test_bit(i32 %30, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 -1, i32* %3, align 4
  br label %56

36:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %56

37:                                               ; preds = %2
  %38 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %6, align 8
  %39 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %7, align 8
  %42 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i32 -1, i32* %3, align 4
  br label %56

46:                                               ; preds = %37
  %47 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %6, align 8
  %48 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %7, align 8
  %51 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  store i32 1, i32* %3, align 4
  br label %56

55:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %54, %45, %36, %35
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
