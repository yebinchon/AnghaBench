; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_super.c_udf_load_logicalvolint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_super.c_udf_load_logicalvolint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i64 }
%struct.kernel_extent_ad = type { i64, i32 }
%struct.buffer_head = type { i64 }
%struct.udf_sb_info = type { %struct.buffer_head* }
%struct.logicalVolIntegrityDesc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@TAG_IDENT_LVID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, i64, i32)* @udf_load_logicalvolint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udf_load_logicalvolint(%struct.super_block* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.kernel_extent_ad, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.udf_sb_info*, align 8
  %9 = alloca %struct.logicalVolIntegrityDesc*, align 8
  %10 = alloca %struct.kernel_extent_ad, align 8
  %11 = bitcast %struct.kernel_extent_ad* %4 to { i64, i32 }*
  %12 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 0
  store i64 %1, i64* %12, align 8
  %13 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 1
  store i32 %2, i32* %13, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %6, align 8
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = call %struct.udf_sb_info* @UDF_SB(%struct.super_block* %14)
  store %struct.udf_sb_info* %15, %struct.udf_sb_info** %8, align 8
  br label %16

16:                                               ; preds = %73, %3
  %17 = getelementptr inbounds %struct.kernel_extent_ad, %struct.kernel_extent_ad* %4, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  %21 = load %struct.super_block*, %struct.super_block** %5, align 8
  %22 = getelementptr inbounds %struct.kernel_extent_ad, %struct.kernel_extent_ad* %4, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.kernel_extent_ad, %struct.kernel_extent_ad* %4, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.buffer_head* @udf_read_tagged(%struct.super_block* %21, i32 %23, i32 %25, i64* %7)
  store %struct.buffer_head* %26, %struct.buffer_head** %6, align 8
  %27 = icmp ne %struct.buffer_head* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @TAG_IDENT_LVID, align 8
  %31 = icmp eq i64 %29, %30
  br label %32

32:                                               ; preds = %28, %20, %16
  %33 = phi i1 [ false, %20 ], [ false, %16 ], [ %31, %28 ]
  br i1 %33, label %34, label %83

34:                                               ; preds = %32
  %35 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %36 = load %struct.udf_sb_info*, %struct.udf_sb_info** %8, align 8
  %37 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %36, i32 0, i32 0
  store %struct.buffer_head* %35, %struct.buffer_head** %37, align 8
  %38 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %39 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.logicalVolIntegrityDesc*
  store %struct.logicalVolIntegrityDesc* %41, %struct.logicalVolIntegrityDesc** %9, align 8
  %42 = load %struct.logicalVolIntegrityDesc*, %struct.logicalVolIntegrityDesc** %9, align 8
  %43 = getelementptr inbounds %struct.logicalVolIntegrityDesc, %struct.logicalVolIntegrityDesc* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %34
  %48 = load %struct.super_block*, %struct.super_block** %5, align 8
  %49 = load %struct.logicalVolIntegrityDesc*, %struct.logicalVolIntegrityDesc** %9, align 8
  %50 = getelementptr inbounds %struct.logicalVolIntegrityDesc, %struct.logicalVolIntegrityDesc* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call { i64, i32 } @leea_to_cpu(i64 %52)
  %54 = bitcast %struct.kernel_extent_ad* %10 to { i64, i32 }*
  %55 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %54, i32 0, i32 0
  %56 = extractvalue { i64, i32 } %53, 0
  store i64 %56, i64* %55, align 8
  %57 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %54, i32 0, i32 1
  %58 = extractvalue { i64, i32 } %53, 1
  store i32 %58, i32* %57, align 8
  %59 = bitcast %struct.kernel_extent_ad* %10 to { i64, i32 }*
  %60 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %59, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  call void @udf_load_logicalvolint(%struct.super_block* %48, i64 %61, i32 %63)
  br label %64

64:                                               ; preds = %47, %34
  %65 = load %struct.udf_sb_info*, %struct.udf_sb_info** %8, align 8
  %66 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %65, i32 0, i32 0
  %67 = load %struct.buffer_head*, %struct.buffer_head** %66, align 8
  %68 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %69 = icmp ne %struct.buffer_head* %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %72 = call i32 @brelse(%struct.buffer_head* %71)
  br label %73

73:                                               ; preds = %70, %64
  %74 = load %struct.super_block*, %struct.super_block** %5, align 8
  %75 = getelementptr inbounds %struct.super_block, %struct.super_block* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.kernel_extent_ad, %struct.kernel_extent_ad* %4, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %78, %76
  store i64 %79, i64* %77, align 8
  %80 = getelementptr inbounds %struct.kernel_extent_ad, %struct.kernel_extent_ad* %4, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  br label %16

83:                                               ; preds = %32
  %84 = load %struct.udf_sb_info*, %struct.udf_sb_info** %8, align 8
  %85 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %84, i32 0, i32 0
  %86 = load %struct.buffer_head*, %struct.buffer_head** %85, align 8
  %87 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %88 = icmp ne %struct.buffer_head* %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %91 = call i32 @brelse(%struct.buffer_head* %90)
  br label %92

92:                                               ; preds = %89, %83
  ret void
}

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.super_block*) #1

declare dso_local %struct.buffer_head* @udf_read_tagged(%struct.super_block*, i32, i32, i64*) #1

declare dso_local { i64, i32 } @leea_to_cpu(i64) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
