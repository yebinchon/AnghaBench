; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_mft.c_map_mft_record_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_mft.c_map_mft_record_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.page*, %struct.TYPE_5__* }
%struct.page = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, %struct.inode* }
%struct.inode = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGE_CACHE_MASK = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [113 x i8] c"Attemt to read mft record 0x%lx, which is beyond the end of the mft.  This is probably a bug in the ntfs driver.\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Mft record 0x%lx is corrupt.  Run chkdsk.\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_6__*)* @map_mft_record_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @map_mft_record_page(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %5, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 3
  %16 = load %struct.inode*, %struct.inode** %15, align 8
  store %struct.inode* %16, %struct.inode** %6, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = load %struct.page*, %struct.page** %18, align 8
  %20 = call i32 @BUG_ON(%struct.page* %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = shl i32 %23, %26
  %28 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %29 = lshr i32 %27, %28
  %30 = zext i32 %29 to i64
  store i64 %30, i64* %8, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = shl i32 %33, %36
  %38 = load i32, i32* @PAGE_CACHE_MASK, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  store i32 %40, i32* %10, align 4
  %41 = load %struct.inode*, %struct.inode** %6, align 8
  %42 = call i32 @i_size_read(%struct.inode* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %45 = lshr i32 %43, %44
  %46 = zext i32 %45 to i64
  store i64 %46, i64* %9, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = icmp uge i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %80

53:                                               ; preds = %1
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %9, align 8
  %56 = icmp ugt i64 %54, %55
  br i1 %56, label %68, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @PAGE_CACHE_MASK, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add i32 %62, %65
  %67 = icmp ult i32 %61, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %57, %53
  %69 = load i32, i32* @ENOENT, align 4
  %70 = sub nsw i32 0, %69
  %71 = call %struct.page* @ERR_PTR(i32 %70)
  store %struct.page* %71, %struct.page** %7, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @ntfs_error(i32 %74, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str, i64 0, i64 0), i32 %77)
  br label %131

79:                                               ; preds = %57
  br label %80

80:                                               ; preds = %79, %1
  %81 = load %struct.inode*, %struct.inode** %6, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i64, i64* %8, align 8
  %85 = call %struct.page* @ntfs_map_page(i32 %83, i64 %84)
  store %struct.page* %85, %struct.page** %7, align 8
  %86 = load %struct.page*, %struct.page** %7, align 8
  %87 = call i32 @IS_ERR(%struct.page* %86)
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = call i64 @likely(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %130

93:                                               ; preds = %80
  %94 = load %struct.page*, %struct.page** %7, align 8
  %95 = call i8* @page_address(%struct.page* %94)
  %96 = load i32, i32* %10, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr i8, i8* %95, i64 %97
  %99 = bitcast i8* %98 to i32*
  %100 = call i32 @ntfs_is_mft_recordp(i32* %99)
  %101 = call i64 @likely(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %93
  %104 = load %struct.page*, %struct.page** %7, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  store %struct.page* %104, %struct.page** %106, align 8
  %107 = load i32, i32* %10, align 4
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load %struct.page*, %struct.page** %7, align 8
  %111 = call i8* @page_address(%struct.page* %110)
  %112 = load i32, i32* %10, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr i8, i8* %111, i64 %113
  store i8* %114, i8** %2, align 8
  br label %138

115:                                              ; preds = %93
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @ntfs_error(i32 %118, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %121)
  %123 = load %struct.page*, %struct.page** %7, align 8
  %124 = call i32 @ntfs_unmap_page(%struct.page* %123)
  %125 = load i32, i32* @EIO, align 4
  %126 = sub nsw i32 0, %125
  %127 = call %struct.page* @ERR_PTR(i32 %126)
  store %struct.page* %127, %struct.page** %7, align 8
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %129 = call i32 @NVolSetErrors(%struct.TYPE_5__* %128)
  br label %130

130:                                              ; preds = %115, %80
  br label %131

131:                                              ; preds = %130, %68
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 2
  store %struct.page* null, %struct.page** %133, align 8
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  store i32 0, i32* %135, align 4
  %136 = load %struct.page*, %struct.page** %7, align 8
  %137 = bitcast %struct.page* %136 to i8*
  store i8* %137, i8** %2, align 8
  br label %138

138:                                              ; preds = %131, %103
  %139 = load i8*, i8** %2, align 8
  ret i8* %139
}

declare dso_local i32 @BUG_ON(%struct.page*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.page* @ERR_PTR(i32) #1

declare dso_local i32 @ntfs_error(i32, i8*, i32) #1

declare dso_local %struct.page* @ntfs_map_page(i32, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @IS_ERR(%struct.page*) #1

declare dso_local i32 @ntfs_is_mft_recordp(i32*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @ntfs_unmap_page(%struct.page*) #1

declare dso_local i32 @NVolSetErrors(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
