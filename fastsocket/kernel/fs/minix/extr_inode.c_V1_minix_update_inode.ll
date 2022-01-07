; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_inode.c_V1_minix_update_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_inode.c_V1_minix_update_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.inode = type { i32, i32, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.minix_inode = type { i32*, i32, i32, i32, i32, i32, i32 }
%struct.minix_inode_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (%struct.inode*)* @V1_minix_update_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @V1_minix_update_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.buffer_head*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.minix_inode*, align 8
  %6 = alloca %struct.minix_inode_info*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = call %struct.minix_inode_info* @minix_i(%struct.inode* %8)
  store %struct.minix_inode_info* %9, %struct.minix_inode_info** %6, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 8
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.minix_inode* @minix_V1_raw_inode(i32 %12, i32 %15, %struct.buffer_head** %4)
  store %struct.minix_inode* %16, %struct.minix_inode** %5, align 8
  %17 = load %struct.minix_inode*, %struct.minix_inode** %5, align 8
  %18 = icmp ne %struct.minix_inode* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store %struct.buffer_head* null, %struct.buffer_head** %2, align 8
  br label %101

20:                                               ; preds = %1
  %21 = load %struct.inode*, %struct.inode** %3, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.minix_inode*, %struct.minix_inode** %5, align 8
  %25 = getelementptr inbounds %struct.minix_inode, %struct.minix_inode* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 4
  %26 = load %struct.inode*, %struct.inode** %3, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @fs_high2lowuid(i32 %28)
  %30 = load %struct.minix_inode*, %struct.minix_inode** %5, align 8
  %31 = getelementptr inbounds %struct.minix_inode, %struct.minix_inode* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 8
  %32 = load %struct.inode*, %struct.inode** %3, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @fs_high2lowgid(i32 %34)
  %36 = load %struct.minix_inode*, %struct.minix_inode** %5, align 8
  %37 = getelementptr inbounds %struct.minix_inode, %struct.minix_inode* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  %38 = load %struct.inode*, %struct.inode** %3, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.minix_inode*, %struct.minix_inode** %5, align 8
  %42 = getelementptr inbounds %struct.minix_inode, %struct.minix_inode* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load %struct.inode*, %struct.inode** %3, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.minix_inode*, %struct.minix_inode** %5, align 8
  %47 = getelementptr inbounds %struct.minix_inode, %struct.minix_inode* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.inode*, %struct.inode** %3, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.minix_inode*, %struct.minix_inode** %5, align 8
  %53 = getelementptr inbounds %struct.minix_inode, %struct.minix_inode* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load %struct.inode*, %struct.inode** %3, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @S_ISCHR(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %20
  %60 = load %struct.inode*, %struct.inode** %3, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @S_ISBLK(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %59, %20
  %66 = load %struct.inode*, %struct.inode** %3, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @old_encode_dev(i32 %68)
  %70 = load %struct.minix_inode*, %struct.minix_inode** %5, align 8
  %71 = getelementptr inbounds %struct.minix_inode, %struct.minix_inode* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 %69, i32* %73, align 4
  br label %97

74:                                               ; preds = %59
  store i32 0, i32* %7, align 4
  br label %75

75:                                               ; preds = %93, %74
  %76 = load i32, i32* %7, align 4
  %77 = icmp slt i32 %76, 9
  br i1 %77, label %78, label %96

78:                                               ; preds = %75
  %79 = load %struct.minix_inode_info*, %struct.minix_inode_info** %6, align 8
  %80 = getelementptr inbounds %struct.minix_inode_info, %struct.minix_inode_info* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.minix_inode*, %struct.minix_inode** %5, align 8
  %88 = getelementptr inbounds %struct.minix_inode, %struct.minix_inode* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %86, i32* %92, align 4
  br label %93

93:                                               ; preds = %78
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  br label %75

96:                                               ; preds = %75
  br label %97

97:                                               ; preds = %96, %65
  %98 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %99 = call i32 @mark_buffer_dirty(%struct.buffer_head* %98)
  %100 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  store %struct.buffer_head* %100, %struct.buffer_head** %2, align 8
  br label %101

101:                                              ; preds = %97, %19
  %102 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  ret %struct.buffer_head* %102
}

declare dso_local %struct.minix_inode_info* @minix_i(%struct.inode*) #1

declare dso_local %struct.minix_inode* @minix_V1_raw_inode(i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @fs_high2lowuid(i32) #1

declare dso_local i32 @fs_high2lowgid(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i32 @old_encode_dev(i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
