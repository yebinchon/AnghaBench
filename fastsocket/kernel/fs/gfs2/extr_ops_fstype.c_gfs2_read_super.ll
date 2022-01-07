; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_fstype.c_gfs2_read_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_fstype.c_gfs2_read_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32, %struct.super_block* }
%struct.super_block = type { i32, i32 }
%struct.gfs2_sb = type { i32 }
%struct.page = type { i32 }
%struct.bio = type { i32, %struct.page*, i32, i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@end_bio_io_page = common dso_local global i32 0, align 4
@READ_SYNC = common dso_local global i32 0, align 4
@BIO_RW_META = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_sbd*, i32)* @gfs2_read_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_read_super(%struct.gfs2_sbd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.gfs2_sb*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.bio*, align 8
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %11 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %10, i32 0, i32 1
  %12 = load %struct.super_block*, %struct.super_block** %11, align 8
  store %struct.super_block* %12, %struct.super_block** %6, align 8
  %13 = load i32, i32* @GFP_NOFS, align 4
  %14 = call %struct.page* @alloc_page(i32 %13)
  store %struct.page* %14, %struct.page** %8, align 8
  %15 = load %struct.page*, %struct.page** %8, align 8
  %16 = icmp ne %struct.page* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOBUFS, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %85

24:                                               ; preds = %2
  %25 = load %struct.page*, %struct.page** %8, align 8
  %26 = call i32 @ClearPageUptodate(%struct.page* %25)
  %27 = load %struct.page*, %struct.page** %8, align 8
  %28 = call i32 @ClearPageDirty(%struct.page* %27)
  %29 = load %struct.page*, %struct.page** %8, align 8
  %30 = call i32 @lock_page(%struct.page* %29)
  %31 = load i32, i32* @GFP_NOFS, align 4
  %32 = call %struct.bio* @bio_alloc(i32 %31, i32 1)
  store %struct.bio* %32, %struct.bio** %9, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.super_block*, %struct.super_block** %6, align 8
  %35 = getelementptr inbounds %struct.super_block, %struct.super_block* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 9
  %38 = mul nsw i32 %33, %37
  %39 = load %struct.bio*, %struct.bio** %9, align 8
  %40 = getelementptr inbounds %struct.bio, %struct.bio* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.super_block*, %struct.super_block** %6, align 8
  %42 = getelementptr inbounds %struct.super_block, %struct.super_block* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.bio*, %struct.bio** %9, align 8
  %45 = getelementptr inbounds %struct.bio, %struct.bio* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.bio*, %struct.bio** %9, align 8
  %47 = load %struct.page*, %struct.page** %8, align 8
  %48 = load i32, i32* @PAGE_SIZE, align 4
  %49 = call i32 @bio_add_page(%struct.bio* %46, %struct.page* %47, i32 %48, i32 0)
  %50 = load i32, i32* @end_bio_io_page, align 4
  %51 = load %struct.bio*, %struct.bio** %9, align 8
  %52 = getelementptr inbounds %struct.bio, %struct.bio* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.page*, %struct.page** %8, align 8
  %54 = load %struct.bio*, %struct.bio** %9, align 8
  %55 = getelementptr inbounds %struct.bio, %struct.bio* %54, i32 0, i32 1
  store %struct.page* %53, %struct.page** %55, align 8
  %56 = load i32, i32* @READ_SYNC, align 4
  %57 = load i32, i32* @BIO_RW_META, align 4
  %58 = shl i32 1, %57
  %59 = or i32 %56, %58
  %60 = load %struct.bio*, %struct.bio** %9, align 8
  %61 = call i32 @submit_bio(i32 %59, %struct.bio* %60)
  %62 = load %struct.page*, %struct.page** %8, align 8
  %63 = call i32 @wait_on_page_locked(%struct.page* %62)
  %64 = load %struct.bio*, %struct.bio** %9, align 8
  %65 = call i32 @bio_put(%struct.bio* %64)
  %66 = load %struct.page*, %struct.page** %8, align 8
  %67 = call i32 @PageUptodate(%struct.page* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %24
  %70 = load %struct.page*, %struct.page** %8, align 8
  %71 = call i32 @__free_page(%struct.page* %70)
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %85

74:                                               ; preds = %24
  %75 = load %struct.page*, %struct.page** %8, align 8
  %76 = call %struct.gfs2_sb* @kmap(%struct.page* %75)
  store %struct.gfs2_sb* %76, %struct.gfs2_sb** %7, align 8
  %77 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %78 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %77, i32 0, i32 0
  %79 = load %struct.gfs2_sb*, %struct.gfs2_sb** %7, align 8
  %80 = call i32 @gfs2_sb_in(i32* %78, %struct.gfs2_sb* %79)
  %81 = load %struct.page*, %struct.page** %8, align 8
  %82 = call i32 @kunmap(%struct.page* %81)
  %83 = load %struct.page*, %struct.page** %8, align 8
  %84 = call i32 @__free_page(%struct.page* %83)
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %74, %69, %21
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ClearPageUptodate(%struct.page*) #1

declare dso_local i32 @ClearPageDirty(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local %struct.bio* @bio_alloc(i32, i32) #1

declare dso_local i32 @bio_add_page(%struct.bio*, %struct.page*, i32, i32) #1

declare dso_local i32 @submit_bio(i32, %struct.bio*) #1

declare dso_local i32 @wait_on_page_locked(%struct.page*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local %struct.gfs2_sb* @kmap(%struct.page*) #1

declare dso_local i32 @gfs2_sb_in(i32*, %struct.gfs2_sb*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
