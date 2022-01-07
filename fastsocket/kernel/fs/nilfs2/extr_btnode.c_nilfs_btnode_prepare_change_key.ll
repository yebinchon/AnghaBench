; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_btnode.c_nilfs_btnode_prepare_change_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_btnode.c_nilfs_btnode_prepare_change_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32, i32 }
%struct.nilfs_btnode_chkey_ctxt = type { i64, i64, %struct.buffer_head*, %struct.buffer_head* }
%struct.buffer_head = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.inode = type { i64 }

@PAGE_CACHE_SHIFT = common dso_local global i64 0, align 8
@GFP_NOFS = common dso_local global i32 0, align 4
@__GFP_HIGHMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"invalid oldkey %lld (newkey=%lld)\00", align 1
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_btnode_prepare_change_key(%struct.address_space* %0, %struct.nilfs_btnode_chkey_ctxt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca %struct.nilfs_btnode_chkey_ctxt*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store %struct.nilfs_btnode_chkey_ctxt* %1, %struct.nilfs_btnode_chkey_ctxt** %5, align 8
  %12 = load %struct.address_space*, %struct.address_space** %4, align 8
  %13 = call %struct.inode* @NILFS_BTNC_I(%struct.address_space* %12)
  store %struct.inode* %13, %struct.inode** %8, align 8
  %14 = load %struct.nilfs_btnode_chkey_ctxt*, %struct.nilfs_btnode_chkey_ctxt** %5, align 8
  %15 = getelementptr inbounds %struct.nilfs_btnode_chkey_ctxt, %struct.nilfs_btnode_chkey_ctxt* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %9, align 8
  %17 = load %struct.nilfs_btnode_chkey_ctxt*, %struct.nilfs_btnode_chkey_ctxt** %5, align 8
  %18 = getelementptr inbounds %struct.nilfs_btnode_chkey_ctxt, %struct.nilfs_btnode_chkey_ctxt* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* %10, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %132

24:                                               ; preds = %2
  %25 = load %struct.nilfs_btnode_chkey_ctxt*, %struct.nilfs_btnode_chkey_ctxt** %5, align 8
  %26 = getelementptr inbounds %struct.nilfs_btnode_chkey_ctxt, %struct.nilfs_btnode_chkey_ctxt* %25, i32 0, i32 3
  %27 = load %struct.buffer_head*, %struct.buffer_head** %26, align 8
  store %struct.buffer_head* %27, %struct.buffer_head** %6, align 8
  %28 = load %struct.nilfs_btnode_chkey_ctxt*, %struct.nilfs_btnode_chkey_ctxt** %5, align 8
  %29 = getelementptr inbounds %struct.nilfs_btnode_chkey_ctxt, %struct.nilfs_btnode_chkey_ctxt* %28, i32 0, i32 2
  store %struct.buffer_head* null, %struct.buffer_head** %29, align 8
  %30 = load %struct.inode*, %struct.inode** %8, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %105

35:                                               ; preds = %24
  %36 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %37 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = call i32 @lock_page(%struct.TYPE_5__* %38)
  br label %40

40:                                               ; preds = %99, %35
  %41 = load i32, i32* @GFP_NOFS, align 4
  %42 = load i32, i32* @__GFP_HIGHMEM, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  %45 = call i32 @radix_tree_preload(i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %126

49:                                               ; preds = %40
  %50 = load i64, i64* %9, align 8
  %51 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %52 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %50, %55
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %49
  %61 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %62 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* %10, align 8
  %66 = call i32 @NILFS_PAGE_BUG(%struct.TYPE_5__* %63, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %64, i64 %65)
  br label %67

67:                                               ; preds = %60, %49
  %68 = load %struct.address_space*, %struct.address_space** %4, align 8
  %69 = getelementptr inbounds %struct.address_space, %struct.address_space* %68, i32 0, i32 0
  %70 = call i32 @spin_lock_irq(i32* %69)
  %71 = load %struct.address_space*, %struct.address_space** %4, align 8
  %72 = getelementptr inbounds %struct.address_space, %struct.address_space* %71, i32 0, i32 1
  %73 = load i64, i64* %10, align 8
  %74 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %75 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = call i32 @radix_tree_insert(i32* %72, i64 %73, %struct.TYPE_5__* %76)
  store i32 %77, i32* %11, align 4
  %78 = load %struct.address_space*, %struct.address_space** %4, align 8
  %79 = getelementptr inbounds %struct.address_space, %struct.address_space* %78, i32 0, i32 0
  %80 = call i32 @spin_unlock_irq(i32* %79)
  %81 = call i32 (...) @radix_tree_preload_end()
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %132

85:                                               ; preds = %67
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @EEXIST, align 4
  %88 = sub nsw i32 0, %87
  %89 = icmp ne i32 %86, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %126

91:                                               ; preds = %85
  br label %92

92:                                               ; preds = %91
  %93 = load %struct.address_space*, %struct.address_space** %4, align 8
  %94 = load i64, i64* %10, align 8
  %95 = load i64, i64* %10, align 8
  %96 = call i32 @invalidate_inode_pages2_range(%struct.address_space* %93, i64 %94, i64 %95)
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %92
  br label %40

100:                                              ; preds = %92
  %101 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %102 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %101, i32 0, i32 0
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = call i32 @unlock_page(%struct.TYPE_5__* %103)
  br label %105

105:                                              ; preds = %100, %24
  %106 = load %struct.address_space*, %struct.address_space** %4, align 8
  %107 = load i64, i64* %10, align 8
  %108 = call i32 @nilfs_btnode_get(%struct.address_space* %106, i64 %107, i32 0, %struct.buffer_head** %7, i32 1)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  %113 = call i64 @likely(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %105
  %116 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %117 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %118 = icmp eq %struct.buffer_head* %116, %117
  %119 = zext i1 %118 to i32
  %120 = call i32 @BUG_ON(i32 %119)
  %121 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %122 = load %struct.nilfs_btnode_chkey_ctxt*, %struct.nilfs_btnode_chkey_ctxt** %5, align 8
  %123 = getelementptr inbounds %struct.nilfs_btnode_chkey_ctxt, %struct.nilfs_btnode_chkey_ctxt* %122, i32 0, i32 2
  store %struct.buffer_head* %121, %struct.buffer_head** %123, align 8
  br label %124

124:                                              ; preds = %115, %105
  %125 = load i32, i32* %11, align 4
  store i32 %125, i32* %3, align 4
  br label %132

126:                                              ; preds = %90, %48
  %127 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %128 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %127, i32 0, i32 0
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = call i32 @unlock_page(%struct.TYPE_5__* %129)
  %131 = load i32, i32* %11, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %126, %124, %84, %23
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local %struct.inode* @NILFS_BTNC_I(%struct.address_space*) #1

declare dso_local i32 @lock_page(%struct.TYPE_5__*) #1

declare dso_local i32 @radix_tree_preload(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @NILFS_PAGE_BUG(%struct.TYPE_5__*, i8*, i64, i64) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @radix_tree_insert(i32*, i64, %struct.TYPE_5__*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @radix_tree_preload_end(...) #1

declare dso_local i32 @invalidate_inode_pages2_range(%struct.address_space*, i64, i64) #1

declare dso_local i32 @unlock_page(%struct.TYPE_5__*) #1

declare dso_local i32 @nilfs_btnode_get(%struct.address_space*, i64, i32, %struct.buffer_head**, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
