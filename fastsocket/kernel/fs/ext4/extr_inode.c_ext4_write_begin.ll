; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_write_begin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_write_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32, i32, i64 }
%struct.page = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@AOP_FLAG_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ext4_get_block = common dso_local global i32 0, align 4
@ext4_journalled_get_block = common dso_local global i32 0, align 4
@do_journal_get_write_access = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page**, i8**)* @ext4_write_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_write_begin(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page** %5, i8** %6) #0 {
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page**, align 8
  %14 = alloca i8**, align 8
  %15 = alloca %struct.inode*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.page*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.address_space* %1, %struct.address_space** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.page** %5, %struct.page*** %13, align 8
  store i8** %6, i8*** %14, align 8
  %24 = load %struct.address_space*, %struct.address_space** %9, align 8
  %25 = getelementptr inbounds %struct.address_space, %struct.address_space* %24, i32 0, i32 0
  %26 = load %struct.inode*, %struct.inode** %25, align 8
  store %struct.inode* %26, %struct.inode** %15, align 8
  store i32 0, i32* %19, align 4
  %27 = load %struct.inode*, %struct.inode** %15, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @trace_ext4_write_begin(%struct.inode* %27, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.inode*, %struct.inode** %15, align 8
  %33 = call i32 @ext4_writepage_trans_blocks(%struct.inode* %32)
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %37 = ashr i32 %35, %36
  store i32 %37, i32* %21, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %40 = sub nsw i32 %39, 1
  %41 = and i32 %38, %40
  store i32 %41, i32* %22, align 4
  %42 = load i32, i32* %22, align 4
  %43 = load i32, i32* %11, align 4
  %44 = add i32 %42, %43
  store i32 %44, i32* %23, align 4
  br label %45

45:                                               ; preds = %163, %7
  %46 = load %struct.inode*, %struct.inode** %15, align 8
  %47 = load i32, i32* %17, align 4
  %48 = call i32* @ext4_journal_start(%struct.inode* %46, i32 %47)
  store i32* %48, i32** %18, align 8
  %49 = load i32*, i32** %18, align 8
  %50 = call i64 @IS_ERR(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i32*, i32** %18, align 8
  %54 = call i32 @PTR_ERR(i32* %53)
  store i32 %54, i32* %16, align 4
  br label %165

55:                                               ; preds = %45
  %56 = load i32, i32* @AOP_FLAG_NOFS, align 4
  %57 = load i32, i32* %12, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %12, align 4
  %59 = load %struct.address_space*, %struct.address_space** %9, align 8
  %60 = load i32, i32* %21, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call %struct.page* @grab_cache_page_write_begin(%struct.address_space* %59, i32 %60, i32 %61)
  store %struct.page* %62, %struct.page** %20, align 8
  %63 = load %struct.page*, %struct.page** %20, align 8
  %64 = icmp ne %struct.page* %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %55
  %66 = load i32*, i32** %18, align 8
  %67 = call i32 @ext4_journal_stop(i32* %66)
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %16, align 4
  br label %165

70:                                               ; preds = %55
  %71 = load %struct.page*, %struct.page** %20, align 8
  %72 = load %struct.page**, %struct.page*** %13, align 8
  store %struct.page* %71, %struct.page** %72, align 8
  %73 = load %struct.inode*, %struct.inode** %15, align 8
  %74 = call i32 @ext4_should_journal_data(%struct.inode* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %70
  %77 = load %struct.file*, %struct.file** %8, align 8
  %78 = load %struct.address_space*, %struct.address_space** %9, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load %struct.page**, %struct.page*** %13, align 8
  %83 = load i8**, i8*** %14, align 8
  %84 = load i32, i32* @ext4_get_block, align 4
  %85 = call i32 @block_write_begin(%struct.file* %77, %struct.address_space* %78, i32 %79, i32 %80, i32 %81, %struct.page** %82, i8** %83, i32 %84)
  store i32 %85, i32* %16, align 4
  br label %107

86:                                               ; preds = %70
  %87 = load %struct.file*, %struct.file** %8, align 8
  %88 = load %struct.address_space*, %struct.address_space** %9, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load %struct.page**, %struct.page*** %13, align 8
  %93 = load i8**, i8*** %14, align 8
  %94 = load i32, i32* @ext4_journalled_get_block, align 4
  %95 = call i32 @block_write_begin(%struct.file* %87, %struct.address_space* %88, i32 %89, i32 %90, i32 %91, %struct.page** %92, i8** %93, i32 %94)
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %16, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %106, label %98

98:                                               ; preds = %86
  %99 = load i32*, i32** %18, align 8
  %100 = load %struct.page*, %struct.page** %20, align 8
  %101 = call i32 @page_buffers(%struct.page* %100)
  %102 = load i32, i32* %22, align 4
  %103 = load i32, i32* %23, align 4
  %104 = load i32, i32* @do_journal_get_write_access, align 4
  %105 = call i32 @walk_page_buffers(i32* %99, i32 %101, i32 %102, i32 %103, i32* null, i32 %104)
  store i32 %105, i32* %16, align 4
  br label %106

106:                                              ; preds = %98, %86
  br label %107

107:                                              ; preds = %106, %76
  %108 = load i32, i32* %16, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %152

110:                                              ; preds = %107
  %111 = load %struct.page*, %struct.page** %20, align 8
  %112 = call i32 @unlock_page(%struct.page* %111)
  %113 = load %struct.page*, %struct.page** %20, align 8
  %114 = call i32 @page_cache_release(%struct.page* %113)
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %11, align 4
  %117 = add i32 %115, %116
  %118 = load %struct.inode*, %struct.inode** %15, align 8
  %119 = getelementptr inbounds %struct.inode, %struct.inode* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp ugt i32 %117, %120
  br i1 %121, label %122, label %130

122:                                              ; preds = %110
  %123 = load %struct.inode*, %struct.inode** %15, align 8
  %124 = call i64 @ext4_can_truncate(%struct.inode* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = load i32*, i32** %18, align 8
  %128 = load %struct.inode*, %struct.inode** %15, align 8
  %129 = call i32 @ext4_orphan_add(i32* %127, %struct.inode* %128)
  br label %130

130:                                              ; preds = %126, %122, %110
  %131 = load i32*, i32** %18, align 8
  %132 = call i32 @ext4_journal_stop(i32* %131)
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* %11, align 4
  %135 = add i32 %133, %134
  %136 = load %struct.inode*, %struct.inode** %15, align 8
  %137 = getelementptr inbounds %struct.inode, %struct.inode* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp ugt i32 %135, %138
  br i1 %139, label %140, label %151

140:                                              ; preds = %130
  %141 = load %struct.inode*, %struct.inode** %15, align 8
  %142 = call i32 @ext4_truncate_failed_write(%struct.inode* %141)
  %143 = load %struct.inode*, %struct.inode** %15, align 8
  %144 = getelementptr inbounds %struct.inode, %struct.inode* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %140
  %148 = load %struct.inode*, %struct.inode** %15, align 8
  %149 = call i32 @ext4_orphan_del(i32* null, %struct.inode* %148)
  br label %150

150:                                              ; preds = %147, %140
  br label %151

151:                                              ; preds = %150, %130
  br label %152

152:                                              ; preds = %151, %107
  %153 = load i32, i32* %16, align 4
  %154 = load i32, i32* @ENOSPC, align 4
  %155 = sub nsw i32 0, %154
  %156 = icmp eq i32 %153, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %152
  %158 = load %struct.inode*, %struct.inode** %15, align 8
  %159 = getelementptr inbounds %struct.inode, %struct.inode* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i64 @ext4_should_retry_alloc(i32 %160, i32* %19)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %157
  br label %45

164:                                              ; preds = %157, %152
  br label %165

165:                                              ; preds = %164, %65, %52
  %166 = load i32, i32* %16, align 4
  ret i32 %166
}

declare dso_local i32 @trace_ext4_write_begin(%struct.inode*, i32, i32, i32) #1

declare dso_local i32 @ext4_writepage_trans_blocks(%struct.inode*) #1

declare dso_local i32* @ext4_journal_start(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local %struct.page* @grab_cache_page_write_begin(%struct.address_space*, i32, i32) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

declare dso_local i32 @ext4_should_journal_data(%struct.inode*) #1

declare dso_local i32 @block_write_begin(%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page**, i8**, i32) #1

declare dso_local i32 @walk_page_buffers(i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @page_buffers(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i64 @ext4_can_truncate(%struct.inode*) #1

declare dso_local i32 @ext4_orphan_add(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_truncate_failed_write(%struct.inode*) #1

declare dso_local i32 @ext4_orphan_del(i32*, %struct.inode*) #1

declare dso_local i64 @ext4_should_retry_alloc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
