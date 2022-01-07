; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_write_begin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_write_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32, i32 }
%struct.page = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ext3_journalled_get_block = common dso_local global i32 0, align 4
@do_journal_get_write_access = common dso_local global i32 0, align 4
@ext3_get_block = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page**, i8**)* @ext3_write_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext3_write_begin(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page** %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.page**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca %struct.inode*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.page*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %9, align 8
  store %struct.address_space* %1, %struct.address_space** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.page** %5, %struct.page*** %14, align 8
  store i8** %6, i8*** %15, align 8
  %25 = load %struct.address_space*, %struct.address_space** %10, align 8
  %26 = getelementptr inbounds %struct.address_space, %struct.address_space* %25, i32 0, i32 0
  %27 = load %struct.inode*, %struct.inode** %26, align 8
  store %struct.inode* %27, %struct.inode** %16, align 8
  store i32 0, i32* %19, align 4
  %28 = load %struct.inode*, %struct.inode** %16, align 8
  %29 = call i32 @ext3_writepage_trans_blocks(%struct.inode* %28)
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %24, align 4
  %31 = load %struct.inode*, %struct.inode** %16, align 8
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @trace_ext3_write_begin(%struct.inode* %31, i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %38 = ashr i32 %36, %37
  store i32 %38, i32* %21, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %41 = sub nsw i32 %40, 1
  %42 = and i32 %39, %41
  store i32 %42, i32* %22, align 4
  %43 = load i32, i32* %22, align 4
  %44 = load i32, i32* %12, align 4
  %45 = add i32 %43, %44
  store i32 %45, i32* %23, align 4
  br label %46

46:                                               ; preds = %156, %7
  %47 = load %struct.address_space*, %struct.address_space** %10, align 8
  %48 = load i32, i32* %21, align 4
  %49 = load i32, i32* %13, align 4
  %50 = call %struct.page* @grab_cache_page_write_begin(%struct.address_space* %47, i32 %48, i32 %49)
  store %struct.page* %50, %struct.page** %20, align 8
  %51 = load %struct.page*, %struct.page** %20, align 8
  %52 = icmp ne %struct.page* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %8, align 4
  br label %160

56:                                               ; preds = %46
  %57 = load %struct.page*, %struct.page** %20, align 8
  %58 = load %struct.page**, %struct.page*** %14, align 8
  store %struct.page* %57, %struct.page** %58, align 8
  %59 = load %struct.inode*, %struct.inode** %16, align 8
  %60 = load i32, i32* %24, align 4
  %61 = call i32* @ext3_journal_start(%struct.inode* %59, i32 %60)
  store i32* %61, i32** %18, align 8
  %62 = load i32*, i32** %18, align 8
  %63 = call i64 @IS_ERR(i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %56
  %66 = load %struct.page*, %struct.page** %20, align 8
  %67 = call i32 @unlock_page(%struct.page* %66)
  %68 = load %struct.page*, %struct.page** %20, align 8
  %69 = call i32 @page_cache_release(%struct.page* %68)
  %70 = load i32*, i32** %18, align 8
  %71 = call i32 @PTR_ERR(i32* %70)
  store i32 %71, i32* %17, align 4
  br label %158

72:                                               ; preds = %56
  %73 = load %struct.inode*, %struct.inode** %16, align 8
  %74 = call i64 @ext3_should_journal_data(%struct.inode* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %97

76:                                               ; preds = %72
  %77 = load %struct.file*, %struct.file** %9, align 8
  %78 = load %struct.address_space*, %struct.address_space** %10, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %13, align 4
  %82 = load %struct.page**, %struct.page*** %14, align 8
  %83 = load i8**, i8*** %15, align 8
  %84 = load i32, i32* @ext3_journalled_get_block, align 4
  %85 = call i32 @block_write_begin(%struct.file* %77, %struct.address_space* %78, i32 %79, i32 %80, i32 %81, %struct.page** %82, i8** %83, i32 %84)
  store i32 %85, i32* %17, align 4
  %86 = load i32, i32* %17, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %76
  br label %108

89:                                               ; preds = %76
  %90 = load i32*, i32** %18, align 8
  %91 = load %struct.page*, %struct.page** %20, align 8
  %92 = call i32 @page_buffers(%struct.page* %91)
  %93 = load i32, i32* %22, align 4
  %94 = load i32, i32* %23, align 4
  %95 = load i32, i32* @do_journal_get_write_access, align 4
  %96 = call i32 @walk_page_buffers(i32* %90, i32 %92, i32 %93, i32 %94, i32* null, i32 %95)
  store i32 %96, i32* %17, align 4
  br label %107

97:                                               ; preds = %72
  %98 = load %struct.file*, %struct.file** %9, align 8
  %99 = load %struct.address_space*, %struct.address_space** %10, align 8
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %13, align 4
  %103 = load %struct.page**, %struct.page*** %14, align 8
  %104 = load i8**, i8*** %15, align 8
  %105 = load i32, i32* @ext3_get_block, align 4
  %106 = call i32 @block_write_begin(%struct.file* %98, %struct.address_space* %99, i32 %100, i32 %101, i32 %102, %struct.page** %103, i8** %104, i32 %105)
  store i32 %106, i32* %17, align 4
  br label %107

107:                                              ; preds = %97, %89
  br label %108

108:                                              ; preds = %107, %88
  %109 = load i32, i32* %17, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %145

111:                                              ; preds = %108
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %12, align 4
  %114 = add i32 %112, %113
  %115 = load %struct.inode*, %struct.inode** %16, align 8
  %116 = getelementptr inbounds %struct.inode, %struct.inode* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp ugt i32 %114, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %111
  %120 = load %struct.inode*, %struct.inode** %16, align 8
  %121 = call i64 @ext3_can_truncate(%struct.inode* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = load i32*, i32** %18, align 8
  %125 = load %struct.inode*, %struct.inode** %16, align 8
  %126 = call i32 @ext3_orphan_add(i32* %124, %struct.inode* %125)
  br label %127

127:                                              ; preds = %123, %119, %111
  %128 = load i32*, i32** %18, align 8
  %129 = call i32 @ext3_journal_stop(i32* %128)
  %130 = load %struct.page*, %struct.page** %20, align 8
  %131 = call i32 @unlock_page(%struct.page* %130)
  %132 = load %struct.page*, %struct.page** %20, align 8
  %133 = call i32 @page_cache_release(%struct.page* %132)
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* %12, align 4
  %136 = add i32 %134, %135
  %137 = load %struct.inode*, %struct.inode** %16, align 8
  %138 = getelementptr inbounds %struct.inode, %struct.inode* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = icmp ugt i32 %136, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %127
  %142 = load %struct.inode*, %struct.inode** %16, align 8
  %143 = call i32 @ext3_truncate_failed_write(%struct.inode* %142)
  br label %144

144:                                              ; preds = %141, %127
  br label %145

145:                                              ; preds = %144, %108
  %146 = load i32, i32* %17, align 4
  %147 = load i32, i32* @ENOSPC, align 4
  %148 = sub nsw i32 0, %147
  %149 = icmp eq i32 %146, %148
  br i1 %149, label %150, label %157

150:                                              ; preds = %145
  %151 = load %struct.inode*, %struct.inode** %16, align 8
  %152 = getelementptr inbounds %struct.inode, %struct.inode* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i64 @ext3_should_retry_alloc(i32 %153, i32* %19)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %150
  br label %46

157:                                              ; preds = %150, %145
  br label %158

158:                                              ; preds = %157, %65
  %159 = load i32, i32* %17, align 4
  store i32 %159, i32* %8, align 4
  br label %160

160:                                              ; preds = %158, %53
  %161 = load i32, i32* %8, align 4
  ret i32 %161
}

declare dso_local i32 @ext3_writepage_trans_blocks(%struct.inode*) #1

declare dso_local i32 @trace_ext3_write_begin(%struct.inode*, i32, i32, i32) #1

declare dso_local %struct.page* @grab_cache_page_write_begin(%struct.address_space*, i32, i32) #1

declare dso_local i32* @ext3_journal_start(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i64 @ext3_should_journal_data(%struct.inode*) #1

declare dso_local i32 @block_write_begin(%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page**, i8**, i32) #1

declare dso_local i32 @walk_page_buffers(i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @page_buffers(%struct.page*) #1

declare dso_local i64 @ext3_can_truncate(%struct.inode*) #1

declare dso_local i32 @ext3_orphan_add(i32*, %struct.inode*) #1

declare dso_local i32 @ext3_journal_stop(i32*) #1

declare dso_local i32 @ext3_truncate_failed_write(%struct.inode*) #1

declare dso_local i64 @ext3_should_retry_alloc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
