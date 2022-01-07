; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_inode.c_udf_get_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_inode.c_udf_get_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.udf_inode_info = type { i64, i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* @udf_get_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_get_block(%struct.inode* %0, i64 %1, %struct.buffer_head* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.udf_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %13, align 8
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %4
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i64 @udf_block_map(%struct.inode* %18, i64 %19)
  store i64 %20, i64* %13, align 8
  %21 = load i64, i64* %13, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %13, align 8
  %29 = call i32 @map_bh(%struct.buffer_head* %24, i32 %27, i64 %28)
  br label %30

30:                                               ; preds = %23, %17
  store i32 0, i32* %5, align 4
  br label %83

31:                                               ; preds = %4
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %12, align 8
  %34 = call i32 (...) @lock_kernel()
  %35 = load %struct.inode*, %struct.inode** %6, align 8
  %36 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %35)
  store %struct.udf_inode_info* %36, %struct.udf_inode_info** %14, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.udf_inode_info*, %struct.udf_inode_info** %14, align 8
  %39 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  %42 = icmp eq i64 %37, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %31
  %44 = load %struct.udf_inode_info*, %struct.udf_inode_info** %14, align 8
  %45 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %45, align 8
  %48 = load %struct.udf_inode_info*, %struct.udf_inode_info** %14, align 8
  %49 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %43, %31
  store i32 0, i32* %10, align 4
  %53 = load %struct.inode*, %struct.inode** %6, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call %struct.buffer_head* @inode_getblk(%struct.inode* %53, i64 %54, i32* %10, i64* %13, i32* %11)
  store %struct.buffer_head* %55, %struct.buffer_head** %12, align 8
  %56 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %57 = ptrtoint %struct.buffer_head* %56 to i32
  %58 = call i32 @BUG_ON(i32 %57)
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %80

62:                                               ; preds = %52
  %63 = load i64, i64* %13, align 8
  %64 = icmp ne i64 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i32 @BUG_ON(i32 %66)
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  %71 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %72 = call i32 @set_buffer_new(%struct.buffer_head* %71)
  br label %73

73:                                               ; preds = %70, %62
  %74 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %75 = load %struct.inode*, %struct.inode** %6, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i64, i64* %13, align 8
  %79 = call i32 @map_bh(%struct.buffer_head* %74, i32 %77, i64 %78)
  br label %80

80:                                               ; preds = %73, %61
  %81 = call i32 (...) @unlock_kernel()
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %80, %30
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i64 @udf_block_map(%struct.inode*, i64) #1

declare dso_local i32 @map_bh(%struct.buffer_head*, i32, i64) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

declare dso_local %struct.buffer_head* @inode_getblk(%struct.inode*, i64, i32*, i64*, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @set_buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
