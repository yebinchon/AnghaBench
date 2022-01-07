; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_super.c_udf_close_lvid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_super.c_udf_close_lvid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.udf_sb_info = type { i64, i64, %struct.buffer_head* }
%struct.buffer_head = type { i64 }
%struct.logicalVolIntegrityDesc = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i8*, i8* }
%struct.logicalVolIntegrityDescImpUse = type { i8*, i8*, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@UDF_OS_CLASS_UNIX = common dso_local global i32 0, align 4
@UDF_OS_ID_LINUX = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4
@UDF_MAX_WRITE_VERSION = common dso_local global i64 0, align 8
@LVID_INTEGRITY_TYPE_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @udf_close_lvid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udf_close_lvid(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.udf_sb_info*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.logicalVolIntegrityDesc*, align 8
  %6 = alloca %struct.logicalVolIntegrityDescImpUse*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %7 = load %struct.super_block*, %struct.super_block** %2, align 8
  %8 = call %struct.udf_sb_info* @UDF_SB(%struct.super_block* %7)
  store %struct.udf_sb_info* %8, %struct.udf_sb_info** %3, align 8
  %9 = load %struct.udf_sb_info*, %struct.udf_sb_info** %3, align 8
  %10 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %9, i32 0, i32 2
  %11 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  store %struct.buffer_head* %11, %struct.buffer_head** %4, align 8
  %12 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %13 = icmp ne %struct.buffer_head* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %109

15:                                               ; preds = %1
  %16 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %17 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.logicalVolIntegrityDesc*
  store %struct.logicalVolIntegrityDesc* %19, %struct.logicalVolIntegrityDesc** %5, align 8
  %20 = load %struct.udf_sb_info*, %struct.udf_sb_info** %3, align 8
  %21 = call %struct.logicalVolIntegrityDescImpUse* @udf_sb_lvidiu(%struct.udf_sb_info* %20)
  store %struct.logicalVolIntegrityDescImpUse* %21, %struct.logicalVolIntegrityDescImpUse** %6, align 8
  %22 = load i32, i32* @UDF_OS_CLASS_UNIX, align 4
  %23 = load %struct.logicalVolIntegrityDescImpUse*, %struct.logicalVolIntegrityDescImpUse** %6, align 8
  %24 = getelementptr inbounds %struct.logicalVolIntegrityDescImpUse, %struct.logicalVolIntegrityDescImpUse* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 %22, i32* %27, align 4
  %28 = load i32, i32* @UDF_OS_ID_LINUX, align 4
  %29 = load %struct.logicalVolIntegrityDescImpUse*, %struct.logicalVolIntegrityDescImpUse** %6, align 8
  %30 = getelementptr inbounds %struct.logicalVolIntegrityDescImpUse, %struct.logicalVolIntegrityDescImpUse* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 %28, i32* %33, align 4
  %34 = load %struct.logicalVolIntegrityDesc*, %struct.logicalVolIntegrityDesc** %5, align 8
  %35 = getelementptr inbounds %struct.logicalVolIntegrityDesc, %struct.logicalVolIntegrityDesc* %34, i32 0, i32 2
  %36 = load i32, i32* @CURRENT_TIME, align 4
  %37 = call i32 @udf_time_to_disk_stamp(i32* %35, i32 %36)
  %38 = load i64, i64* @UDF_MAX_WRITE_VERSION, align 8
  %39 = load %struct.logicalVolIntegrityDescImpUse*, %struct.logicalVolIntegrityDescImpUse** %6, align 8
  %40 = getelementptr inbounds %struct.logicalVolIntegrityDescImpUse, %struct.logicalVolIntegrityDescImpUse* %39, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @le16_to_cpu(i8* %41)
  %43 = icmp sgt i64 %38, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %15
  %45 = load i64, i64* @UDF_MAX_WRITE_VERSION, align 8
  %46 = call i8* @cpu_to_le16(i64 %45)
  %47 = load %struct.logicalVolIntegrityDescImpUse*, %struct.logicalVolIntegrityDescImpUse** %6, align 8
  %48 = getelementptr inbounds %struct.logicalVolIntegrityDescImpUse, %struct.logicalVolIntegrityDescImpUse* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  br label %49

49:                                               ; preds = %44, %15
  %50 = load %struct.udf_sb_info*, %struct.udf_sb_info** %3, align 8
  %51 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.logicalVolIntegrityDescImpUse*, %struct.logicalVolIntegrityDescImpUse** %6, align 8
  %54 = getelementptr inbounds %struct.logicalVolIntegrityDescImpUse, %struct.logicalVolIntegrityDescImpUse* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @le16_to_cpu(i8* %55)
  %57 = icmp sgt i64 %52, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %49
  %59 = load %struct.udf_sb_info*, %struct.udf_sb_info** %3, align 8
  %60 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i8* @cpu_to_le16(i64 %61)
  %63 = load %struct.logicalVolIntegrityDescImpUse*, %struct.logicalVolIntegrityDescImpUse** %6, align 8
  %64 = getelementptr inbounds %struct.logicalVolIntegrityDescImpUse, %struct.logicalVolIntegrityDescImpUse* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  br label %65

65:                                               ; preds = %58, %49
  %66 = load %struct.udf_sb_info*, %struct.udf_sb_info** %3, align 8
  %67 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.logicalVolIntegrityDescImpUse*, %struct.logicalVolIntegrityDescImpUse** %6, align 8
  %70 = getelementptr inbounds %struct.logicalVolIntegrityDescImpUse, %struct.logicalVolIntegrityDescImpUse* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i64 @le16_to_cpu(i8* %71)
  %73 = icmp sgt i64 %68, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %65
  %75 = load %struct.udf_sb_info*, %struct.udf_sb_info** %3, align 8
  %76 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i8* @cpu_to_le16(i64 %77)
  %79 = load %struct.logicalVolIntegrityDescImpUse*, %struct.logicalVolIntegrityDescImpUse** %6, align 8
  %80 = getelementptr inbounds %struct.logicalVolIntegrityDescImpUse, %struct.logicalVolIntegrityDescImpUse* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  br label %81

81:                                               ; preds = %74, %65
  %82 = load i32, i32* @LVID_INTEGRITY_TYPE_CLOSE, align 4
  %83 = call i32 @cpu_to_le32(i32 %82)
  %84 = load %struct.logicalVolIntegrityDesc*, %struct.logicalVolIntegrityDesc** %5, align 8
  %85 = getelementptr inbounds %struct.logicalVolIntegrityDesc, %struct.logicalVolIntegrityDesc* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  %86 = load %struct.logicalVolIntegrityDesc*, %struct.logicalVolIntegrityDesc** %5, align 8
  %87 = bitcast %struct.logicalVolIntegrityDesc* %86 to i8*
  %88 = getelementptr inbounds i8, i8* %87, i64 4
  %89 = load %struct.logicalVolIntegrityDesc*, %struct.logicalVolIntegrityDesc** %5, align 8
  %90 = getelementptr inbounds %struct.logicalVolIntegrityDesc, %struct.logicalVolIntegrityDesc* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = call i64 @le16_to_cpu(i8* %92)
  %94 = call i64 @crc_itu_t(i32 0, i8* %88, i64 %93)
  %95 = call i8* @cpu_to_le16(i64 %94)
  %96 = load %struct.logicalVolIntegrityDesc*, %struct.logicalVolIntegrityDesc** %5, align 8
  %97 = getelementptr inbounds %struct.logicalVolIntegrityDesc, %struct.logicalVolIntegrityDesc* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  store i8* %95, i8** %98, align 8
  %99 = load %struct.logicalVolIntegrityDesc*, %struct.logicalVolIntegrityDesc** %5, align 8
  %100 = getelementptr inbounds %struct.logicalVolIntegrityDesc, %struct.logicalVolIntegrityDesc* %99, i32 0, i32 0
  %101 = call i32 @udf_tag_checksum(%struct.TYPE_4__* %100)
  %102 = load %struct.logicalVolIntegrityDesc*, %struct.logicalVolIntegrityDesc** %5, align 8
  %103 = getelementptr inbounds %struct.logicalVolIntegrityDesc, %struct.logicalVolIntegrityDesc* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  store i32 %101, i32* %104, align 8
  %105 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %106 = call i32 @mark_buffer_dirty(%struct.buffer_head* %105)
  %107 = load %struct.udf_sb_info*, %struct.udf_sb_info** %3, align 8
  %108 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %107, i32 0, i32 1
  store i64 0, i64* %108, align 8
  br label %109

109:                                              ; preds = %81, %14
  ret void
}

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.super_block*) #1

declare dso_local %struct.logicalVolIntegrityDescImpUse* @udf_sb_lvidiu(%struct.udf_sb_info*) #1

declare dso_local i32 @udf_time_to_disk_stamp(i32*, i32) #1

declare dso_local i64 @le16_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @crc_itu_t(i32, i8*, i64) #1

declare dso_local i32 @udf_tag_checksum(%struct.TYPE_4__*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
