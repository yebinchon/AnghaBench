; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_test_metadata_dirty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_test_metadata_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_sb_info = type { i32, %struct.the_nilfs* }
%struct.the_nilfs = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_sb_info*)* @nilfs_test_metadata_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_test_metadata_dirty(%struct.nilfs_sb_info* %0) #0 {
  %2 = alloca %struct.nilfs_sb_info*, align 8
  %3 = alloca %struct.the_nilfs*, align 8
  %4 = alloca i32, align 4
  store %struct.nilfs_sb_info* %0, %struct.nilfs_sb_info** %2, align 8
  %5 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %2, align 8
  %6 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %5, i32 0, i32 1
  %7 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  store %struct.the_nilfs* %7, %struct.the_nilfs** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %2, align 8
  %9 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @nilfs_mdt_fetch_dirty(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %18 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @nilfs_mdt_fetch_dirty(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %22, %16
  %26 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %27 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @nilfs_mdt_fetch_dirty(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %31, %25
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = call i64 (...) @nilfs_doing_gc()
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %37, %34
  %41 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %42 = call i32 @nilfs_dat_inode(%struct.the_nilfs* %41)
  %43 = call i64 @nilfs_mdt_fetch_dirty(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %45, %40
  br label %49

49:                                               ; preds = %48, %37
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i64 @nilfs_mdt_fetch_dirty(i32) #1

declare dso_local i64 @nilfs_doing_gc(...) #1

declare dso_local i32 @nilfs_dat_inode(%struct.the_nilfs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
