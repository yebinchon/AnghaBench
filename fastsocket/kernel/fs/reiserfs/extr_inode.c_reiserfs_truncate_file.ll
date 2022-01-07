; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_reiserfs_truncate_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_reiserfs_truncate_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.reiserfs_transaction_handle = type { i32 }
%struct.page = type { i32 }
%struct.buffer_head = type { i64 }

@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"clm-6001\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"grab_tail_page failed %d\00", align 1
@JOURNAL_PER_BALANCE_CNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reiserfs_truncate_file(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.reiserfs_transaction_handle, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %18 = sub nsw i32 %17, 1
  %19 = and i32 %16, %18
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %7, align 8
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  store %struct.page* null, %struct.page** %10, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %12, align 8
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = call i32 @reiserfs_write_lock(%struct.TYPE_6__* %28)
  %30 = load %struct.inode*, %struct.inode** %4, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %2
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = call i32 @grab_tail_page(%struct.inode* %35, %struct.page** %10, %struct.buffer_head** %12)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp ne i32 %40, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.inode*, %struct.inode** %4, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @reiserfs_error(%struct.TYPE_6__* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %44, %39
  store %struct.page* null, %struct.page** %10, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %12, align 8
  br label %51

51:                                               ; preds = %50, %34
  br label %52

52:                                               ; preds = %51, %2
  %53 = load %struct.inode*, %struct.inode** %4, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load i32, i32* @JOURNAL_PER_BALANCE_CNT, align 4
  %57 = mul nsw i32 %56, 2
  %58 = add nsw i32 %57, 1
  %59 = call i32 @journal_begin(%struct.reiserfs_transaction_handle* %6, %struct.TYPE_6__* %55, i32 %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  br label %143

63:                                               ; preds = %52
  %64 = load %struct.inode*, %struct.inode** %4, align 8
  %65 = call i32 @reiserfs_update_inode_transaction(%struct.inode* %64)
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.inode*, %struct.inode** %4, align 8
  %70 = call i32 @add_save_link(%struct.reiserfs_transaction_handle* %6, %struct.inode* %69, i32 1)
  br label %71

71:                                               ; preds = %68, %63
  %72 = load %struct.inode*, %struct.inode** %4, align 8
  %73 = load %struct.page*, %struct.page** %10, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @reiserfs_do_truncate(%struct.reiserfs_transaction_handle* %6, %struct.inode* %72, %struct.page* %73, i32 %74)
  store i32 %75, i32* %13, align 4
  %76 = load %struct.inode*, %struct.inode** %4, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 1
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = load i32, i32* @JOURNAL_PER_BALANCE_CNT, align 4
  %80 = mul nsw i32 %79, 2
  %81 = add nsw i32 %80, 1
  %82 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %6, %struct.TYPE_6__* %78, i32 %81)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %71
  br label %143

86:                                               ; preds = %71
  %87 = load i32, i32* %13, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load i32, i32* %13, align 4
  store i32 %90, i32* %11, align 4
  br label %143

91:                                               ; preds = %86
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = load %struct.inode*, %struct.inode** %4, align 8
  %96 = call i32 @remove_save_link(%struct.inode* %95, i32 1)
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %143

100:                                              ; preds = %94
  br label %101

101:                                              ; preds = %100, %91
  %102 = load %struct.page*, %struct.page** %10, align 8
  %103 = icmp ne %struct.page* %102, null
  br i1 %103, label %104, label %138

104:                                              ; preds = %101
  %105 = load i64, i64* %7, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sub i32 %106, 1
  %108 = zext i32 %107 to i64
  %109 = and i64 %105, %108
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %133

113:                                              ; preds = %104
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %9, align 4
  %116 = sub i32 %114, %115
  store i32 %116, i32* %9, align 4
  %117 = load %struct.page*, %struct.page** %10, align 8
  %118 = load i64, i64* %7, align 8
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @zero_user(%struct.page* %117, i64 %118, i32 %119)
  %121 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %122 = call i64 @buffer_mapped(%struct.buffer_head* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %113
  %125 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %126 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %131 = call i32 @mark_buffer_dirty(%struct.buffer_head* %130)
  br label %132

132:                                              ; preds = %129, %124, %113
  br label %133

133:                                              ; preds = %132, %104
  %134 = load %struct.page*, %struct.page** %10, align 8
  %135 = call i32 @unlock_page(%struct.page* %134)
  %136 = load %struct.page*, %struct.page** %10, align 8
  %137 = call i32 @page_cache_release(%struct.page* %136)
  br label %138

138:                                              ; preds = %133, %101
  %139 = load %struct.inode*, %struct.inode** %4, align 8
  %140 = getelementptr inbounds %struct.inode, %struct.inode* %139, i32 0, i32 1
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = call i32 @reiserfs_write_unlock(%struct.TYPE_6__* %141)
  store i32 0, i32* %3, align 4
  br label %157

143:                                              ; preds = %99, %89, %85, %62
  %144 = load %struct.page*, %struct.page** %10, align 8
  %145 = icmp ne %struct.page* %144, null
  br i1 %145, label %146, label %151

146:                                              ; preds = %143
  %147 = load %struct.page*, %struct.page** %10, align 8
  %148 = call i32 @unlock_page(%struct.page* %147)
  %149 = load %struct.page*, %struct.page** %10, align 8
  %150 = call i32 @page_cache_release(%struct.page* %149)
  br label %151

151:                                              ; preds = %146, %143
  %152 = load %struct.inode*, %struct.inode** %4, align 8
  %153 = getelementptr inbounds %struct.inode, %struct.inode* %152, i32 0, i32 1
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %153, align 8
  %155 = call i32 @reiserfs_write_unlock(%struct.TYPE_6__* %154)
  %156 = load i32, i32* %11, align 4
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %151, %138
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i32 @reiserfs_write_lock(%struct.TYPE_6__*) #1

declare dso_local i32 @grab_tail_page(%struct.inode*, %struct.page**, %struct.buffer_head**) #1

declare dso_local i32 @reiserfs_error(%struct.TYPE_6__*, i8*, i8*, i32) #1

declare dso_local i32 @journal_begin(%struct.reiserfs_transaction_handle*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @reiserfs_update_inode_transaction(%struct.inode*) #1

declare dso_local i32 @add_save_link(%struct.reiserfs_transaction_handle*, %struct.inode*, i32) #1

declare dso_local i32 @reiserfs_do_truncate(%struct.reiserfs_transaction_handle*, %struct.inode*, %struct.page*, i32) #1

declare dso_local i32 @journal_end(%struct.reiserfs_transaction_handle*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @remove_save_link(%struct.inode*, i32) #1

declare dso_local i32 @zero_user(%struct.page*, i64, i32) #1

declare dso_local i64 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @reiserfs_write_unlock(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
