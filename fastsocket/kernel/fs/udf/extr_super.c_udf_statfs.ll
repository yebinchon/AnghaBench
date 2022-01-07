; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_super.c_udf_statfs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_super.c_udf_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.super_block* }
%struct.super_block = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.kstatfs = type { %struct.TYPE_6__, i64, i64, i64, i64, i64, i32, i32, i32 }
%struct.TYPE_6__ = type { i8** }
%struct.udf_sb_info = type { i64, %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.logicalVolIntegrityDescImpUse = type { i32, i32 }

@UDF_SUPER_MAGIC = common dso_local global i32 0, align 4
@UDF_NAME_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.kstatfs*)* @udf_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_statfs(%struct.dentry* %0, %struct.kstatfs* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.kstatfs*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.udf_sb_info*, align 8
  %7 = alloca %struct.logicalVolIntegrityDescImpUse*, align 8
  %8 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.kstatfs* %1, %struct.kstatfs** %4, align 8
  %9 = load %struct.dentry*, %struct.dentry** %3, align 8
  %10 = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i32 0, i32 0
  %11 = load %struct.super_block*, %struct.super_block** %10, align 8
  store %struct.super_block* %11, %struct.super_block** %5, align 8
  %12 = load %struct.super_block*, %struct.super_block** %5, align 8
  %13 = call %struct.udf_sb_info* @UDF_SB(%struct.super_block* %12)
  store %struct.udf_sb_info* %13, %struct.udf_sb_info** %6, align 8
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @huge_encode_dev(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.udf_sb_info*, %struct.udf_sb_info** %6, align 8
  %21 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.udf_sb_info*, %struct.udf_sb_info** %6, align 8
  %26 = call %struct.logicalVolIntegrityDescImpUse* @udf_sb_lvidiu(%struct.udf_sb_info* %25)
  store %struct.logicalVolIntegrityDescImpUse* %26, %struct.logicalVolIntegrityDescImpUse** %7, align 8
  br label %28

27:                                               ; preds = %2
  store %struct.logicalVolIntegrityDescImpUse* null, %struct.logicalVolIntegrityDescImpUse** %7, align 8
  br label %28

28:                                               ; preds = %27, %24
  %29 = load i32, i32* @UDF_SUPER_MAGIC, align 4
  %30 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %31 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %30, i32 0, i32 8
  store i32 %29, i32* %31, align 8
  %32 = load %struct.super_block*, %struct.super_block** %5, align 8
  %33 = getelementptr inbounds %struct.super_block, %struct.super_block* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %36 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 4
  %37 = load %struct.udf_sb_info*, %struct.udf_sb_info** %6, align 8
  %38 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = load %struct.udf_sb_info*, %struct.udf_sb_info** %6, align 8
  %41 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %47 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 8
  %48 = load %struct.super_block*, %struct.super_block** %5, align 8
  %49 = call i64 @udf_count_free(%struct.super_block* %48)
  %50 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %51 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %50, i32 0, i32 2
  store i64 %49, i64* %51, align 8
  %52 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %53 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %56 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %55, i32 0, i32 5
  store i64 %54, i64* %56, align 8
  %57 = load %struct.logicalVolIntegrityDescImpUse*, %struct.logicalVolIntegrityDescImpUse** %7, align 8
  %58 = icmp ne %struct.logicalVolIntegrityDescImpUse* %57, null
  br i1 %58, label %59, label %69

59:                                               ; preds = %28
  %60 = load %struct.logicalVolIntegrityDescImpUse*, %struct.logicalVolIntegrityDescImpUse** %7, align 8
  %61 = getelementptr inbounds %struct.logicalVolIntegrityDescImpUse, %struct.logicalVolIntegrityDescImpUse* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @le32_to_cpu(i32 %62)
  %64 = load %struct.logicalVolIntegrityDescImpUse*, %struct.logicalVolIntegrityDescImpUse** %7, align 8
  %65 = getelementptr inbounds %struct.logicalVolIntegrityDescImpUse, %struct.logicalVolIntegrityDescImpUse* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @le32_to_cpu(i32 %66)
  %68 = add nsw i64 %63, %67
  br label %70

69:                                               ; preds = %28
  br label %70

70:                                               ; preds = %69, %59
  %71 = phi i64 [ %68, %59 ], [ 0, %69 ]
  %72 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %73 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %71, %74
  %76 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %77 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %76, i32 0, i32 4
  store i64 %75, i64* %77, align 8
  %78 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %79 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %82 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %81, i32 0, i32 3
  store i64 %80, i64* %82, align 8
  %83 = load i64, i64* @UDF_NAME_LEN, align 8
  %84 = sub nsw i64 %83, 2
  %85 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %86 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = inttoptr i64 %88 to i8*
  %90 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %91 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i8**, i8*** %92, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 0
  store i8* %89, i8** %94, align 8
  %95 = load i32, i32* %8, align 4
  %96 = ashr i32 %95, 32
  %97 = sext i32 %96 to i64
  %98 = inttoptr i64 %97 to i8*
  %99 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %100 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i8**, i8*** %101, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 1
  store i8* %98, i8** %103, align 8
  ret i32 0
}

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.super_block*) #1

declare dso_local i32 @huge_encode_dev(i32) #1

declare dso_local %struct.logicalVolIntegrityDescImpUse* @udf_sb_lvidiu(%struct.udf_sb_info*) #1

declare dso_local i64 @udf_count_free(%struct.super_block*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
