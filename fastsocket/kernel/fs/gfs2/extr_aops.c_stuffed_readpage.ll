; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_aops.c_stuffed_readpage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_aops.c_stuffed_readpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32 }
%struct.page = type { i32 }
%struct.buffer_head = type { i32, i64 }

@PAGE_CACHE_SIZE = common dso_local global i64 0, align 8
@KM_USER0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, %struct.page*)* @stuffed_readpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stuffed_readpage(%struct.gfs2_inode* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gfs2_inode*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %10 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %11 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %10, i32 0, i32 0
  %12 = call i32 @i_size_read(i32* %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.page*, %struct.page** %5, align 8
  %14 = getelementptr inbounds %struct.page, %struct.page* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.page*, %struct.page** %5, align 8
  %20 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %21 = call i32 @zero_user(%struct.page* %19, i32 0, i64 %20)
  %22 = load %struct.page*, %struct.page** %5, align 8
  %23 = call i32 @SetPageUptodate(%struct.page* %22)
  store i32 0, i32* %3, align 4
  br label %76

24:                                               ; preds = %2
  %25 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %26 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %25, %struct.buffer_head** %6)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %3, align 4
  br label %76

31:                                               ; preds = %24
  %32 = load %struct.page*, %struct.page** %5, align 8
  %33 = load i32, i32* @KM_USER0, align 4
  %34 = call i8* @kmap_atomic(%struct.page* %32, i32 %33)
  store i8* %34, i8** %8, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %38 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = sub i64 %40, 4
  %42 = icmp ugt i64 %36, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %31
  %44 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %45 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = sub i64 %47, 4
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %43, %31
  %51 = load i8*, i8** %8, align 8
  %52 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %53 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @memcpy(i8* %51, i64 %55, i32 %56)
  %58 = load i8*, i8** %8, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr i8, i8* %58, i64 %60
  %62 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = sub nsw i64 %62, %64
  %66 = call i32 @memset(i8* %61, i32 0, i64 %65)
  %67 = load i8*, i8** %8, align 8
  %68 = load i32, i32* @KM_USER0, align 4
  %69 = call i32 @kunmap_atomic(i8* %67, i32 %68)
  %70 = load %struct.page*, %struct.page** %5, align 8
  %71 = call i32 @flush_dcache_page(%struct.page* %70)
  %72 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %73 = call i32 @brelse(%struct.buffer_head* %72)
  %74 = load %struct.page*, %struct.page** %5, align 8
  %75 = call i32 @SetPageUptodate(%struct.page* %74)
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %50, %29, %18
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @i_size_read(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @zero_user(%struct.page*, i32, i64) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local i8* @kmap_atomic(%struct.page*, i32) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
