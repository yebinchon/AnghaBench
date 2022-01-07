; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_scrub.c_scrub_recheck_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_scrub.c_scrub_recheck_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.scrub_block = type { i32, i32, %struct.scrub_page*, i64, i64 }
%struct.scrub_page = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.bio = type { i32, i32, i32*, i32, i32* }

@complete = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@scrub_complete_bio_end_io = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@REQ_SYNC = common dso_local global i32 0, align 4
@BIO_UPTODATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, %struct.scrub_block*, i32, i32, i32*, i32, i32)* @scrub_recheck_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scrub_recheck_block(%struct.btrfs_fs_info* %0, %struct.scrub_block* %1, i32 %2, i32 %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.btrfs_fs_info*, align 8
  %10 = alloca %struct.scrub_block*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.bio*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.scrub_page*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %9, align 8
  store %struct.scrub_block* %1, %struct.scrub_block** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = load %struct.scrub_block*, %struct.scrub_block** %10, align 8
  %21 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.scrub_block*, %struct.scrub_block** %10, align 8
  %23 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %22, i32 0, i32 4
  store i64 0, i64* %23, align 8
  %24 = load %struct.scrub_block*, %struct.scrub_block** %10, align 8
  %25 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  store i32 0, i32* %16, align 4
  br label %26

26:                                               ; preds = %127, %7
  %27 = load i32, i32* %16, align 4
  %28 = load %struct.scrub_block*, %struct.scrub_block** %10, align 8
  %29 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %130

32:                                               ; preds = %26
  %33 = load %struct.scrub_block*, %struct.scrub_block** %10, align 8
  %34 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %33, i32 0, i32 2
  %35 = load %struct.scrub_page*, %struct.scrub_page** %34, align 8
  %36 = load i32, i32* %16, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %35, i64 %37
  store %struct.scrub_page* %38, %struct.scrub_page** %19, align 8
  %39 = load i32, i32* @complete, align 4
  %40 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %39)
  %41 = load %struct.scrub_page*, %struct.scrub_page** %19, align 8
  %42 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %41, i32 0, i32 3
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %32
  %48 = load %struct.scrub_page*, %struct.scrub_page** %19, align 8
  %49 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load %struct.scrub_block*, %struct.scrub_block** %10, align 8
  %51 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  br label %127

52:                                               ; preds = %32
  %53 = load %struct.scrub_page*, %struct.scrub_page** %19, align 8
  %54 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 @BUG_ON(i32 %58)
  %60 = load i32, i32* @GFP_NOFS, align 4
  %61 = call %struct.bio* @bio_alloc(i32 %60, i32 1)
  store %struct.bio* %61, %struct.bio** %17, align 8
  %62 = load %struct.bio*, %struct.bio** %17, align 8
  %63 = icmp ne %struct.bio* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %52
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %8, align 4
  br label %145

67:                                               ; preds = %52
  %68 = load %struct.scrub_page*, %struct.scrub_page** %19, align 8
  %69 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %68, i32 0, i32 3
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.bio*, %struct.bio** %17, align 8
  %74 = getelementptr inbounds %struct.bio, %struct.bio* %73, i32 0, i32 4
  store i32* %72, i32** %74, align 8
  %75 = load %struct.scrub_page*, %struct.scrub_page** %19, align 8
  %76 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = ashr i32 %77, 9
  %79 = load %struct.bio*, %struct.bio** %17, align 8
  %80 = getelementptr inbounds %struct.bio, %struct.bio* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* @scrub_complete_bio_end_io, align 4
  %82 = load %struct.bio*, %struct.bio** %17, align 8
  %83 = getelementptr inbounds %struct.bio, %struct.bio* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 8
  %84 = load %struct.bio*, %struct.bio** %17, align 8
  %85 = getelementptr inbounds %struct.bio, %struct.bio* %84, i32 0, i32 2
  store i32* @complete, i32** %85, align 8
  %86 = load %struct.bio*, %struct.bio** %17, align 8
  %87 = load %struct.scrub_page*, %struct.scrub_page** %19, align 8
  %88 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @PAGE_SIZE, align 4
  %91 = call i32 @bio_add_page(%struct.bio* %86, i32 %89, i32 %90, i32 0)
  store i32 %91, i32* %18, align 4
  %92 = load i32, i32* @PAGE_SIZE, align 4
  %93 = load i32, i32* %18, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %67
  %96 = load %struct.bio*, %struct.bio** %17, align 8
  %97 = call i32 @bio_put(%struct.bio* %96)
  %98 = load i32, i32* @EIO, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %8, align 4
  br label %145

100:                                              ; preds = %67
  %101 = load i32, i32* @READ, align 4
  %102 = load i32, i32* @REQ_SYNC, align 4
  %103 = or i32 %101, %102
  %104 = load %struct.bio*, %struct.bio** %17, align 8
  %105 = call i32 @btrfsic_submit_bio(i32 %103, %struct.bio* %104)
  %106 = call i32 @wait_for_completion(i32* @complete)
  %107 = load i32, i32* @BIO_UPTODATE, align 4
  %108 = load %struct.bio*, %struct.bio** %17, align 8
  %109 = getelementptr inbounds %struct.bio, %struct.bio* %108, i32 0, i32 1
  %110 = call i32 @test_bit(i32 %107, i32* %109)
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  %114 = load %struct.scrub_page*, %struct.scrub_page** %19, align 8
  %115 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load i32, i32* @BIO_UPTODATE, align 4
  %117 = load %struct.bio*, %struct.bio** %17, align 8
  %118 = getelementptr inbounds %struct.bio, %struct.bio* %117, i32 0, i32 1
  %119 = call i32 @test_bit(i32 %116, i32* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %100
  %122 = load %struct.scrub_block*, %struct.scrub_block** %10, align 8
  %123 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %122, i32 0, i32 0
  store i32 0, i32* %123, align 8
  br label %124

124:                                              ; preds = %121, %100
  %125 = load %struct.bio*, %struct.bio** %17, align 8
  %126 = call i32 @bio_put(%struct.bio* %125)
  br label %127

127:                                              ; preds = %124, %47
  %128 = load i32, i32* %16, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %16, align 4
  br label %26

130:                                              ; preds = %26
  %131 = load %struct.scrub_block*, %struct.scrub_block** %10, align 8
  %132 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %130
  %136 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %137 = load %struct.scrub_block*, %struct.scrub_block** %10, align 8
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* %12, align 4
  %140 = load i32*, i32** %13, align 8
  %141 = load i32, i32* %14, align 4
  %142 = load i32, i32* %15, align 4
  %143 = call i32 @scrub_recheck_block_checksum(%struct.btrfs_fs_info* %136, %struct.scrub_block* %137, i32 %138, i32 %139, i32* %140, i32 %141, i32 %142)
  br label %144

144:                                              ; preds = %135, %130
  store i32 0, i32* %8, align 4
  br label %145

145:                                              ; preds = %144, %95, %64
  %146 = load i32, i32* %8, align 4
  ret i32 %146
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.bio* @bio_alloc(i32, i32) #1

declare dso_local i32 @bio_add_page(%struct.bio*, i32, i32, i32) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @btrfsic_submit_bio(i32, %struct.bio*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @scrub_recheck_block_checksum(%struct.btrfs_fs_info*, %struct.scrub_block*, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
