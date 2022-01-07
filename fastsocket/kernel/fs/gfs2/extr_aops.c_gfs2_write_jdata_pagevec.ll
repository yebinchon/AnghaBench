; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_aops.c_gfs2_write_jdata_pagevec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_aops.c_gfs2_write_jdata_pagevec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { %struct.TYPE_4__*, %struct.backing_dev_info*, %struct.inode* }
%struct.TYPE_4__ = type { i32 (%struct.page*, i32)* }
%struct.page = type { i64, %struct.address_space* }
%struct.backing_dev_info = type { i32 }
%struct.inode = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.writeback_control = type { i64, i64, i32, i64, i32 }
%struct.pagevec = type { %struct.page** }
%struct.gfs2_sbd = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@WB_SYNC_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, %struct.writeback_control*, %struct.pagevec*, i32, i64)* @gfs2_write_jdata_pagevec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_write_jdata_pagevec(%struct.address_space* %0, %struct.writeback_control* %1, %struct.pagevec* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca %struct.writeback_control*, align 8
  %9 = alloca %struct.pagevec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.gfs2_sbd*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.backing_dev_info*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.page*, align 8
  store %struct.address_space* %0, %struct.address_space** %7, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %8, align 8
  store %struct.pagevec* %2, %struct.pagevec** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %22 = load %struct.address_space*, %struct.address_space** %7, align 8
  %23 = getelementptr inbounds %struct.address_space, %struct.address_space* %22, i32 0, i32 2
  %24 = load %struct.inode*, %struct.inode** %23, align 8
  store %struct.inode* %24, %struct.inode** %12, align 8
  %25 = load %struct.inode*, %struct.inode** %12, align 8
  %26 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %25)
  store %struct.gfs2_sbd* %26, %struct.gfs2_sbd** %13, align 8
  %27 = load %struct.inode*, %struct.inode** %12, align 8
  %28 = call i32 @i_size_read(%struct.inode* %27)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %31 = ashr i32 %29, %30
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %15, align 8
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %35 = sub nsw i32 %34, 1
  %36 = and i32 %33, %35
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %39 = load %struct.inode*, %struct.inode** %12, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sdiv i32 %38, %43
  %45 = mul nsw i32 %37, %44
  store i32 %45, i32* %17, align 4
  %46 = load %struct.address_space*, %struct.address_space** %7, align 8
  %47 = getelementptr inbounds %struct.address_space, %struct.address_space* %46, i32 0, i32 1
  %48 = load %struct.backing_dev_info*, %struct.backing_dev_info** %47, align 8
  store %struct.backing_dev_info* %48, %struct.backing_dev_info** %18, align 8
  %49 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  %50 = load i32, i32* %17, align 4
  %51 = load i32, i32* %17, align 4
  %52 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %49, i32 %50, i32 %51)
  store i32 %52, i32* %20, align 4
  %53 = load i32, i32* %20, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %5
  %56 = load i32, i32* %20, align 4
  store i32 %56, i32* %6, align 4
  br label %177

57:                                               ; preds = %5
  store i32 0, i32* %19, align 4
  br label %58

58:                                               ; preds = %170, %57
  %59 = load i32, i32* %19, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %173

62:                                               ; preds = %58
  %63 = load %struct.pagevec*, %struct.pagevec** %9, align 8
  %64 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %63, i32 0, i32 0
  %65 = load %struct.page**, %struct.page*** %64, align 8
  %66 = load i32, i32* %19, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.page*, %struct.page** %65, i64 %67
  %69 = load %struct.page*, %struct.page** %68, align 8
  store %struct.page* %69, %struct.page** %21, align 8
  %70 = load %struct.page*, %struct.page** %21, align 8
  %71 = call i32 @lock_page(%struct.page* %70)
  %72 = load %struct.page*, %struct.page** %21, align 8
  %73 = getelementptr inbounds %struct.page, %struct.page* %72, i32 0, i32 1
  %74 = load %struct.address_space*, %struct.address_space** %73, align 8
  %75 = load %struct.address_space*, %struct.address_space** %7, align 8
  %76 = icmp ne %struct.address_space* %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %62
  %81 = load %struct.page*, %struct.page** %21, align 8
  %82 = call i32 @unlock_page(%struct.page* %81)
  br label %170

83:                                               ; preds = %62
  %84 = load %struct.writeback_control*, %struct.writeback_control** %8, align 8
  %85 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %83
  %89 = load %struct.page*, %struct.page** %21, align 8
  %90 = getelementptr inbounds %struct.page, %struct.page* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %11, align 8
  %93 = icmp sgt i64 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  store i32 1, i32* %20, align 4
  %95 = load %struct.page*, %struct.page** %21, align 8
  %96 = call i32 @unlock_page(%struct.page* %95)
  br label %170

97:                                               ; preds = %88, %83
  %98 = load %struct.writeback_control*, %struct.writeback_control** %8, align 8
  %99 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @WB_SYNC_NONE, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load %struct.page*, %struct.page** %21, align 8
  %105 = call i32 @wait_on_page_writeback(%struct.page* %104)
  br label %106

106:                                              ; preds = %103, %97
  %107 = load %struct.page*, %struct.page** %21, align 8
  %108 = call i64 @PageWriteback(%struct.page* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = load %struct.page*, %struct.page** %21, align 8
  %112 = call i32 @clear_page_dirty_for_io(%struct.page* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %110, %106
  %115 = load %struct.page*, %struct.page** %21, align 8
  %116 = call i32 @unlock_page(%struct.page* %115)
  br label %170

117:                                              ; preds = %110
  %118 = load %struct.page*, %struct.page** %21, align 8
  %119 = getelementptr inbounds %struct.page, %struct.page* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* %15, align 8
  %122 = icmp sgt i64 %120, %121
  br i1 %122, label %132, label %123

123:                                              ; preds = %117
  %124 = load %struct.page*, %struct.page** %21, align 8
  %125 = getelementptr inbounds %struct.page, %struct.page* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %15, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %144

129:                                              ; preds = %123
  %130 = load i32, i32* %16, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %144, label %132

132:                                              ; preds = %129, %117
  %133 = load %struct.page*, %struct.page** %21, align 8
  %134 = getelementptr inbounds %struct.page, %struct.page* %133, i32 0, i32 1
  %135 = load %struct.address_space*, %struct.address_space** %134, align 8
  %136 = getelementptr inbounds %struct.address_space, %struct.address_space* %135, i32 0, i32 0
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32 (%struct.page*, i32)*, i32 (%struct.page*, i32)** %138, align 8
  %140 = load %struct.page*, %struct.page** %21, align 8
  %141 = call i32 %139(%struct.page* %140, i32 0)
  %142 = load %struct.page*, %struct.page** %21, align 8
  %143 = call i32 @unlock_page(%struct.page* %142)
  br label %170

144:                                              ; preds = %129, %123
  %145 = load %struct.page*, %struct.page** %21, align 8
  %146 = load %struct.writeback_control*, %struct.writeback_control** %8, align 8
  %147 = call i32 @__gfs2_jdata_writepage(%struct.page* %145, %struct.writeback_control* %146)
  store i32 %147, i32* %20, align 4
  %148 = load i32, i32* %20, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %156, label %150

150:                                              ; preds = %144
  %151 = load %struct.writeback_control*, %struct.writeback_control** %8, align 8
  %152 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %153, -1
  store i64 %154, i64* %152, align 8
  %155 = icmp sle i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %150, %144
  store i32 1, i32* %20, align 4
  br label %157

157:                                              ; preds = %156, %150
  %158 = load %struct.writeback_control*, %struct.writeback_control** %8, align 8
  %159 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %157
  %163 = load %struct.backing_dev_info*, %struct.backing_dev_info** %18, align 8
  %164 = call i64 @bdi_write_congested(%struct.backing_dev_info* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %162
  %167 = load %struct.writeback_control*, %struct.writeback_control** %8, align 8
  %168 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %167, i32 0, i32 2
  store i32 1, i32* %168, align 8
  store i32 1, i32* %20, align 4
  br label %169

169:                                              ; preds = %166, %162, %157
  br label %170

170:                                              ; preds = %169, %132, %114, %94, %80
  %171 = load i32, i32* %19, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %19, align 4
  br label %58

173:                                              ; preds = %58
  %174 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  %175 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %174)
  %176 = load i32, i32* %20, align 4
  store i32 %176, i32* %6, align 4
  br label %177

177:                                              ; preds = %173, %55
  %178 = load i32, i32* %6, align 4
  ret i32 %178
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i32, i32) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @wait_on_page_writeback(%struct.page*) #1

declare dso_local i64 @PageWriteback(%struct.page*) #1

declare dso_local i32 @clear_page_dirty_for_io(%struct.page*) #1

declare dso_local i32 @__gfs2_jdata_writepage(%struct.page*, %struct.writeback_control*) #1

declare dso_local i64 @bdi_write_congested(%struct.backing_dev_info*) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
