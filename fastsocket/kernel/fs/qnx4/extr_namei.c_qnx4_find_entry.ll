; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/qnx4/extr_namei.c_qnx4_find_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/qnx4/extr_namei.c_qnx4_find_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i64, i64 }
%struct.inode = type { i64, i32 }
%struct.qnx4_inode_entry = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"qnx4: no superblock on dir.\0A\00", align 1
@QNX4_BLOCK_SIZE = common dso_local global i64 0, align 8
@QNX4_INODES_PER_BLOCK = common dso_local global i64 0, align 8
@QNX4_DIR_ENTRY_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (i32, %struct.inode*, i8*, %struct.qnx4_inode_entry**, i32*)* @qnx4_find_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @qnx4_find_entry(i32 %0, %struct.inode* %1, i8* %2, %struct.qnx4_inode_entry** %3, i32* %4) #0 {
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.qnx4_inode_entry**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.buffer_head*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.inode* %1, %struct.inode** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.qnx4_inode_entry** %3, %struct.qnx4_inode_entry*** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load %struct.qnx4_inode_entry**, %struct.qnx4_inode_entry*** %10, align 8
  store %struct.qnx4_inode_entry* null, %struct.qnx4_inode_entry** %16, align 8
  %17 = load %struct.inode*, %struct.inode** %8, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %5
  %22 = call i32 @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store %struct.buffer_head* null, %struct.buffer_head** %6, align 8
  br label %91

23:                                               ; preds = %5
  store %struct.buffer_head* null, %struct.buffer_head** %15, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %12, align 8
  br label %24

24:                                               ; preds = %82, %81, %43, %23
  %25 = load i64, i64* %14, align 8
  %26 = load i64, i64* @QNX4_BLOCK_SIZE, align 8
  %27 = mul i64 %25, %26
  %28 = load i64, i64* %13, align 8
  %29 = add i64 %27, %28
  %30 = load %struct.inode*, %struct.inode** %8, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %29, %32
  br i1 %33, label %34, label %87

34:                                               ; preds = %24
  %35 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %36 = icmp ne %struct.buffer_head* %35, null
  br i1 %36, label %47, label %37

37:                                               ; preds = %34
  %38 = load %struct.inode*, %struct.inode** %8, align 8
  %39 = load i64, i64* %14, align 8
  %40 = call %struct.buffer_head* @qnx4_bread(%struct.inode* %38, i64 %39, i32 0)
  store %struct.buffer_head* %40, %struct.buffer_head** %15, align 8
  %41 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %42 = icmp ne %struct.buffer_head* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load i64, i64* %14, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %14, align 8
  br label %24

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %34
  %48 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %49 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %13, align 8
  %52 = add i64 %50, %51
  %53 = inttoptr i64 %52 to %struct.qnx4_inode_entry*
  %54 = load %struct.qnx4_inode_entry**, %struct.qnx4_inode_entry*** %10, align 8
  store %struct.qnx4_inode_entry* %53, %struct.qnx4_inode_entry** %54, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i8*, i8** %9, align 8
  %57 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %58 = call i64 @qnx4_match(i32 %55, i8* %56, %struct.buffer_head* %57, i64* %13)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %47
  %61 = load %struct.inode*, %struct.inode** %8, align 8
  %62 = load i64, i64* %14, align 8
  %63 = call i64 @qnx4_block_map(%struct.inode* %61, i64 %62)
  store i64 %63, i64* %12, align 8
  %64 = load i64, i64* %12, align 8
  %65 = load i64, i64* @QNX4_INODES_PER_BLOCK, align 8
  %66 = mul i64 %64, %65
  %67 = load i64, i64* %13, align 8
  %68 = load i64, i64* @QNX4_DIR_ENTRY_SIZE, align 8
  %69 = udiv i64 %67, %68
  %70 = add i64 %66, %69
  %71 = sub i64 %70, 1
  %72 = trunc i64 %71 to i32
  %73 = load i32*, i32** %11, align 8
  store i32 %72, i32* %73, align 4
  %74 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  store %struct.buffer_head* %74, %struct.buffer_head** %6, align 8
  br label %91

75:                                               ; preds = %47
  %76 = load i64, i64* %13, align 8
  %77 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %78 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ult i64 %76, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %24

82:                                               ; preds = %75
  %83 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %84 = call i32 @brelse(%struct.buffer_head* %83)
  store %struct.buffer_head* null, %struct.buffer_head** %15, align 8
  store i64 0, i64* %13, align 8
  %85 = load i64, i64* %14, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %14, align 8
  br label %24

87:                                               ; preds = %24
  %88 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %89 = call i32 @brelse(%struct.buffer_head* %88)
  %90 = load %struct.qnx4_inode_entry**, %struct.qnx4_inode_entry*** %10, align 8
  store %struct.qnx4_inode_entry* null, %struct.qnx4_inode_entry** %90, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %6, align 8
  br label %91

91:                                               ; preds = %87, %60, %21
  %92 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  ret %struct.buffer_head* %92
}

declare dso_local i32 @printk(i8*) #1

declare dso_local %struct.buffer_head* @qnx4_bread(%struct.inode*, i64, i32) #1

declare dso_local i64 @qnx4_match(i32, i8*, %struct.buffer_head*, i64*) #1

declare dso_local i64 @qnx4_block_map(%struct.inode*, i64) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
