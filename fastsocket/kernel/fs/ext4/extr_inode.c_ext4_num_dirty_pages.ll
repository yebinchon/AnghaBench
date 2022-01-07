; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_num_dirty_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_num_dirty_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.pagevec = type { %struct.page** }
%struct.page = type { i64, %struct.address_space* }
%struct.buffer_head = type { %struct.buffer_head* }

@PAGECACHE_TAG_DIRTY = common dso_local global i32 0, align 4
@PAGEVEC_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.inode*, i64, i32)* @ext4_num_dirty_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ext4_num_dirty_pages(%struct.inode* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.address_space*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pagevec, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.page*, align 8
  %16 = alloca %struct.buffer_head*, align 8
  %17 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load %struct.address_space*, %struct.address_space** %19, align 8
  store %struct.address_space* %20, %struct.address_space** %8, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %14, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %132

24:                                               ; preds = %3
  %25 = call i32 @pagevec_init(%struct.pagevec* %10, i32 0)
  br label %26

26:                                               ; preds = %128, %24
  %27 = load i32, i32* %14, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br i1 %29, label %30, label %130

30:                                               ; preds = %26
  %31 = load i64, i64* %6, align 8
  store i64 %31, i64* %9, align 8
  %32 = load %struct.address_space*, %struct.address_space** %8, align 8
  %33 = load i32, i32* @PAGECACHE_TAG_DIRTY, align 4
  %34 = load i64, i64* @PAGEVEC_SIZE, align 8
  %35 = call i32 @pagevec_lookup_tag(%struct.pagevec* %10, %struct.address_space* %32, i64* %9, i32 %33, i64 %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %130

39:                                               ; preds = %30
  store i32 0, i32* %12, align 4
  br label %40

40:                                               ; preds = %125, %39
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %128

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %10, i32 0, i32 0
  %46 = load %struct.page**, %struct.page*** %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.page*, %struct.page** %46, i64 %48
  %50 = load %struct.page*, %struct.page** %49, align 8
  store %struct.page* %50, %struct.page** %15, align 8
  %51 = load %struct.page*, %struct.page** %15, align 8
  %52 = call i32 @lock_page(%struct.page* %51)
  %53 = load %struct.page*, %struct.page** %15, align 8
  %54 = getelementptr inbounds %struct.page, %struct.page* %53, i32 0, i32 1
  %55 = load %struct.address_space*, %struct.address_space** %54, align 8
  %56 = load %struct.address_space*, %struct.address_space** %8, align 8
  %57 = icmp ne %struct.address_space* %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %75, label %61

61:                                               ; preds = %44
  %62 = load %struct.page*, %struct.page** %15, align 8
  %63 = call i32 @PageDirty(%struct.page* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %61
  %66 = load %struct.page*, %struct.page** %15, align 8
  %67 = call i64 @PageWriteback(%struct.page* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %65
  %70 = load %struct.page*, %struct.page** %15, align 8
  %71 = getelementptr inbounds %struct.page, %struct.page* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %6, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %69, %65, %61, %44
  store i32 1, i32* %14, align 4
  %76 = load %struct.page*, %struct.page** %15, align 8
  %77 = call i32 @unlock_page(%struct.page* %76)
  br label %128

78:                                               ; preds = %69
  %79 = load %struct.page*, %struct.page** %15, align 8
  %80 = call i64 @page_has_buffers(%struct.page* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %108

82:                                               ; preds = %78
  %83 = load %struct.page*, %struct.page** %15, align 8
  %84 = call %struct.buffer_head* @page_buffers(%struct.page* %83)
  store %struct.buffer_head* %84, %struct.buffer_head** %17, align 8
  store %struct.buffer_head* %84, %struct.buffer_head** %16, align 8
  br label %85

85:                                               ; preds = %105, %82
  %86 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %87 = call i32 @buffer_delay(%struct.buffer_head* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %85
  %90 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %91 = call i32 @buffer_unwritten(%struct.buffer_head* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %89
  store i32 1, i32* %14, align 4
  br label %94

94:                                               ; preds = %93, %89, %85
  %95 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %96 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %95, i32 0, i32 0
  %97 = load %struct.buffer_head*, %struct.buffer_head** %96, align 8
  store %struct.buffer_head* %97, %struct.buffer_head** %16, align 8
  br label %98

98:                                               ; preds = %94
  %99 = load i32, i32* %14, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %98
  %102 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %103 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %104 = icmp ne %struct.buffer_head* %102, %103
  br label %105

105:                                              ; preds = %101, %98
  %106 = phi i1 [ false, %98 ], [ %104, %101 ]
  br i1 %106, label %85, label %107

107:                                              ; preds = %105
  br label %108

108:                                              ; preds = %107, %78
  %109 = load %struct.page*, %struct.page** %15, align 8
  %110 = call i32 @unlock_page(%struct.page* %109)
  %111 = load i32, i32* %14, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  br label %128

114:                                              ; preds = %108
  %115 = load i64, i64* %6, align 8
  %116 = add nsw i64 %115, 1
  store i64 %116, i64* %6, align 8
  %117 = load i64, i64* %11, align 8
  %118 = add nsw i64 %117, 1
  store i64 %118, i64* %11, align 8
  %119 = load i64, i64* %11, align 8
  %120 = load i32, i32* %7, align 4
  %121 = zext i32 %120 to i64
  %122 = icmp sge i64 %119, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %114
  store i32 1, i32* %14, align 4
  br label %128

124:                                              ; preds = %114
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %12, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %12, align 4
  br label %40

128:                                              ; preds = %123, %113, %75, %40
  %129 = call i32 @pagevec_release(%struct.pagevec* %10)
  br label %26

130:                                              ; preds = %38, %26
  %131 = load i64, i64* %11, align 8
  store i64 %131, i64* %4, align 8
  br label %132

132:                                              ; preds = %130, %23
  %133 = load i64, i64* %4, align 8
  ret i64 %133
}

declare dso_local i32 @pagevec_init(%struct.pagevec*, i32) #1

declare dso_local i32 @pagevec_lookup_tag(%struct.pagevec*, %struct.address_space*, i64*, i32, i64) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PageDirty(%struct.page*) #1

declare dso_local i64 @PageWriteback(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i64 @page_has_buffers(%struct.page*) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @buffer_delay(%struct.buffer_head*) #1

declare dso_local i32 @buffer_unwritten(%struct.buffer_head*) #1

declare dso_local i32 @pagevec_release(%struct.pagevec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
