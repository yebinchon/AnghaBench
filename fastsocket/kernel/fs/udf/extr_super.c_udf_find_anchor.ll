; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_super.c_udf_find_anchor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_super.c_udf_find_anchor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.kernel_lb_addr = type { i32 }
%struct.udf_sb_info = type { i64 }

@UDF_FLAG_VARCONV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.kernel_lb_addr*)* @udf_find_anchor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_find_anchor(%struct.super_block* %0, %struct.kernel_lb_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.kernel_lb_addr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.udf_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.kernel_lb_addr* %1, %struct.kernel_lb_addr** %5, align 8
  %8 = load %struct.super_block*, %struct.super_block** %4, align 8
  %9 = call %struct.udf_sb_info* @UDF_SB(%struct.super_block* %8)
  store %struct.udf_sb_info* %9, %struct.udf_sb_info** %7, align 8
  %10 = load %struct.super_block*, %struct.super_block** %4, align 8
  %11 = load %struct.udf_sb_info*, %struct.udf_sb_info** %7, align 8
  %12 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %5, align 8
  %15 = call i64 @udf_scan_anchors(%struct.super_block* %10, i64 %13, %struct.kernel_lb_addr* %14)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %47

19:                                               ; preds = %2
  %20 = load %struct.super_block*, %struct.super_block** %4, align 8
  %21 = load i32, i32* @UDF_FLAG_VARCONV, align 4
  %22 = call i32 @UDF_SET_FLAG(%struct.super_block* %20, i32 %21)
  %23 = load %struct.super_block*, %struct.super_block** %4, align 8
  %24 = load %struct.udf_sb_info*, %struct.udf_sb_info** %7, align 8
  %25 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @udf_variable_to_fixed(i64 %26)
  %28 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %5, align 8
  %29 = call i64 @udf_scan_anchors(%struct.super_block* %23, i64 %27, %struct.kernel_lb_addr* %28)
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  br label %47

33:                                               ; preds = %19
  %34 = load %struct.super_block*, %struct.super_block** %4, align 8
  %35 = load %struct.udf_sb_info*, %struct.udf_sb_info** %7, align 8
  %36 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %5, align 8
  %39 = call i64 @udf_scan_anchors(%struct.super_block* %34, i64 %37, %struct.kernel_lb_addr* %38)
  store i64 %39, i64* %6, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %33
  %43 = load %struct.super_block*, %struct.super_block** %4, align 8
  %44 = load i32, i32* @UDF_FLAG_VARCONV, align 4
  %45 = call i32 @UDF_CLEAR_FLAG(%struct.super_block* %43, i32 %44)
  store i32 0, i32* %3, align 4
  br label %51

46:                                               ; preds = %33
  br label %47

47:                                               ; preds = %46, %32, %18
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.udf_sb_info*, %struct.udf_sb_info** %7, align 8
  %50 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  store i32 1, i32* %3, align 4
  br label %51

51:                                               ; preds = %47, %42
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.super_block*) #1

declare dso_local i64 @udf_scan_anchors(%struct.super_block*, i64, %struct.kernel_lb_addr*) #1

declare dso_local i32 @UDF_SET_FLAG(%struct.super_block*, i32) #1

declare dso_local i64 @udf_variable_to_fixed(i64) #1

declare dso_local i32 @UDF_CLEAR_FLAG(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
