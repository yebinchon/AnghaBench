; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_quota.c_qdsb_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_quota.c_qdsb_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32 }
%struct.gfs2_quota_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_sbd*, i32, i32, %struct.gfs2_quota_data**)* @qdsb_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qdsb_get(%struct.gfs2_sbd* %0, i32 %1, i32 %2, %struct.gfs2_quota_data** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gfs2_sbd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.gfs2_quota_data**, align 8
  %10 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.gfs2_quota_data** %3, %struct.gfs2_quota_data*** %9, align 8
  %11 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %9, align 8
  %15 = call i32 @qd_get(%struct.gfs2_sbd* %11, i32 %12, i32 %13, %struct.gfs2_quota_data** %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %5, align 4
  br label %44

20:                                               ; preds = %4
  %21 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %9, align 8
  %22 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %21, align 8
  %23 = call i32 @slot_get(%struct.gfs2_quota_data* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %39

27:                                               ; preds = %20
  %28 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %9, align 8
  %29 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %28, align 8
  %30 = call i32 @bh_get(%struct.gfs2_quota_data* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %35

34:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %44

35:                                               ; preds = %33
  %36 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %9, align 8
  %37 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %36, align 8
  %38 = call i32 @slot_put(%struct.gfs2_quota_data* %37)
  br label %39

39:                                               ; preds = %35, %26
  %40 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %9, align 8
  %41 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %40, align 8
  %42 = call i32 @qd_put(%struct.gfs2_quota_data* %41)
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %39, %34, %18
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @qd_get(%struct.gfs2_sbd*, i32, i32, %struct.gfs2_quota_data**) #1

declare dso_local i32 @slot_get(%struct.gfs2_quota_data*) #1

declare dso_local i32 @bh_get(%struct.gfs2_quota_data*) #1

declare dso_local i32 @slot_put(%struct.gfs2_quota_data*) #1

declare dso_local i32 @qd_put(%struct.gfs2_quota_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
