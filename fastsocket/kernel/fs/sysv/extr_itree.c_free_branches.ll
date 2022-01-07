; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_itree.c_free_branches.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_itree.c_free_branches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i64*, i64*, i32)* @free_branches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_branches(%struct.inode* %0, i64* %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.super_block*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load %struct.super_block*, %struct.super_block** %14, align 8
  store %struct.super_block* %15, %struct.super_block** %10, align 8
  %16 = load i32, i32* %8, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %8, align 4
  %18 = icmp ne i32 %16, 0
  br i1 %18, label %19, label %62

19:                                               ; preds = %4
  br label %20

20:                                               ; preds = %58, %19
  %21 = load i64*, i64** %6, align 8
  %22 = load i64*, i64** %7, align 8
  %23 = icmp ult i64* %21, %22
  br i1 %23, label %24, label %61

24:                                               ; preds = %20
  %25 = load i64*, i64** %6, align 8
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %12, align 8
  %27 = load i64, i64* %12, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %58

30:                                               ; preds = %24
  %31 = load i64*, i64** %6, align 8
  store i64 0, i64* %31, align 8
  %32 = load %struct.super_block*, %struct.super_block** %10, align 8
  %33 = call i32 @SYSV_SB(%struct.super_block* %32)
  %34 = load i64, i64* %12, align 8
  %35 = call i32 @block_to_cpu(i32 %33, i64 %34)
  store i32 %35, i32* %11, align 4
  %36 = load %struct.super_block*, %struct.super_block** %10, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call %struct.buffer_head* @sb_bread(%struct.super_block* %36, i32 %37)
  store %struct.buffer_head* %38, %struct.buffer_head** %9, align 8
  %39 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %40 = icmp ne %struct.buffer_head* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %30
  br label %58

42:                                               ; preds = %30
  %43 = load %struct.inode*, %struct.inode** %5, align 8
  %44 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %45 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i64*
  %48 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %49 = call i64* @block_end(%struct.buffer_head* %48)
  %50 = load i32, i32* %8, align 4
  call void @free_branches(%struct.inode* %43, i64* %47, i64* %49, i32 %50)
  %51 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %52 = call i32 @bforget(%struct.buffer_head* %51)
  %53 = load %struct.super_block*, %struct.super_block** %10, align 8
  %54 = load i64, i64* %12, align 8
  %55 = call i32 @sysv_free_block(%struct.super_block* %53, i64 %54)
  %56 = load %struct.inode*, %struct.inode** %5, align 8
  %57 = call i32 @mark_inode_dirty(%struct.inode* %56)
  br label %58

58:                                               ; preds = %42, %41, %29
  %59 = load i64*, i64** %6, align 8
  %60 = getelementptr inbounds i64, i64* %59, i32 1
  store i64* %60, i64** %6, align 8
  br label %20

61:                                               ; preds = %20
  br label %67

62:                                               ; preds = %4
  %63 = load %struct.inode*, %struct.inode** %5, align 8
  %64 = load i64*, i64** %6, align 8
  %65 = load i64*, i64** %7, align 8
  %66 = call i32 @free_data(%struct.inode* %63, i64* %64, i64* %65)
  br label %67

67:                                               ; preds = %62, %61
  ret void
}

declare dso_local i32 @block_to_cpu(i32, i64) #1

declare dso_local i32 @SYSV_SB(%struct.super_block*) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i32) #1

declare dso_local i64* @block_end(%struct.buffer_head*) #1

declare dso_local i32 @bforget(%struct.buffer_head*) #1

declare dso_local i32 @sysv_free_block(%struct.super_block*, i64) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @free_data(%struct.inode*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
