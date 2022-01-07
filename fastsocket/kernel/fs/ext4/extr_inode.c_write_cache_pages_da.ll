; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_write_cache_pages_da.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_write_cache_pages_da.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.writeback_control = type { i64, i32, i32, i64 }
%struct.mpage_da_data = type { i32 }
%struct.pagevec = type { %struct.page** }
%struct.page = type { i32, %struct.address_space* }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@WB_SYNC_ALL = common dso_local global i64 0, align 8
@PAGECACHE_TAG_TOWRITE = common dso_local global i32 0, align 4
@PAGECACHE_TAG_DIRTY = common dso_local global i32 0, align 4
@PAGEVEC_SIZE = common dso_local global i64 0, align 8
@WB_SYNC_NONE = common dso_local global i64 0, align 8
@AOP_WRITEPAGE_ACTIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, %struct.writeback_control*, %struct.mpage_da_data*, i32*)* @write_cache_pages_da to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_cache_pages_da(%struct.address_space* %0, %struct.writeback_control* %1, %struct.mpage_da_data* %2, i32* %3) #0 {
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca %struct.writeback_control*, align 8
  %7 = alloca %struct.mpage_da_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pagevec, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.page*, align 8
  store %struct.address_space* %0, %struct.address_space** %5, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %6, align 8
  store %struct.mpage_da_data* %2, %struct.mpage_da_data** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %19 = load %struct.writeback_control*, %struct.writeback_control** %6, align 8
  %20 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %15, align 8
  %22 = call i32 @pagevec_init(%struct.pagevec* %11, i32 0)
  %23 = load %struct.writeback_control*, %struct.writeback_control** %6, align 8
  %24 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %27 = ashr i32 %25, %26
  store i32 %27, i32* %13, align 4
  %28 = load %struct.writeback_control*, %struct.writeback_control** %6, align 8
  %29 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %32 = ashr i32 %30, %31
  store i32 %32, i32* %14, align 4
  %33 = load %struct.writeback_control*, %struct.writeback_control** %6, align 8
  %34 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @WB_SYNC_ALL, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %4
  %39 = load i32, i32* @PAGECACHE_TAG_TOWRITE, align 4
  store i32 %39, i32* %16, align 4
  br label %42

40:                                               ; preds = %4
  %41 = load i32, i32* @PAGECACHE_TAG_DIRTY, align 4
  store i32 %41, i32* %16, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = load i32, i32* %13, align 4
  %44 = load i32*, i32** %8, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %172, %42
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp sle i32 %49, %50
  br label %52

52:                                               ; preds = %48, %45
  %53 = phi i1 [ false, %45 ], [ %51, %48 ]
  br i1 %53, label %54, label %175

54:                                               ; preds = %52
  %55 = load %struct.address_space*, %struct.address_space** %5, align 8
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %13, align 4
  %59 = sub nsw i32 %57, %58
  %60 = load i64, i64* @PAGEVEC_SIZE, align 8
  %61 = trunc i64 %60 to i32
  %62 = sub nsw i32 %61, 1
  %63 = call i64 @min(i32 %59, i32 %62)
  %64 = add nsw i64 %63, 1
  %65 = call i32 @pagevec_lookup_tag(%struct.pagevec* %11, %struct.address_space* %55, i32* %13, i32 %56, i64 %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %54
  br label %175

69:                                               ; preds = %54
  store i32 0, i32* %17, align 4
  br label %70

70:                                               ; preds = %169, %69
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %74, label %172

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %11, i32 0, i32 0
  %76 = load %struct.page**, %struct.page*** %75, align 8
  %77 = load i32, i32* %17, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.page*, %struct.page** %76, i64 %78
  %80 = load %struct.page*, %struct.page** %79, align 8
  store %struct.page* %80, %struct.page** %18, align 8
  %81 = load %struct.page*, %struct.page** %18, align 8
  %82 = getelementptr inbounds %struct.page, %struct.page* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %14, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %74
  store i32 1, i32* %10, align 4
  br label %172

87:                                               ; preds = %74
  %88 = load %struct.page*, %struct.page** %18, align 8
  %89 = getelementptr inbounds %struct.page, %struct.page* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  %92 = load i32*, i32** %8, align 8
  store i32 %91, i32* %92, align 4
  %93 = load %struct.page*, %struct.page** %18, align 8
  %94 = call i32 @lock_page(%struct.page* %93)
  %95 = load %struct.page*, %struct.page** %18, align 8
  %96 = getelementptr inbounds %struct.page, %struct.page* %95, i32 0, i32 1
  %97 = load %struct.address_space*, %struct.address_space** %96, align 8
  %98 = load %struct.address_space*, %struct.address_space** %5, align 8
  %99 = icmp ne %struct.address_space* %97, %98
  %100 = zext i1 %99 to i32
  %101 = call i64 @unlikely(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %87
  br label %104

104:                                              ; preds = %134, %125, %111, %103
  %105 = load %struct.page*, %struct.page** %18, align 8
  %106 = call i32 @unlock_page(%struct.page* %105)
  br label %169

107:                                              ; preds = %87
  %108 = load %struct.page*, %struct.page** %18, align 8
  %109 = call i32 @PageDirty(%struct.page* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %107
  br label %104

112:                                              ; preds = %107
  %113 = load %struct.page*, %struct.page** %18, align 8
  %114 = call i64 @PageWriteback(%struct.page* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %112
  %117 = load %struct.writeback_control*, %struct.writeback_control** %6, align 8
  %118 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @WB_SYNC_NONE, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %116
  %123 = load %struct.page*, %struct.page** %18, align 8
  %124 = call i32 @wait_on_page_writeback(%struct.page* %123)
  br label %126

125:                                              ; preds = %116
  br label %104

126:                                              ; preds = %122
  br label %127

127:                                              ; preds = %126, %112
  %128 = load %struct.page*, %struct.page** %18, align 8
  %129 = call i64 @PageWriteback(%struct.page* %128)
  %130 = call i32 @BUG_ON(i64 %129)
  %131 = load %struct.page*, %struct.page** %18, align 8
  %132 = call i32 @clear_page_dirty_for_io(%struct.page* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %127
  br label %104

135:                                              ; preds = %127
  %136 = load %struct.page*, %struct.page** %18, align 8
  %137 = load %struct.writeback_control*, %struct.writeback_control** %6, align 8
  %138 = load %struct.mpage_da_data*, %struct.mpage_da_data** %7, align 8
  %139 = call i32 @__mpage_da_writepage(%struct.page* %136, %struct.writeback_control* %137, %struct.mpage_da_data* %138)
  store i32 %139, i32* %9, align 4
  %140 = load i32, i32* %9, align 4
  %141 = call i64 @unlikely(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %135
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* @AOP_WRITEPAGE_ACTIVATE, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %143
  %148 = load %struct.page*, %struct.page** %18, align 8
  %149 = call i32 @unlock_page(%struct.page* %148)
  store i32 0, i32* %9, align 4
  br label %151

150:                                              ; preds = %143
  store i32 1, i32* %10, align 4
  br label %172

151:                                              ; preds = %147
  br label %152

152:                                              ; preds = %151, %135
  %153 = load i64, i64* %15, align 8
  %154 = icmp sgt i64 %153, 0
  br i1 %154, label %155, label %168

155:                                              ; preds = %152
  %156 = load i64, i64* %15, align 8
  %157 = add nsw i64 %156, -1
  store i64 %157, i64* %15, align 8
  %158 = load i64, i64* %15, align 8
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %155
  %161 = load %struct.writeback_control*, %struct.writeback_control** %6, align 8
  %162 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @WB_SYNC_NONE, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %160
  store i32 1, i32* %10, align 4
  br label %172

167:                                              ; preds = %160, %155
  br label %168

168:                                              ; preds = %167, %152
  br label %169

169:                                              ; preds = %168, %104
  %170 = load i32, i32* %17, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %17, align 4
  br label %70

172:                                              ; preds = %166, %150, %86, %70
  %173 = call i32 @pagevec_release(%struct.pagevec* %11)
  %174 = call i32 (...) @cond_resched()
  br label %45

175:                                              ; preds = %68, %52
  %176 = load i32, i32* %9, align 4
  ret i32 %176
}

declare dso_local i32 @pagevec_init(%struct.pagevec*, i32) #1

declare dso_local i32 @pagevec_lookup_tag(%struct.pagevec*, %struct.address_space*, i32*, i32, i64) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @PageDirty(%struct.page*) #1

declare dso_local i64 @PageWriteback(%struct.page*) #1

declare dso_local i32 @wait_on_page_writeback(%struct.page*) #1

declare dso_local i32 @BUG_ON(i64) #1

declare dso_local i32 @clear_page_dirty_for_io(%struct.page*) #1

declare dso_local i32 @__mpage_da_writepage(%struct.page*, %struct.writeback_control*, %struct.mpage_da_data*) #1

declare dso_local i32 @pagevec_release(%struct.pagevec*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
