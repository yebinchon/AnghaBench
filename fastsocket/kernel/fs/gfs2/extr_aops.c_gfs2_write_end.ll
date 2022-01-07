; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_aops.c_gfs2_write_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_aops.c_gfs2_write_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.gfs2_trans* }
%struct.gfs2_trans = type { i64 }
%struct.file = type { i32 }
%struct.address_space = type { i32 }
%struct.page = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.gfs2_inode = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.gfs2_sbd = type { %struct.inode*, i64, %struct.inode* }
%struct.buffer_head = type { i32 }

@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@I_DIRTY_DATASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*)* @gfs2_write_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_write_end(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.page*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.inode*, align 8
  %17 = alloca %struct.gfs2_inode*, align 8
  %18 = alloca %struct.gfs2_sbd*, align 8
  %19 = alloca %struct.gfs2_inode*, align 8
  %20 = alloca %struct.buffer_head*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.gfs2_trans*, align 8
  store %struct.file* %0, %struct.file** %9, align 8
  store %struct.address_space* %1, %struct.address_space** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.page* %5, %struct.page** %14, align 8
  store i8* %6, i8** %15, align 8
  %25 = load %struct.page*, %struct.page** %14, align 8
  %26 = getelementptr inbounds %struct.page, %struct.page* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.inode*, %struct.inode** %28, align 8
  store %struct.inode* %29, %struct.inode** %16, align 8
  %30 = load %struct.inode*, %struct.inode** %16, align 8
  %31 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %30)
  store %struct.gfs2_inode* %31, %struct.gfs2_inode** %17, align 8
  %32 = load %struct.inode*, %struct.inode** %16, align 8
  %33 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %32)
  store %struct.gfs2_sbd* %33, %struct.gfs2_sbd** %18, align 8
  %34 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %18, align 8
  %35 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %34, i32 0, i32 2
  %36 = load %struct.inode*, %struct.inode** %35, align 8
  %37 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %36)
  store %struct.gfs2_inode* %37, %struct.gfs2_inode** %19, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %40 = sub nsw i32 %39, 1
  %41 = and i32 %38, %40
  store i32 %41, i32* %21, align 4
  %42 = load i32, i32* %21, align 4
  %43 = load i32, i32* %12, align 4
  %44 = add i32 %42, %43
  store i32 %44, i32* %22, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.gfs2_trans*, %struct.gfs2_trans** %46, align 8
  store %struct.gfs2_trans* %47, %struct.gfs2_trans** %24, align 8
  %48 = load %struct.gfs2_trans*, %struct.gfs2_trans** %24, align 8
  %49 = icmp ne %struct.gfs2_trans* %48, null
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i32 @BUG_ON(i32 %51)
  %53 = load %struct.gfs2_inode*, %struct.gfs2_inode** %17, align 8
  %54 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32* @gfs2_glock_is_locked_by_me(i32 %55)
  %57 = icmp eq i32* %56, null
  %58 = zext i1 %57 to i32
  %59 = call i32 @BUG_ON(i32 %58)
  %60 = load %struct.gfs2_inode*, %struct.gfs2_inode** %17, align 8
  %61 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %60, %struct.buffer_head** %20)
  store i32 %61, i32* %23, align 4
  %62 = load i32, i32* %23, align 4
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %7
  %66 = load %struct.page*, %struct.page** %14, align 8
  %67 = call i32 @unlock_page(%struct.page* %66)
  %68 = load %struct.page*, %struct.page** %14, align 8
  %69 = call i32 @page_cache_release(%struct.page* %68)
  br label %129

70:                                               ; preds = %7
  %71 = load %struct.gfs2_inode*, %struct.gfs2_inode** %17, align 8
  %72 = call i64 @gfs2_is_stuffed(%struct.gfs2_inode* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %70
  %75 = load %struct.inode*, %struct.inode** %16, align 8
  %76 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %13, align 4
  %80 = load %struct.page*, %struct.page** %14, align 8
  %81 = call i32 @gfs2_stuffed_write_end(%struct.inode* %75, %struct.buffer_head* %76, i32 %77, i32 %78, i32 %79, %struct.page* %80)
  store i32 %81, i32* %8, align 4
  br label %164

82:                                               ; preds = %70
  %83 = load %struct.gfs2_inode*, %struct.gfs2_inode** %17, align 8
  %84 = call i32 @gfs2_is_writeback(%struct.gfs2_inode* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %82
  %87 = load %struct.gfs2_inode*, %struct.gfs2_inode** %17, align 8
  %88 = load %struct.page*, %struct.page** %14, align 8
  %89 = load i32, i32* %21, align 4
  %90 = load i32, i32* %22, align 4
  %91 = call i32 @gfs2_page_add_databufs(%struct.gfs2_inode* %87, %struct.page* %88, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %86, %82
  %93 = load %struct.file*, %struct.file** %9, align 8
  %94 = load %struct.address_space*, %struct.address_space** %10, align 8
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %13, align 4
  %98 = load %struct.page*, %struct.page** %14, align 8
  %99 = load i8*, i8** %15, align 8
  %100 = call i32 @generic_write_end(%struct.file* %93, %struct.address_space* %94, i32 %95, i32 %96, i32 %97, %struct.page* %98, i8* %99)
  store i32 %100, i32* %23, align 4
  %101 = load %struct.gfs2_trans*, %struct.gfs2_trans** %24, align 8
  %102 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %92
  %106 = load %struct.inode*, %struct.inode** %16, align 8
  %107 = load i32, i32* @I_DIRTY_DATASYNC, align 4
  %108 = call i32 @__mark_inode_dirty(%struct.inode* %106, i32 %107)
  br label %115

109:                                              ; preds = %92
  %110 = load %struct.gfs2_inode*, %struct.gfs2_inode** %17, align 8
  %111 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %114 = call i32 @gfs2_trans_add_meta(i32 %112, %struct.buffer_head* %113)
  br label %115

115:                                              ; preds = %109, %105
  %116 = load %struct.inode*, %struct.inode** %16, align 8
  %117 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %18, align 8
  %118 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %117, i32 0, i32 0
  %119 = load %struct.inode*, %struct.inode** %118, align 8
  %120 = icmp eq %struct.inode* %116, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %115
  %122 = load %struct.inode*, %struct.inode** %16, align 8
  %123 = call i32 @adjust_fs_space(%struct.inode* %122)
  %124 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %18, align 8
  %125 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %124, i32 0, i32 1
  store i64 0, i64* %125, align 8
  br label %126

126:                                              ; preds = %121, %115
  %127 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %128 = call i32 @brelse(%struct.buffer_head* %127)
  br label %129

129:                                              ; preds = %126, %65
  %130 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %18, align 8
  %131 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %130)
  %132 = load %struct.gfs2_inode*, %struct.gfs2_inode** %17, align 8
  %133 = call i32 @gfs2_inplace_release(%struct.gfs2_inode* %132)
  %134 = load %struct.gfs2_inode*, %struct.gfs2_inode** %17, align 8
  %135 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %134, i32 0, i32 1
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %129
  %141 = load %struct.gfs2_inode*, %struct.gfs2_inode** %17, align 8
  %142 = call i32 @gfs2_quota_unlock(%struct.gfs2_inode* %141)
  br label %143

143:                                              ; preds = %140, %129
  %144 = load %struct.inode*, %struct.inode** %16, align 8
  %145 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %18, align 8
  %146 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %145, i32 0, i32 0
  %147 = load %struct.inode*, %struct.inode** %146, align 8
  %148 = icmp eq %struct.inode* %144, %147
  br i1 %148, label %149, label %156

149:                                              ; preds = %143
  %150 = load %struct.gfs2_inode*, %struct.gfs2_inode** %19, align 8
  %151 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %150, i32 0, i32 0
  %152 = call i32 @gfs2_glock_dq(i32* %151)
  %153 = load %struct.gfs2_inode*, %struct.gfs2_inode** %19, align 8
  %154 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %153, i32 0, i32 0
  %155 = call i32 @gfs2_holder_uninit(i32* %154)
  br label %156

156:                                              ; preds = %149, %143
  %157 = load %struct.gfs2_inode*, %struct.gfs2_inode** %17, align 8
  %158 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %157, i32 0, i32 0
  %159 = call i32 @gfs2_glock_dq(i32* %158)
  %160 = load %struct.gfs2_inode*, %struct.gfs2_inode** %17, align 8
  %161 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %160, i32 0, i32 0
  %162 = call i32 @gfs2_holder_uninit(i32* %161)
  %163 = load i32, i32* %23, align 4
  store i32 %163, i32* %8, align 4
  br label %164

164:                                              ; preds = %156, %74
  %165 = load i32, i32* %8, align 4
  ret i32 %165
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32* @gfs2_glock_is_locked_by_me(i32) #1

declare dso_local i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i64 @gfs2_is_stuffed(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_stuffed_write_end(%struct.inode*, %struct.buffer_head*, i32, i32, i32, %struct.page*) #1

declare dso_local i32 @gfs2_is_writeback(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_page_add_databufs(%struct.gfs2_inode*, %struct.page*, i32, i32) #1

declare dso_local i32 @generic_write_end(%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*) #1

declare dso_local i32 @__mark_inode_dirty(%struct.inode*, i32) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local i32 @adjust_fs_space(%struct.inode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_inplace_release(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_quota_unlock(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_glock_dq(i32*) #1

declare dso_local i32 @gfs2_holder_uninit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
