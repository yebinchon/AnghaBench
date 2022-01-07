; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_super.c_nilfs_statfs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_super.c_nilfs_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.super_block* }
%struct.super_block = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.kstatfs = type { i64, i64, i64, %struct.TYPE_4__, i32, i64, i32, i32, i32 }
%struct.TYPE_4__ = type { i8** }
%struct.nilfs_sb_info = type { i32, %struct.the_nilfs* }
%struct.the_nilfs = type { i64, i64, i64, i64 }

@NILFS_SUPER_MAGIC = common dso_local global i32 0, align 4
@NILFS_NAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.kstatfs*)* @nilfs_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_statfs(%struct.dentry* %0, %struct.kstatfs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.kstatfs*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.nilfs_sb_info*, align 8
  %8 = alloca %struct.the_nilfs*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.kstatfs* %1, %struct.kstatfs** %5, align 8
  %15 = load %struct.dentry*, %struct.dentry** %4, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 0
  %17 = load %struct.super_block*, %struct.super_block** %16, align 8
  store %struct.super_block* %17, %struct.super_block** %6, align 8
  %18 = load %struct.super_block*, %struct.super_block** %6, align 8
  %19 = call %struct.nilfs_sb_info* @NILFS_SB(%struct.super_block* %18)
  store %struct.nilfs_sb_info* %19, %struct.nilfs_sb_info** %7, align 8
  %20 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %7, align 8
  %21 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %20, i32 0, i32 1
  %22 = load %struct.the_nilfs*, %struct.the_nilfs** %21, align 8
  store %struct.the_nilfs* %22, %struct.the_nilfs** %8, align 8
  %23 = load %struct.super_block*, %struct.super_block** %6, align 8
  %24 = getelementptr inbounds %struct.super_block, %struct.super_block* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @huge_encode_dev(i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %30 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %33 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = mul i64 %31, %34
  %36 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %37 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = sub i64 %35, %38
  store i64 %39, i64* %10, align 8
  %40 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %41 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %44 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = mul i64 %42, %45
  store i64 %46, i64* %12, align 8
  store i64 0, i64* %11, align 8
  %47 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %48 = call i32 @nilfs_count_free_blocks(%struct.the_nilfs* %47, i64* %13)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %2
  %53 = load i32, i32* %14, align 4
  store i32 %53, i32* %3, align 4
  br label %114

54:                                               ; preds = %2
  %55 = load i32, i32* @NILFS_SUPER_MAGIC, align 4
  %56 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %57 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %56, i32 0, i32 8
  store i32 %55, i32* %57, align 8
  %58 = load %struct.super_block*, %struct.super_block** %6, align 8
  %59 = getelementptr inbounds %struct.super_block, %struct.super_block* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %62 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %61, i32 0, i32 7
  store i32 %60, i32* %62, align 4
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* %11, align 8
  %65 = sub i64 %63, %64
  %66 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %67 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load i64, i64* %13, align 8
  %69 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %70 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  %71 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %72 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %12, align 8
  %75 = icmp uge i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %54
  %77 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %78 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %12, align 8
  %81 = sub i64 %79, %80
  br label %83

82:                                               ; preds = %54
  br label %83

83:                                               ; preds = %82, %76
  %84 = phi i64 [ %81, %76 ], [ 0, %82 ]
  %85 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %86 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %85, i32 0, i32 2
  store i64 %84, i64* %86, align 8
  %87 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %7, align 8
  %88 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %87, i32 0, i32 0
  %89 = call i32 @atomic_read(i32* %88)
  %90 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %91 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %90, i32 0, i32 6
  store i32 %89, i32* %91, align 8
  %92 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %93 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %92, i32 0, i32 5
  store i64 0, i64* %93, align 8
  %94 = load i32, i32* @NILFS_NAME_LEN, align 4
  %95 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %96 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = inttoptr i64 %98 to i8*
  %100 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %101 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i8**, i8*** %102, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 0
  store i8* %99, i8** %104, align 8
  %105 = load i32, i32* %9, align 4
  %106 = ashr i32 %105, 32
  %107 = sext i32 %106 to i64
  %108 = inttoptr i64 %107 to i8*
  %109 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %110 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i8**, i8*** %111, align 8
  %113 = getelementptr inbounds i8*, i8** %112, i64 1
  store i8* %108, i8** %113, align 8
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %83, %52
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.nilfs_sb_info* @NILFS_SB(%struct.super_block*) #1

declare dso_local i32 @huge_encode_dev(i32) #1

declare dso_local i32 @nilfs_count_free_blocks(%struct.the_nilfs*, i64*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
