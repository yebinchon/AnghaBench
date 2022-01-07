; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_super.c_udf_load_sequence.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_super.c_udf_load_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i64 }
%struct.buffer_head = type { i64 }
%struct.kernel_lb_addr = type { i32 }
%struct.anchorVolDescPtr = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.udf_sb_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.buffer_head*, %struct.kernel_lb_addr*)* @udf_load_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_load_sequence(%struct.super_block* %0, %struct.buffer_head* %1, %struct.kernel_lb_addr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.kernel_lb_addr*, align 8
  %8 = alloca %struct.anchorVolDescPtr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.udf_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %6, align 8
  store %struct.kernel_lb_addr* %2, %struct.kernel_lb_addr** %7, align 8
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = call %struct.udf_sb_info* @UDF_SB(%struct.super_block* %14)
  store %struct.udf_sb_info* %15, %struct.udf_sb_info** %13, align 8
  %16 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %17 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.anchorVolDescPtr*
  store %struct.anchorVolDescPtr* %19, %struct.anchorVolDescPtr** %8, align 8
  %20 = load %struct.anchorVolDescPtr*, %struct.anchorVolDescPtr** %8, align 8
  %21 = getelementptr inbounds %struct.anchorVolDescPtr, %struct.anchorVolDescPtr* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @le32_to_cpu(i32 %23)
  store i64 %24, i64* %9, align 8
  %25 = load %struct.anchorVolDescPtr*, %struct.anchorVolDescPtr** %8, align 8
  %26 = getelementptr inbounds %struct.anchorVolDescPtr, %struct.anchorVolDescPtr* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @le32_to_cpu(i32 %28)
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load %struct.super_block*, %struct.super_block** %5, align 8
  %32 = getelementptr inbounds %struct.super_block, %struct.super_block* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = ashr i64 %30, %33
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %10, align 8
  %37 = add nsw i64 %36, %35
  store i64 %37, i64* %10, align 8
  %38 = load %struct.anchorVolDescPtr*, %struct.anchorVolDescPtr** %8, align 8
  %39 = getelementptr inbounds %struct.anchorVolDescPtr, %struct.anchorVolDescPtr* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @le32_to_cpu(i32 %41)
  store i64 %42, i64* %11, align 8
  %43 = load %struct.anchorVolDescPtr*, %struct.anchorVolDescPtr** %8, align 8
  %44 = getelementptr inbounds %struct.anchorVolDescPtr, %struct.anchorVolDescPtr* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @le32_to_cpu(i32 %46)
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %12, align 8
  %49 = load %struct.super_block*, %struct.super_block** %5, align 8
  %50 = getelementptr inbounds %struct.super_block, %struct.super_block* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = ashr i64 %48, %51
  store i64 %52, i64* %12, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* %12, align 8
  %55 = add nsw i64 %54, %53
  store i64 %55, i64* %12, align 8
  %56 = load %struct.super_block*, %struct.super_block** %5, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %7, align 8
  %60 = call i32 @udf_process_sequence(%struct.super_block* %56, i64 %57, i64 %58, %struct.kernel_lb_addr* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %72

63:                                               ; preds = %3
  %64 = load %struct.super_block*, %struct.super_block** %5, align 8
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* %12, align 8
  %67 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %7, align 8
  %68 = call i32 @udf_process_sequence(%struct.super_block* %64, i64 %65, i64 %66, %struct.kernel_lb_addr* %67)
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %63, %62
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.super_block*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @udf_process_sequence(%struct.super_block*, i64, i64, %struct.kernel_lb_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
