; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_aops.c_gfs2_stuffed_write_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_aops.c_gfs2_stuffed_write_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i8*, i32 }
%struct.page = type { i32 }
%struct.gfs2_inode = type { i32 }
%struct.gfs2_sbd = type { %struct.inode*, i64, %struct.inode* }

@KM_USER0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, i32, i32, i32, %struct.page*)* @gfs2_stuffed_write_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_stuffed_write_end(%struct.inode* %0, %struct.buffer_head* %1, i32 %2, i32 %3, i32 %4, %struct.page* %5) #0 {
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.page*, align 8
  %13 = alloca %struct.gfs2_inode*, align 8
  %14 = alloca %struct.gfs2_sbd*, align 8
  %15 = alloca %struct.gfs2_inode*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.page* %5, %struct.page** %12, align 8
  %19 = load %struct.inode*, %struct.inode** %7, align 8
  %20 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %19)
  store %struct.gfs2_inode* %20, %struct.gfs2_inode** %13, align 8
  %21 = load %struct.inode*, %struct.inode** %7, align 8
  %22 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %21)
  store %struct.gfs2_sbd* %22, %struct.gfs2_sbd** %14, align 8
  %23 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %14, align 8
  %24 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %23, i32 0, i32 2
  %25 = load %struct.inode*, %struct.inode** %24, align 8
  %26 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %25)
  store %struct.gfs2_inode* %26, %struct.gfs2_inode** %15, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %11, align 4
  %29 = add i32 %27, %28
  store i32 %29, i32* %16, align 4
  %30 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %31 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 4
  store i8* %33, i8** %18, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = add i32 %34, %35
  %37 = zext i32 %36 to i64
  %38 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %39 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = sub i64 %41, 4
  %43 = icmp ugt i64 %37, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @BUG_ON(i32 %44)
  %46 = load %struct.page*, %struct.page** %12, align 8
  %47 = load i32, i32* @KM_USER0, align 4
  %48 = call i8* @kmap_atomic(%struct.page* %46, i32 %47)
  store i8* %48, i8** %17, align 8
  %49 = load i8*, i8** %18, align 8
  %50 = load i32, i32* %9, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8*, i8** %17, align 8
  %54 = load i32, i32* %9, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr i8, i8* %53, i64 %55
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @memcpy(i8* %52, i8* %56, i32 %57)
  %59 = load i8*, i8** %17, align 8
  %60 = load i32, i32* %9, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr i8, i8* %59, i64 %61
  %63 = load i32, i32* %11, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr i8, i8* %62, i64 %64
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = sub i32 %66, %67
  %69 = call i32 @memset(i8* %65, i32 0, i32 %68)
  %70 = load %struct.page*, %struct.page** %12, align 8
  %71 = call i32 @flush_dcache_page(%struct.page* %70)
  %72 = load i8*, i8** %17, align 8
  %73 = load i32, i32* @KM_USER0, align 4
  %74 = call i32 @kunmap_atomic(i8* %72, i32 %73)
  %75 = load %struct.page*, %struct.page** %12, align 8
  %76 = call i32 @PageUptodate(%struct.page* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %6
  %79 = load %struct.page*, %struct.page** %12, align 8
  %80 = call i32 @SetPageUptodate(%struct.page* %79)
  br label %81

81:                                               ; preds = %78, %6
  %82 = load %struct.page*, %struct.page** %12, align 8
  %83 = call i32 @unlock_page(%struct.page* %82)
  %84 = load %struct.page*, %struct.page** %12, align 8
  %85 = call i32 @page_cache_release(%struct.page* %84)
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %81
  %89 = load %struct.inode*, %struct.inode** %7, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %16, align 4
  %93 = icmp ult i32 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load %struct.inode*, %struct.inode** %7, align 8
  %96 = load i32, i32* %16, align 4
  %97 = call i32 @i_size_write(%struct.inode* %95, i32 %96)
  br label %98

98:                                               ; preds = %94, %88
  %99 = load %struct.inode*, %struct.inode** %7, align 8
  %100 = call i32 @mark_inode_dirty(%struct.inode* %99)
  br label %101

101:                                              ; preds = %98, %81
  %102 = load %struct.inode*, %struct.inode** %7, align 8
  %103 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %14, align 8
  %104 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %103, i32 0, i32 0
  %105 = load %struct.inode*, %struct.inode** %104, align 8
  %106 = icmp eq %struct.inode* %102, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %101
  %108 = load %struct.inode*, %struct.inode** %7, align 8
  %109 = call i32 @adjust_fs_space(%struct.inode* %108)
  %110 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %14, align 8
  %111 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %110, i32 0, i32 1
  store i64 0, i64* %111, align 8
  br label %112

112:                                              ; preds = %107, %101
  %113 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %114 = call i32 @brelse(%struct.buffer_head* %113)
  %115 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %14, align 8
  %116 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %115)
  %117 = load %struct.inode*, %struct.inode** %7, align 8
  %118 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %14, align 8
  %119 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %118, i32 0, i32 0
  %120 = load %struct.inode*, %struct.inode** %119, align 8
  %121 = icmp eq %struct.inode* %117, %120
  br i1 %121, label %122, label %129

122:                                              ; preds = %112
  %123 = load %struct.gfs2_inode*, %struct.gfs2_inode** %15, align 8
  %124 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %123, i32 0, i32 0
  %125 = call i32 @gfs2_glock_dq(i32* %124)
  %126 = load %struct.gfs2_inode*, %struct.gfs2_inode** %15, align 8
  %127 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %126, i32 0, i32 0
  %128 = call i32 @gfs2_holder_uninit(i32* %127)
  br label %129

129:                                              ; preds = %122, %112
  %130 = load %struct.gfs2_inode*, %struct.gfs2_inode** %13, align 8
  %131 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %130, i32 0, i32 0
  %132 = call i32 @gfs2_glock_dq(i32* %131)
  %133 = load %struct.gfs2_inode*, %struct.gfs2_inode** %13, align 8
  %134 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %133, i32 0, i32 0
  %135 = call i32 @gfs2_holder_uninit(i32* %134)
  %136 = load i32, i32* %11, align 4
  ret i32 %136
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8* @kmap_atomic(%struct.page*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @adjust_fs_space(%struct.inode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_glock_dq(i32*) #1

declare dso_local i32 @gfs2_holder_uninit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
