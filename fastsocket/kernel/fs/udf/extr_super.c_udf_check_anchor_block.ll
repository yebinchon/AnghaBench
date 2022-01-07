; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_super.c_udf_check_anchor_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_super.c_udf_check_anchor_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.kernel_lb_addr = type { i32 }
%struct.buffer_head = type { i32 }

@UDF_FLAG_VARCONV = common dso_local global i32 0, align 4
@TAG_IDENT_AVDP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32, %struct.kernel_lb_addr*)* @udf_check_anchor_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_check_anchor_block(%struct.super_block* %0, i32 %1, %struct.kernel_lb_addr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kernel_lb_addr*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.kernel_lb_addr* %2, %struct.kernel_lb_addr** %7, align 8
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = load i32, i32* @UDF_FLAG_VARCONV, align 4
  %13 = call i64 @UDF_QUERY_FLAG(%struct.super_block* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @udf_fixed_to_variable(i32 %16)
  %18 = load %struct.super_block*, %struct.super_block** %5, align 8
  %19 = getelementptr inbounds %struct.super_block, %struct.super_block* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.super_block*, %struct.super_block** %5, align 8
  %26 = getelementptr inbounds %struct.super_block, %struct.super_block* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = zext i32 %27 to i64
  %29 = ashr i64 %24, %28
  %30 = icmp sge i64 %17, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %55

32:                                               ; preds = %15, %3
  %33 = load %struct.super_block*, %struct.super_block** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call %struct.buffer_head* @udf_read_tagged(%struct.super_block* %33, i32 %34, i32 %35, i64* %9)
  store %struct.buffer_head* %36, %struct.buffer_head** %8, align 8
  %37 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %38 = icmp ne %struct.buffer_head* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %55

40:                                               ; preds = %32
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* @TAG_IDENT_AVDP, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %46 = call i32 @brelse(%struct.buffer_head* %45)
  store i32 0, i32* %4, align 4
  br label %55

47:                                               ; preds = %40
  %48 = load %struct.super_block*, %struct.super_block** %5, align 8
  %49 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %50 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %7, align 8
  %51 = call i32 @udf_load_sequence(%struct.super_block* %48, %struct.buffer_head* %49, %struct.kernel_lb_addr* %50)
  store i32 %51, i32* %10, align 4
  %52 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %53 = call i32 @brelse(%struct.buffer_head* %52)
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %47, %44, %39, %31
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i64 @UDF_QUERY_FLAG(%struct.super_block*, i32) #1

declare dso_local i64 @udf_fixed_to_variable(i32) #1

declare dso_local %struct.buffer_head* @udf_read_tagged(%struct.super_block*, i32, i32, i64*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @udf_load_sequence(%struct.super_block*, %struct.buffer_head*, %struct.kernel_lb_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
