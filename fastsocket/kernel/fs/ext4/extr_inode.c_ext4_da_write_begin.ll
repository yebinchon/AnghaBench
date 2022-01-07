; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_da_write_begin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_da_write_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32, i32 }
%struct.page = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@FALL_BACK_TO_NONDELALLOC = common dso_local global i64 0, align 8
@AOP_FLAG_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ext4_da_get_block_prep = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page**, i8**)* @ext4_da_write_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_da_write_begin(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page** %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.page**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.page*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.inode*, align 8
  %23 = alloca i32*, align 8
  store %struct.file* %0, %struct.file** %9, align 8
  store %struct.address_space* %1, %struct.address_space** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.page** %5, %struct.page*** %14, align 8
  store i8** %6, i8*** %15, align 8
  store i32 0, i32* %17, align 4
  %24 = load %struct.address_space*, %struct.address_space** %10, align 8
  %25 = getelementptr inbounds %struct.address_space, %struct.address_space* %24, i32 0, i32 0
  %26 = load %struct.inode*, %struct.inode** %25, align 8
  store %struct.inode* %26, %struct.inode** %22, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %29 = ashr i32 %27, %28
  store i32 %29, i32* %19, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %32 = sub nsw i32 %31, 1
  %33 = and i32 %30, %32
  store i32 %33, i32* %20, align 4
  %34 = load i32, i32* %20, align 4
  %35 = load i32, i32* %12, align 4
  %36 = add i32 %34, %35
  store i32 %36, i32* %21, align 4
  %37 = load %struct.inode*, %struct.inode** %22, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @ext4_nonda_switch(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %7
  %43 = load i64, i64* @FALL_BACK_TO_NONDELALLOC, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = load i8**, i8*** %15, align 8
  store i8* %44, i8** %45, align 8
  %46 = load %struct.file*, %struct.file** %9, align 8
  %47 = load %struct.address_space*, %struct.address_space** %10, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load %struct.page**, %struct.page*** %14, align 8
  %52 = load i8**, i8*** %15, align 8
  %53 = call i32 @ext4_write_begin(%struct.file* %46, %struct.address_space* %47, i32 %48, i32 %49, i32 %50, %struct.page** %51, i8** %52)
  store i32 %53, i32* %8, align 4
  br label %132

54:                                               ; preds = %7
  %55 = load i8**, i8*** %15, align 8
  store i8* null, i8** %55, align 8
  %56 = load %struct.inode*, %struct.inode** %22, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @trace_ext4_da_write_begin(%struct.inode* %56, i32 %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %128, %54
  %62 = load %struct.inode*, %struct.inode** %22, align 8
  %63 = call i32* @ext4_journal_start(%struct.inode* %62, i32 1)
  store i32* %63, i32** %23, align 8
  %64 = load i32*, i32** %23, align 8
  %65 = call i64 @IS_ERR(i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32*, i32** %23, align 8
  %69 = call i32 @PTR_ERR(i32* %68)
  store i32 %69, i32* %16, align 4
  br label %130

70:                                               ; preds = %61
  %71 = load i32, i32* @AOP_FLAG_NOFS, align 4
  %72 = load i32, i32* %13, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %13, align 4
  %74 = load %struct.address_space*, %struct.address_space** %10, align 8
  %75 = load i32, i32* %19, align 4
  %76 = load i32, i32* %13, align 4
  %77 = call %struct.page* @grab_cache_page_write_begin(%struct.address_space* %74, i32 %75, i32 %76)
  store %struct.page* %77, %struct.page** %18, align 8
  %78 = load %struct.page*, %struct.page** %18, align 8
  %79 = icmp ne %struct.page* %78, null
  br i1 %79, label %85, label %80

80:                                               ; preds = %70
  %81 = load i32*, i32** %23, align 8
  %82 = call i32 @ext4_journal_stop(i32* %81)
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %16, align 4
  br label %130

85:                                               ; preds = %70
  %86 = load %struct.page*, %struct.page** %18, align 8
  %87 = load %struct.page**, %struct.page*** %14, align 8
  store %struct.page* %86, %struct.page** %87, align 8
  %88 = load %struct.file*, %struct.file** %9, align 8
  %89 = load %struct.address_space*, %struct.address_space** %10, align 8
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %13, align 4
  %93 = load %struct.page**, %struct.page*** %14, align 8
  %94 = load i8**, i8*** %15, align 8
  %95 = load i32, i32* @ext4_da_get_block_prep, align 4
  %96 = call i32 @block_write_begin(%struct.file* %88, %struct.address_space* %89, i32 %90, i32 %91, i32 %92, %struct.page** %93, i8** %94, i32 %95)
  store i32 %96, i32* %16, align 4
  %97 = load i32, i32* %16, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %117

99:                                               ; preds = %85
  %100 = load %struct.page*, %struct.page** %18, align 8
  %101 = call i32 @unlock_page(%struct.page* %100)
  %102 = load i32*, i32** %23, align 8
  %103 = call i32 @ext4_journal_stop(i32* %102)
  %104 = load %struct.page*, %struct.page** %18, align 8
  %105 = call i32 @page_cache_release(%struct.page* %104)
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %12, align 4
  %108 = add i32 %106, %107
  %109 = load %struct.inode*, %struct.inode** %22, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp ugt i32 %108, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %99
  %114 = load %struct.inode*, %struct.inode** %22, align 8
  %115 = call i32 @ext4_truncate_failed_write(%struct.inode* %114)
  br label %116

116:                                              ; preds = %113, %99
  br label %117

117:                                              ; preds = %116, %85
  %118 = load i32, i32* %16, align 4
  %119 = load i32, i32* @ENOSPC, align 4
  %120 = sub nsw i32 0, %119
  %121 = icmp eq i32 %118, %120
  br i1 %121, label %122, label %129

122:                                              ; preds = %117
  %123 = load %struct.inode*, %struct.inode** %22, align 8
  %124 = getelementptr inbounds %struct.inode, %struct.inode* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @ext4_should_retry_alloc(i32 %125, i32* %17)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  br label %61

129:                                              ; preds = %122, %117
  br label %130

130:                                              ; preds = %129, %80, %67
  %131 = load i32, i32* %16, align 4
  store i32 %131, i32* %8, align 4
  br label %132

132:                                              ; preds = %130, %42
  %133 = load i32, i32* %8, align 4
  ret i32 %133
}

declare dso_local i64 @ext4_nonda_switch(i32) #1

declare dso_local i32 @ext4_write_begin(%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page**, i8**) #1

declare dso_local i32 @trace_ext4_da_write_begin(%struct.inode*, i32, i32, i32) #1

declare dso_local i32* @ext4_journal_start(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local %struct.page* @grab_cache_page_write_begin(%struct.address_space*, i32, i32) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

declare dso_local i32 @block_write_begin(%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page**, i8**, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @ext4_truncate_failed_write(%struct.inode*) #1

declare dso_local i64 @ext4_should_retry_alloc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
