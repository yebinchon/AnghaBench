; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_btnode.c_nilfs_btnode_abort_change_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_btnode.c_nilfs_btnode_abort_change_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32, i32 }
%struct.nilfs_btnode_chkey_ctxt = type { i64, i64, %struct.TYPE_2__*, %struct.buffer_head* }
%struct.TYPE_2__ = type { i32 }
%struct.buffer_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_btnode_abort_change_key(%struct.address_space* %0, %struct.nilfs_btnode_chkey_ctxt* %1) #0 {
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca %struct.nilfs_btnode_chkey_ctxt*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.address_space* %0, %struct.address_space** %3, align 8
  store %struct.nilfs_btnode_chkey_ctxt* %1, %struct.nilfs_btnode_chkey_ctxt** %4, align 8
  %8 = load %struct.nilfs_btnode_chkey_ctxt*, %struct.nilfs_btnode_chkey_ctxt** %4, align 8
  %9 = getelementptr inbounds %struct.nilfs_btnode_chkey_ctxt, %struct.nilfs_btnode_chkey_ctxt* %8, i32 0, i32 3
  %10 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  store %struct.buffer_head* %10, %struct.buffer_head** %5, align 8
  %11 = load %struct.nilfs_btnode_chkey_ctxt*, %struct.nilfs_btnode_chkey_ctxt** %4, align 8
  %12 = getelementptr inbounds %struct.nilfs_btnode_chkey_ctxt, %struct.nilfs_btnode_chkey_ctxt* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  %14 = load %struct.nilfs_btnode_chkey_ctxt*, %struct.nilfs_btnode_chkey_ctxt** %4, align 8
  %15 = getelementptr inbounds %struct.nilfs_btnode_chkey_ctxt, %struct.nilfs_btnode_chkey_ctxt* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %44

21:                                               ; preds = %2
  %22 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %23 = icmp eq %struct.buffer_head* %22, null
  br i1 %23, label %24, label %41

24:                                               ; preds = %21
  %25 = load %struct.address_space*, %struct.address_space** %3, align 8
  %26 = getelementptr inbounds %struct.address_space, %struct.address_space* %25, i32 0, i32 0
  %27 = call i32 @spin_lock_irq(i32* %26)
  %28 = load %struct.address_space*, %struct.address_space** %3, align 8
  %29 = getelementptr inbounds %struct.address_space, %struct.address_space* %28, i32 0, i32 1
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @radix_tree_delete(i32* %29, i64 %30)
  %32 = load %struct.address_space*, %struct.address_space** %3, align 8
  %33 = getelementptr inbounds %struct.address_space, %struct.address_space* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock_irq(i32* %33)
  %35 = load %struct.nilfs_btnode_chkey_ctxt*, %struct.nilfs_btnode_chkey_ctxt** %4, align 8
  %36 = getelementptr inbounds %struct.nilfs_btnode_chkey_ctxt, %struct.nilfs_btnode_chkey_ctxt* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @unlock_page(i32 %39)
  br label %44

41:                                               ; preds = %21
  %42 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %43 = call i32 @brelse(%struct.buffer_head* %42)
  br label %44

44:                                               ; preds = %20, %41, %24
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @radix_tree_delete(i32*, i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @unlock_page(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
