; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_da_get_block_prep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_da_get_block_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, %struct.buffer_head*, i32)* @ext4_da_get_block_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_da_get_block_prep(%struct.inode* %0, i32 %1, %struct.buffer_head* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.buffer_head* %2, %struct.buffer_head** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 -65536, i32* %11, align 4
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = call %struct.TYPE_5__* @EXT4_SB(%struct.TYPE_4__* %15)
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ext4_blocks_count(i32 %18)
  %20 = icmp slt i32 %12, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 -1, i32* %11, align 4
  br label %22

22:                                               ; preds = %21, %4
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %28 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %29, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %41 = call i32 @ext4_get_blocks(i32* null, %struct.inode* %38, i32 %39, i32 1, %struct.buffer_head* %40, i32 0)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %67

44:                                               ; preds = %22
  %45 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %46 = call i32 @buffer_delay(%struct.buffer_head* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %67, label %48

48:                                               ; preds = %44
  %49 = load %struct.inode*, %struct.inode** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @ext4_da_reserve_space(%struct.inode* %49, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %5, align 4
  br label %90

56:                                               ; preds = %48
  %57 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %58 = load %struct.inode*, %struct.inode** %6, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @map_bh(%struct.buffer_head* %57, %struct.TYPE_4__* %60, i32 %61)
  %63 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %64 = call i32 @set_buffer_new(%struct.buffer_head* %63)
  %65 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %66 = call i32 @set_buffer_delay(%struct.buffer_head* %65)
  br label %88

67:                                               ; preds = %44, %22
  %68 = load i32, i32* %10, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %67
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.inode*, %struct.inode** %6, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = shl i32 %71, %74
  %76 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %77 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %79 = call i64 @buffer_unwritten(%struct.buffer_head* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %70
  %82 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %83 = call i32 @set_buffer_new(%struct.buffer_head* %82)
  %84 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %85 = call i32 @set_buffer_mapped(%struct.buffer_head* %84)
  br label %86

86:                                               ; preds = %81, %70
  store i32 0, i32* %10, align 4
  br label %87

87:                                               ; preds = %86, %67
  br label %88

88:                                               ; preds = %87, %56
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %88, %54
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @ext4_blocks_count(i32) #1

declare dso_local %struct.TYPE_5__* @EXT4_SB(%struct.TYPE_4__*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ext4_get_blocks(i32*, %struct.inode*, i32, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @buffer_delay(%struct.buffer_head*) #1

declare dso_local i32 @ext4_da_reserve_space(%struct.inode*, i32) #1

declare dso_local i32 @map_bh(%struct.buffer_head*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @set_buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_delay(%struct.buffer_head*) #1

declare dso_local i64 @buffer_unwritten(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_mapped(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
