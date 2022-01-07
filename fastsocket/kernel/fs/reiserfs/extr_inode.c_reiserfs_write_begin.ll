; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_reiserfs_write_begin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_reiserfs_write_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.reiserfs_transaction_handle* }
%struct.reiserfs_transaction_handle = type { i32, i32 }
%struct.file = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.page = type { i32 }

@AOP_FLAG_CONT_EXPAND = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_7__* null, align 8
@reiserfs_get_block = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page**, i8**)* @reiserfs_write_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reiserfs_write_begin(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page** %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.page**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca %struct.inode*, align 8
  %17 = alloca %struct.page*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.reiserfs_transaction_handle*, align 8
  %22 = alloca %struct.reiserfs_transaction_handle*, align 8
  %23 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %9, align 8
  store %struct.address_space* %1, %struct.address_space** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.page** %5, %struct.page*** %14, align 8
  store i8** %6, i8*** %15, align 8
  store i32 0, i32* %20, align 4
  %24 = load %struct.address_space*, %struct.address_space** %10, align 8
  %25 = getelementptr inbounds %struct.address_space, %struct.address_space* %24, i32 0, i32 0
  %26 = load %struct.inode*, %struct.inode** %25, align 8
  store %struct.inode* %26, %struct.inode** %16, align 8
  %27 = load i8**, i8*** %15, align 8
  store i8* null, i8** %27, align 8
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* @AOP_FLAG_CONT_EXPAND, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %7
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.inode*, %struct.inode** %16, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, 1
  %40 = and i32 %33, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %32
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %13, align 4
  %46 = zext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = load i8**, i8*** %15, align 8
  store i8* %47, i8** %48, align 8
  br label %49

49:                                               ; preds = %42, %32, %7
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %52 = ashr i32 %50, %51
  store i32 %52, i32* %18, align 4
  %53 = load %struct.address_space*, %struct.address_space** %10, align 8
  %54 = load i32, i32* %18, align 4
  %55 = load i32, i32* %13, align 4
  %56 = call %struct.page* @grab_cache_page_write_begin(%struct.address_space* %53, i32 %54, i32 %55)
  store %struct.page* %56, %struct.page** %17, align 8
  %57 = load %struct.page*, %struct.page** %17, align 8
  %58 = icmp ne %struct.page* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %49
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %8, align 4
  br label %164

62:                                               ; preds = %49
  %63 = load %struct.page*, %struct.page** %17, align 8
  %64 = load %struct.page**, %struct.page*** %14, align 8
  store %struct.page* %63, %struct.page** %64, align 8
  %65 = load %struct.inode*, %struct.inode** %16, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = call i32 @reiserfs_wait_on_write_block(%struct.TYPE_6__* %67)
  %69 = load %struct.page*, %struct.page** %17, align 8
  %70 = call i32 @fix_tail_page_for_writing(%struct.page* %69)
  %71 = load %struct.inode*, %struct.inode** %16, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = call i64 @reiserfs_transaction_running(%struct.TYPE_6__* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %101

76:                                               ; preds = %62
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %78, align 8
  store %struct.reiserfs_transaction_handle* %79, %struct.reiserfs_transaction_handle** %21, align 8
  %80 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %21, align 8
  %81 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = call i32 @BUG_ON(i32 %85)
  %87 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %21, align 8
  %88 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = call i32 @BUG_ON(i32 %92)
  %94 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %21, align 8
  %95 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %20, align 4
  %97 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %21, align 8
  %98 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %76, %62
  %102 = load %struct.file*, %struct.file** %9, align 8
  %103 = load %struct.address_space*, %struct.address_space** %10, align 8
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %13, align 4
  %107 = load %struct.page**, %struct.page*** %14, align 8
  %108 = load i8**, i8*** %15, align 8
  %109 = load i32, i32* @reiserfs_get_block, align 4
  %110 = call i32 @block_write_begin(%struct.file* %102, %struct.address_space* %103, i32 %104, i32 %105, i32 %106, %struct.page** %107, i8** %108, i32 %109)
  store i32 %110, i32* %19, align 4
  %111 = load i32, i32* %19, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %154

113:                                              ; preds = %101
  %114 = load %struct.inode*, %struct.inode** %16, align 8
  %115 = getelementptr inbounds %struct.inode, %struct.inode* %114, i32 0, i32 0
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = call i64 @reiserfs_transaction_running(%struct.TYPE_6__* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %154

119:                                              ; preds = %113
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %121, align 8
  store %struct.reiserfs_transaction_handle* %122, %struct.reiserfs_transaction_handle** %22, align 8
  %123 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %22, align 8
  %124 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %20, align 4
  %127 = icmp sgt i32 %125, %126
  br i1 %127, label %128, label %153

128:                                              ; preds = %119
  %129 = load i32, i32* %20, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %128
  %132 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %22, align 8
  %133 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %133, align 4
  br label %152

136:                                              ; preds = %128
  %137 = load %struct.inode*, %struct.inode** %16, align 8
  %138 = getelementptr inbounds %struct.inode, %struct.inode* %137, i32 0, i32 0
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = call i32 @reiserfs_write_lock(%struct.TYPE_6__* %139)
  %141 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %22, align 8
  %142 = call i32 @reiserfs_end_persistent_transaction(%struct.reiserfs_transaction_handle* %141)
  store i32 %142, i32* %23, align 4
  %143 = load %struct.inode*, %struct.inode** %16, align 8
  %144 = getelementptr inbounds %struct.inode, %struct.inode* %143, i32 0, i32 0
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = call i32 @reiserfs_write_unlock(%struct.TYPE_6__* %145)
  %147 = load i32, i32* %23, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %136
  %150 = load i32, i32* %23, align 4
  store i32 %150, i32* %19, align 4
  br label %151

151:                                              ; preds = %149, %136
  br label %152

152:                                              ; preds = %151, %131
  br label %153

153:                                              ; preds = %152, %119
  br label %154

154:                                              ; preds = %153, %113, %101
  %155 = load i32, i32* %19, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %154
  %158 = load %struct.page*, %struct.page** %17, align 8
  %159 = call i32 @unlock_page(%struct.page* %158)
  %160 = load %struct.page*, %struct.page** %17, align 8
  %161 = call i32 @page_cache_release(%struct.page* %160)
  br label %162

162:                                              ; preds = %157, %154
  %163 = load i32, i32* %19, align 4
  store i32 %163, i32* %8, align 4
  br label %164

164:                                              ; preds = %162, %59
  %165 = load i32, i32* %8, align 4
  ret i32 %165
}

declare dso_local %struct.page* @grab_cache_page_write_begin(%struct.address_space*, i32, i32) #1

declare dso_local i32 @reiserfs_wait_on_write_block(%struct.TYPE_6__*) #1

declare dso_local i32 @fix_tail_page_for_writing(%struct.page*) #1

declare dso_local i64 @reiserfs_transaction_running(%struct.TYPE_6__*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @block_write_begin(%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page**, i8**, i32) #1

declare dso_local i32 @reiserfs_write_lock(%struct.TYPE_6__*) #1

declare dso_local i32 @reiserfs_end_persistent_transaction(%struct.reiserfs_transaction_handle*) #1

declare dso_local i32 @reiserfs_write_unlock(%struct.TYPE_6__*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
