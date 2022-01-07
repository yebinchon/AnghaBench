; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_super.c_nilfs_store_magic_and_option.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_super.c_nilfs_store_magic_and_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i8* }
%struct.nilfs_super_block = type { i32, i32, i32, i32, i32 }
%struct.nilfs_sb_info = type { i8*, i8*, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@MS_NOATIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_store_magic_and_option(%struct.super_block* %0, %struct.nilfs_super_block* %1, i8* %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.nilfs_super_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nilfs_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.nilfs_super_block* %1, %struct.nilfs_super_block** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.super_block*, %struct.super_block** %4, align 8
  %9 = call %struct.nilfs_sb_info* @NILFS_SB(%struct.super_block* %8)
  store %struct.nilfs_sb_info* %9, %struct.nilfs_sb_info** %7, align 8
  %10 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %5, align 8
  %11 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @le16_to_cpu(i32 %12)
  %14 = load %struct.super_block*, %struct.super_block** %4, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 1
  store i8* %13, i8** %15, align 8
  %16 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %7, align 8
  %17 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %5, align 8
  %18 = call i32 @nilfs_set_default_options(%struct.nilfs_sb_info* %16, %struct.nilfs_super_block* %17)
  %19 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %5, align 8
  %20 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @le16_to_cpu(i32 %21)
  %23 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %7, align 8
  %24 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %23, i32 0, i32 3
  store i8* %22, i8** %24, align 8
  %25 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %5, align 8
  %26 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @le16_to_cpu(i32 %27)
  %29 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %7, align 8
  %30 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %5, align 8
  %32 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @le32_to_cpu(i32 %33)
  %35 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %7, align 8
  %36 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %5, align 8
  %38 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @le32_to_cpu(i32 %39)
  %41 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %7, align 8
  %42 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load %struct.super_block*, %struct.super_block** %4, align 8
  %45 = call i32 @parse_options(i8* %43, %struct.super_block* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %3
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  br label %51

50:                                               ; preds = %3
  br label %51

51:                                               ; preds = %50, %47
  %52 = phi i32 [ %49, %47 ], [ 0, %50 ]
  ret i32 %52
}

declare dso_local %struct.nilfs_sb_info* @NILFS_SB(%struct.super_block*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @nilfs_set_default_options(%struct.nilfs_sb_info*, %struct.nilfs_super_block*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @parse_options(i8*, %struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
