; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_segctor_construct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_segctor_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_sc_info = type { i32, %struct.nilfs_sb_info* }
%struct.nilfs_sb_info = type { %struct.the_nilfs* }
%struct.the_nilfs = type { i32, i32 }
%struct.nilfs_segctor_req = type { i64, i32, i32 }

@SC_LSEG_SR = common dso_local global i64 0, align 8
@SC_FLUSH_DAT = common dso_local global i64 0, align 8
@NILFS_SC_SUPER_ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_sc_info*, %struct.nilfs_segctor_req*)* @nilfs_segctor_construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_segctor_construct(%struct.nilfs_sc_info* %0, %struct.nilfs_segctor_req* %1) #0 {
  %3 = alloca %struct.nilfs_sc_info*, align 8
  %4 = alloca %struct.nilfs_segctor_req*, align 8
  %5 = alloca %struct.nilfs_sb_info*, align 8
  %6 = alloca %struct.the_nilfs*, align 8
  %7 = alloca i32, align 4
  store %struct.nilfs_sc_info* %0, %struct.nilfs_sc_info** %3, align 8
  store %struct.nilfs_segctor_req* %1, %struct.nilfs_segctor_req** %4, align 8
  %8 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %9 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %8, i32 0, i32 1
  %10 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %9, align 8
  store %struct.nilfs_sb_info* %10, %struct.nilfs_sb_info** %5, align 8
  %11 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %5, align 8
  %12 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %11, i32 0, i32 0
  %13 = load %struct.the_nilfs*, %struct.the_nilfs** %12, align 8
  store %struct.the_nilfs* %13, %struct.the_nilfs** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %15 = call i64 @nilfs_discontinued(%struct.the_nilfs* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i64, i64* @SC_LSEG_SR, align 8
  %19 = load %struct.nilfs_segctor_req*, %struct.nilfs_segctor_req** %4, align 8
  %20 = getelementptr inbounds %struct.nilfs_segctor_req, %struct.nilfs_segctor_req* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  br label %21

21:                                               ; preds = %17, %2
  %22 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %23 = call i32 @nilfs_segctor_confirm(%struct.nilfs_sc_info* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %21
  %26 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %27 = load %struct.nilfs_segctor_req*, %struct.nilfs_segctor_req** %4, align 8
  %28 = getelementptr inbounds %struct.nilfs_segctor_req, %struct.nilfs_segctor_req* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @nilfs_segctor_do_construct(%struct.nilfs_sc_info* %26, i64 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.nilfs_segctor_req*, %struct.nilfs_segctor_req** %4, align 8
  %33 = getelementptr inbounds %struct.nilfs_segctor_req, %struct.nilfs_segctor_req* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %25, %21
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i64 @likely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %75

41:                                               ; preds = %34
  %42 = load %struct.nilfs_segctor_req*, %struct.nilfs_segctor_req** %4, align 8
  %43 = getelementptr inbounds %struct.nilfs_segctor_req, %struct.nilfs_segctor_req* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SC_FLUSH_DAT, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %49 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %48, i32 0, i32 1
  %50 = call i32 @atomic_set(i32* %49, i32 0)
  br label %51

51:                                               ; preds = %47, %41
  %52 = load i32, i32* @NILFS_SC_SUPER_ROOT, align 4
  %53 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %54 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %53, i32 0, i32 0
  %55 = call i64 @test_bit(i32 %52, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %51
  %58 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %59 = call i64 @nilfs_discontinued(%struct.the_nilfs* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %57
  %62 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %63 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %62, i32 0, i32 0
  %64 = call i32 @down_write(i32* %63)
  %65 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %5, align 8
  %66 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %67 = call i32 @nilfs_altsb_need_update(%struct.the_nilfs* %66)
  %68 = call i32 @nilfs_commit_super(%struct.nilfs_sb_info* %65, i32 %67)
  %69 = load %struct.nilfs_segctor_req*, %struct.nilfs_segctor_req** %4, align 8
  %70 = getelementptr inbounds %struct.nilfs_segctor_req, %struct.nilfs_segctor_req* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %72 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %71, i32 0, i32 0
  %73 = call i32 @up_write(i32* %72)
  br label %74

74:                                               ; preds = %61, %57, %51
  br label %75

75:                                               ; preds = %74, %34
  %76 = load i32, i32* %7, align 4
  ret i32 %76
}

declare dso_local i64 @nilfs_discontinued(%struct.the_nilfs*) #1

declare dso_local i32 @nilfs_segctor_confirm(%struct.nilfs_sc_info*) #1

declare dso_local i32 @nilfs_segctor_do_construct(%struct.nilfs_sc_info*, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @nilfs_commit_super(%struct.nilfs_sb_info*, i32) #1

declare dso_local i32 @nilfs_altsb_need_update(%struct.the_nilfs*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
