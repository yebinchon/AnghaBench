; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_scrub.c_scrub_repair_page_from_good_copy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_scrub.c_scrub_repair_page_from_good_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scrub_block = type { i64, i64, %struct.scrub_page* }
%struct.scrub_page = type { i32, %struct.TYPE_2__*, i32*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.bio = type { i32, i32*, i32, i32 }

@complete = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@scrub_complete_bio_end_io = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@REQ_SYNC = common dso_local global i32 0, align 4
@BIO_UPTODATE = common dso_local global i32 0, align 4
@BTRFS_DEV_STAT_WRITE_ERRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scrub_block*, %struct.scrub_block*, i32, i32)* @scrub_repair_page_from_good_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scrub_repair_page_from_good_copy(%struct.scrub_block* %0, %struct.scrub_block* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scrub_block*, align 8
  %7 = alloca %struct.scrub_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.scrub_page*, align 8
  %11 = alloca %struct.scrub_page*, align 8
  %12 = alloca %struct.bio*, align 8
  %13 = alloca i32, align 4
  store %struct.scrub_block* %0, %struct.scrub_block** %6, align 8
  store %struct.scrub_block* %1, %struct.scrub_block** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.scrub_block*, %struct.scrub_block** %6, align 8
  %15 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %14, i32 0, i32 2
  %16 = load %struct.scrub_page*, %struct.scrub_page** %15, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %16, i64 %18
  store %struct.scrub_page* %19, %struct.scrub_page** %10, align 8
  %20 = load %struct.scrub_block*, %struct.scrub_block** %7, align 8
  %21 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %20, i32 0, i32 2
  %22 = load %struct.scrub_page*, %struct.scrub_page** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %22, i64 %24
  store %struct.scrub_page* %25, %struct.scrub_page** %11, align 8
  %26 = load %struct.scrub_block*, %struct.scrub_block** %6, align 8
  %27 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %26, i32 0, i32 2
  %28 = load %struct.scrub_page*, %struct.scrub_page** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %28, i64 %30
  %32 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load %struct.scrub_block*, %struct.scrub_block** %7, align 8
  %38 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %37, i32 0, i32 2
  %39 = load %struct.scrub_page*, %struct.scrub_page** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %39, i64 %41
  %43 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  %46 = zext i1 %45 to i32
  %47 = call i32 @BUG_ON(i32 %46)
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %65, label %50

50:                                               ; preds = %4
  %51 = load %struct.scrub_block*, %struct.scrub_block** %6, align 8
  %52 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %50
  %56 = load %struct.scrub_block*, %struct.scrub_block** %6, align 8
  %57 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load %struct.scrub_page*, %struct.scrub_page** %10, align 8
  %62 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %132

65:                                               ; preds = %60, %55, %50, %4
  %66 = load i32, i32* @complete, align 4
  %67 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %66)
  %68 = load i32, i32* @GFP_NOFS, align 4
  %69 = call %struct.bio* @bio_alloc(i32 %68, i32 1)
  store %struct.bio* %69, %struct.bio** %12, align 8
  %70 = load %struct.bio*, %struct.bio** %12, align 8
  %71 = icmp ne %struct.bio* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %65
  %73 = load i32, i32* @EIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %133

75:                                               ; preds = %65
  %76 = load %struct.scrub_page*, %struct.scrub_page** %10, align 8
  %77 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.bio*, %struct.bio** %12, align 8
  %82 = getelementptr inbounds %struct.bio, %struct.bio* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load %struct.scrub_page*, %struct.scrub_page** %10, align 8
  %84 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = ashr i32 %85, 9
  %87 = load %struct.bio*, %struct.bio** %12, align 8
  %88 = getelementptr inbounds %struct.bio, %struct.bio* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* @scrub_complete_bio_end_io, align 4
  %90 = load %struct.bio*, %struct.bio** %12, align 8
  %91 = getelementptr inbounds %struct.bio, %struct.bio* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  %92 = load %struct.bio*, %struct.bio** %12, align 8
  %93 = getelementptr inbounds %struct.bio, %struct.bio* %92, i32 0, i32 1
  store i32* @complete, i32** %93, align 8
  %94 = load %struct.bio*, %struct.bio** %12, align 8
  %95 = load %struct.scrub_page*, %struct.scrub_page** %11, align 8
  %96 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* @PAGE_SIZE, align 4
  %99 = call i32 @bio_add_page(%struct.bio* %94, i32* %97, i32 %98, i32 0)
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* @PAGE_SIZE, align 4
  %101 = load i32, i32* %13, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %75
  %104 = load %struct.bio*, %struct.bio** %12, align 8
  %105 = call i32 @bio_put(%struct.bio* %104)
  %106 = load i32, i32* @EIO, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %5, align 4
  br label %133

108:                                              ; preds = %75
  %109 = load i32, i32* @WRITE, align 4
  %110 = load i32, i32* @REQ_SYNC, align 4
  %111 = or i32 %109, %110
  %112 = load %struct.bio*, %struct.bio** %12, align 8
  %113 = call i32 @btrfsic_submit_bio(i32 %111, %struct.bio* %112)
  %114 = call i32 @wait_for_completion(i32* @complete)
  %115 = load %struct.bio*, %struct.bio** %12, align 8
  %116 = load i32, i32* @BIO_UPTODATE, align 4
  %117 = call i32 @bio_flagged(%struct.bio* %115, i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %129, label %119

119:                                              ; preds = %108
  %120 = load %struct.scrub_page*, %struct.scrub_page** %10, align 8
  %121 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %120, i32 0, i32 1
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = load i32, i32* @BTRFS_DEV_STAT_WRITE_ERRS, align 4
  %124 = call i32 @btrfs_dev_stat_inc_and_print(%struct.TYPE_2__* %122, i32 %123)
  %125 = load %struct.bio*, %struct.bio** %12, align 8
  %126 = call i32 @bio_put(%struct.bio* %125)
  %127 = load i32, i32* @EIO, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %5, align 4
  br label %133

129:                                              ; preds = %108
  %130 = load %struct.bio*, %struct.bio** %12, align 8
  %131 = call i32 @bio_put(%struct.bio* %130)
  br label %132

132:                                              ; preds = %129, %60
  store i32 0, i32* %5, align 4
  br label %133

133:                                              ; preds = %132, %119, %103, %72
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local %struct.bio* @bio_alloc(i32, i32) #1

declare dso_local i32 @bio_add_page(%struct.bio*, i32*, i32, i32) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @btrfsic_submit_bio(i32, %struct.bio*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @bio_flagged(%struct.bio*, i32) #1

declare dso_local i32 @btrfs_dev_stat_inc_and_print(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
