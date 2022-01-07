; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_recovery.c_nilfs_read_super_root_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_recovery.c_nilfs_read_super_root_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i64 }
%struct.nilfs_super_root = type { i32, i32 }

@NILFS_SEG_FAIL_IO = common dso_local global i32 0, align 4
@NILFS_SEG_FAIL_CHECKSUM_SUPER_ROOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_read_super_root_block(%struct.super_block* %0, i32 %1, %struct.buffer_head** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.nilfs_super_root*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.buffer_head** %2, %struct.buffer_head*** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %15, align 8
  %16 = load %struct.super_block*, %struct.super_block** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.buffer_head* @sb_bread(%struct.super_block* %16, i32 %17)
  store %struct.buffer_head* %18, %struct.buffer_head** %10, align 8
  %19 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %20 = icmp ne %struct.buffer_head* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @NILFS_SEG_FAIL_IO, align 4
  store i32 %26, i32* %13, align 4
  br label %75

27:                                               ; preds = %4
  %28 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %29 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.nilfs_super_root*
  store %struct.nilfs_super_root* %31, %struct.nilfs_super_root** %11, align 8
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %69

34:                                               ; preds = %27
  %35 = load %struct.nilfs_super_root*, %struct.nilfs_super_root** %11, align 8
  %36 = getelementptr inbounds %struct.nilfs_super_root, %struct.nilfs_super_root* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le16_to_cpu(i32 %37)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* %14, align 4
  %43 = load %struct.super_block*, %struct.super_block** %6, align 8
  %44 = getelementptr inbounds %struct.super_block, %struct.super_block* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ugt i32 %42, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41, %34
  %48 = load i32, i32* @NILFS_SEG_FAIL_CHECKSUM_SUPER_ROOT, align 4
  store i32 %48, i32* %13, align 4
  br label %72

49:                                               ; preds = %41
  %50 = load %struct.super_block*, %struct.super_block** %6, align 8
  %51 = call i32 @NILFS_SB(%struct.super_block* %50)
  %52 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i64 @calc_crc_cont(i32 %51, %struct.buffer_head* %52, i64* %12, i32 4, i32 %53, i32 %54, i32 1)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32, i32* @NILFS_SEG_FAIL_IO, align 4
  store i32 %58, i32* %13, align 4
  br label %72

59:                                               ; preds = %49
  %60 = load i64, i64* %12, align 8
  %61 = load %struct.nilfs_super_root*, %struct.nilfs_super_root** %11, align 8
  %62 = getelementptr inbounds %struct.nilfs_super_root, %struct.nilfs_super_root* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @le32_to_cpu(i32 %63)
  %65 = icmp ne i64 %60, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* @NILFS_SEG_FAIL_CHECKSUM_SUPER_ROOT, align 4
  store i32 %67, i32* %13, align 4
  br label %72

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68, %27
  %70 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %71 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  store %struct.buffer_head* %70, %struct.buffer_head** %71, align 8
  store i32 0, i32* %5, align 4
  br label %78

72:                                               ; preds = %66, %57, %47
  %73 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %74 = call i32 @brelse(%struct.buffer_head* %73)
  br label %75

75:                                               ; preds = %72, %25
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @nilfs_warn_segment_error(i32 %76)
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %75, %69
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @calc_crc_cont(i32, %struct.buffer_head*, i64*, i32, i32, i32, i32) #1

declare dso_local i32 @NILFS_SB(%struct.super_block*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_warn_segment_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
