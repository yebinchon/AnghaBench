; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_objectid.c_reiserfs_convert_objectid_map_v1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_objectid.c_reiserfs_convert_objectid_map_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.reiserfs_super_block = type { i32, i32, i32 }
%struct.reiserfs_super_block_v1 = type { i32 }
%struct.TYPE_2__ = type { i64 }

@SB_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reiserfs_convert_objectid_map_v1(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.reiserfs_super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.reiserfs_super_block_v1*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %11 = load %struct.super_block*, %struct.super_block** %2, align 8
  %12 = call %struct.reiserfs_super_block* @SB_DISK_SUPER_BLOCK(%struct.super_block* %11)
  store %struct.reiserfs_super_block* %12, %struct.reiserfs_super_block** %3, align 8
  %13 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %3, align 8
  %14 = call i32 @sb_oid_cursize(%struct.reiserfs_super_block* %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.super_block*, %struct.super_block** %2, align 8
  %16 = getelementptr inbounds %struct.super_block, %struct.super_block* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SB_SIZE, align 4
  %19 = sub nsw i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = udiv i64 %20, 4
  %22 = udiv i64 %21, 2
  %23 = mul i64 %22, 2
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %5, align 4
  %25 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %3, align 8
  %26 = call i32 @sb_oid_maxsize(%struct.reiserfs_super_block* %25)
  store i32 %26, i32* %6, align 4
  %27 = load %struct.super_block*, %struct.super_block** %2, align 8
  %28 = call %struct.TYPE_2__* @SB_BUFFER_WITH_SB(%struct.super_block* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.reiserfs_super_block_v1*
  store %struct.reiserfs_super_block_v1* %31, %struct.reiserfs_super_block_v1** %7, align 8
  %32 = load %struct.reiserfs_super_block_v1*, %struct.reiserfs_super_block_v1** %7, align 8
  %33 = getelementptr inbounds %struct.reiserfs_super_block_v1, %struct.reiserfs_super_block_v1* %32, i64 1
  %34 = bitcast %struct.reiserfs_super_block_v1* %33 to i32*
  store i32* %34, i32** %8, align 8
  %35 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %3, align 8
  %36 = getelementptr inbounds %struct.reiserfs_super_block, %struct.reiserfs_super_block* %35, i64 1
  %37 = bitcast %struct.reiserfs_super_block* %36 to i32*
  store i32* %37, i32** %9, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %1
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  store i32 %47, i32* %52, align 4
  %53 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %3, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @set_sb_oid_cursize(%struct.reiserfs_super_block* %53, i32 %54)
  br label %56

56:                                               ; preds = %41, %1
  %57 = load i32, i32* %5, align 4
  %58 = sub nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %76, %56
  %60 = load i32, i32* %10, align 4
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %59
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %5, align 4
  %72 = sub nsw i32 %70, %71
  %73 = add nsw i32 %69, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %68, i64 %74
  store i32 %67, i32* %75, align 4
  br label %76

76:                                               ; preds = %62
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %10, align 4
  br label %59

79:                                               ; preds = %59
  %80 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %3, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @set_sb_oid_maxsize(%struct.reiserfs_super_block* %80, i32 %81)
  %83 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %3, align 8
  %84 = getelementptr inbounds %struct.reiserfs_super_block, %struct.reiserfs_super_block* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @memset(i32 %85, i32 0, i32 4)
  %87 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %3, align 8
  %88 = getelementptr inbounds %struct.reiserfs_super_block, %struct.reiserfs_super_block* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @generate_random_uuid(i32 %89)
  %91 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %3, align 8
  %92 = getelementptr inbounds %struct.reiserfs_super_block, %struct.reiserfs_super_block* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @memset(i32 %93, i32 0, i32 4)
  ret i32 0
}

declare dso_local %struct.reiserfs_super_block* @SB_DISK_SUPER_BLOCK(%struct.super_block*) #1

declare dso_local i32 @sb_oid_cursize(%struct.reiserfs_super_block*) #1

declare dso_local i32 @sb_oid_maxsize(%struct.reiserfs_super_block*) #1

declare dso_local %struct.TYPE_2__* @SB_BUFFER_WITH_SB(%struct.super_block*) #1

declare dso_local i32 @set_sb_oid_cursize(%struct.reiserfs_super_block*, i32) #1

declare dso_local i32 @set_sb_oid_maxsize(%struct.reiserfs_super_block*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @generate_random_uuid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
