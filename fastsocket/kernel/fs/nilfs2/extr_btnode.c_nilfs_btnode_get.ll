; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_btnode.c_nilfs_btnode_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_btnode.c_nilfs_btnode_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.buffer_head = type { i32 }

@EEXIST = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_btnode_get(%struct.address_space* %0, i32 %1, i32 %2, %struct.buffer_head** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_head**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.buffer_head** %3, %struct.buffer_head*** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.address_space*, %struct.address_space** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %18 = load i32, i32* %11, align 4
  %19 = call i32 @nilfs_btnode_submit_block(%struct.address_space* %14, i32 %15, i32 %16, %struct.buffer_head** %17, i32 %18)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* @EEXIST, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %45

25:                                               ; preds = %5
  %26 = load i32, i32* %13, align 4
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* %13, align 4
  store i32 %30, i32* %6, align 4
  br label %45

31:                                               ; preds = %25
  %32 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %33 = load %struct.buffer_head*, %struct.buffer_head** %32, align 8
  store %struct.buffer_head* %33, %struct.buffer_head** %12, align 8
  %34 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %35 = call i32 @wait_on_buffer(%struct.buffer_head* %34)
  %36 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %37 = call i32 @buffer_uptodate(%struct.buffer_head* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %31
  %40 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %41 = call i32 @brelse(%struct.buffer_head* %40)
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %45

44:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %44, %39, %29, %24
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i32 @nilfs_btnode_submit_block(%struct.address_space*, i32, i32, %struct.buffer_head**, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
