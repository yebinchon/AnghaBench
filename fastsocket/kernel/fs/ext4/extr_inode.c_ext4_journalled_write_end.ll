; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_journalled_write_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_journalled_write_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32, i64 }
%struct.page = type { i32 }
%struct.TYPE_2__ = type { i32 }

@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@write_end_fn = common dso_local global i32 0, align 4
@EXT4_STATE_JDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*)* @ext4_journalled_write_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_journalled_write_end(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page* %5, i8* %6) #0 {
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.inode*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.address_space* %1, %struct.address_space** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.page* %5, %struct.page** %13, align 8
  store i8* %6, i8** %14, align 8
  %23 = call i32* (...) @ext4_journal_current_handle()
  store i32* %23, i32** %15, align 8
  %24 = load %struct.address_space*, %struct.address_space** %9, align 8
  %25 = getelementptr inbounds %struct.address_space, %struct.address_space* %24, i32 0, i32 0
  %26 = load %struct.inode*, %struct.inode** %25, align 8
  store %struct.inode* %26, %struct.inode** %16, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %19, align 4
  %27 = load %struct.inode*, %struct.inode** %16, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @trace_ext4_journalled_write_end(%struct.inode* %27, i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %34 = sub nsw i32 %33, 1
  %35 = and i32 %32, %34
  store i32 %35, i32* %20, align 4
  %36 = load i32, i32* %20, align 4
  %37 = load i32, i32* %11, align 4
  %38 = add i32 %36, %37
  store i32 %38, i32* %21, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %7
  %43 = load %struct.page*, %struct.page** %13, align 8
  %44 = call i32 @PageUptodate(%struct.page* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  store i32 0, i32* %12, align 4
  br label %47

47:                                               ; preds = %46, %42
  %48 = load %struct.page*, %struct.page** %13, align 8
  %49 = load i32, i32* %20, align 4
  %50 = load i32, i32* %12, align 4
  %51 = add i32 %49, %50
  %52 = load i32, i32* %21, align 4
  %53 = call i32 @page_zero_new_buffers(%struct.page* %48, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %47, %7
  %55 = load i32*, i32** %15, align 8
  %56 = load %struct.page*, %struct.page** %13, align 8
  %57 = call i32 @page_buffers(%struct.page* %56)
  %58 = load i32, i32* %20, align 4
  %59 = load i32, i32* %21, align 4
  %60 = load i32, i32* @write_end_fn, align 4
  %61 = call i32 @walk_page_buffers(i32* %55, i32 %57, i32 %58, i32 %59, i32* %19, i32 %60)
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %19, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %54
  %65 = load %struct.page*, %struct.page** %13, align 8
  %66 = call i32 @SetPageUptodate(%struct.page* %65)
  br label %67

67:                                               ; preds = %64, %54
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %12, align 4
  %70 = add i32 %68, %69
  store i32 %70, i32* %22, align 4
  %71 = load i32, i32* %22, align 4
  %72 = load %struct.inode*, %struct.inode** %16, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp sgt i32 %71, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %67
  %77 = load %struct.inode*, %struct.inode** %16, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %12, align 4
  %80 = add i32 %78, %79
  %81 = call i32 @i_size_write(%struct.inode* %77, i32 %80)
  br label %82

82:                                               ; preds = %76, %67
  %83 = load %struct.inode*, %struct.inode** %16, align 8
  %84 = load i32, i32* @EXT4_STATE_JDATA, align 4
  %85 = call i32 @ext4_set_inode_state(%struct.inode* %83, i32 %84)
  %86 = load i32, i32* %22, align 4
  %87 = load %struct.inode*, %struct.inode** %16, align 8
  %88 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %87)
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp sgt i32 %86, %90
  br i1 %91, label %92, label %104

92:                                               ; preds = %82
  %93 = load %struct.inode*, %struct.inode** %16, align 8
  %94 = load i32, i32* %22, align 4
  %95 = call i32 @ext4_update_i_disksize(%struct.inode* %93, i32 %94)
  %96 = load i32*, i32** %15, align 8
  %97 = load %struct.inode*, %struct.inode** %16, align 8
  %98 = call i32 @ext4_mark_inode_dirty(i32* %96, %struct.inode* %97)
  store i32 %98, i32* %18, align 4
  %99 = load i32, i32* %17, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %92
  %102 = load i32, i32* %18, align 4
  store i32 %102, i32* %17, align 4
  br label %103

103:                                              ; preds = %101, %92
  br label %104

104:                                              ; preds = %103, %82
  %105 = load %struct.page*, %struct.page** %13, align 8
  %106 = call i32 @unlock_page(%struct.page* %105)
  %107 = load %struct.page*, %struct.page** %13, align 8
  %108 = call i32 @page_cache_release(%struct.page* %107)
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %11, align 4
  %111 = add i32 %109, %110
  %112 = load %struct.inode*, %struct.inode** %16, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp ugt i32 %111, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %104
  %117 = load %struct.inode*, %struct.inode** %16, align 8
  %118 = call i64 @ext4_can_truncate(%struct.inode* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = load i32*, i32** %15, align 8
  %122 = load %struct.inode*, %struct.inode** %16, align 8
  %123 = call i32 @ext4_orphan_add(i32* %121, %struct.inode* %122)
  br label %124

124:                                              ; preds = %120, %116, %104
  %125 = load i32*, i32** %15, align 8
  %126 = call i32 @ext4_journal_stop(i32* %125)
  store i32 %126, i32* %18, align 4
  %127 = load i32, i32* %17, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %124
  %130 = load i32, i32* %18, align 4
  store i32 %130, i32* %17, align 4
  br label %131

131:                                              ; preds = %129, %124
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %11, align 4
  %134 = add i32 %132, %133
  %135 = load %struct.inode*, %struct.inode** %16, align 8
  %136 = getelementptr inbounds %struct.inode, %struct.inode* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp ugt i32 %134, %137
  br i1 %138, label %139, label %150

139:                                              ; preds = %131
  %140 = load %struct.inode*, %struct.inode** %16, align 8
  %141 = call i32 @ext4_truncate_failed_write(%struct.inode* %140)
  %142 = load %struct.inode*, %struct.inode** %16, align 8
  %143 = getelementptr inbounds %struct.inode, %struct.inode* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %139
  %147 = load %struct.inode*, %struct.inode** %16, align 8
  %148 = call i32 @ext4_orphan_del(i32* null, %struct.inode* %147)
  br label %149

149:                                              ; preds = %146, %139
  br label %150

150:                                              ; preds = %149, %131
  %151 = load i32, i32* %17, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %150
  %154 = load i32, i32* %17, align 4
  br label %157

155:                                              ; preds = %150
  %156 = load i32, i32* %12, align 4
  br label %157

157:                                              ; preds = %155, %153
  %158 = phi i32 [ %154, %153 ], [ %156, %155 ]
  ret i32 %158
}

declare dso_local i32* @ext4_journal_current_handle(...) #1

declare dso_local i32 @trace_ext4_journalled_write_end(%struct.inode*, i32, i32, i32) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @page_zero_new_buffers(%struct.page*, i32, i32) #1

declare dso_local i32 @walk_page_buffers(i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @page_buffers(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @ext4_set_inode_state(%struct.inode*, i32) #1

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @ext4_update_i_disksize(%struct.inode*, i32) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i64 @ext4_can_truncate(%struct.inode*) #1

declare dso_local i32 @ext4_orphan_add(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

declare dso_local i32 @ext4_truncate_failed_write(%struct.inode*) #1

declare dso_local i32 @ext4_orphan_del(i32*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
