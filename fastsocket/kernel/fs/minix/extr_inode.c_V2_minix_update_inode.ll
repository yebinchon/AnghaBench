; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_inode.c_V2_minix_update_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_inode.c_V2_minix_update_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.inode = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.minix2_inode = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.minix_inode_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (%struct.inode*)* @V2_minix_update_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @V2_minix_update_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.buffer_head*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.minix2_inode*, align 8
  %6 = alloca %struct.minix_inode_info*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = call %struct.minix_inode_info* @minix_i(%struct.inode* %8)
  store %struct.minix_inode_info* %9, %struct.minix_inode_info** %6, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 10
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 9
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.minix2_inode* @minix_V2_raw_inode(i32 %12, i32 %15, %struct.buffer_head** %4)
  store %struct.minix2_inode* %16, %struct.minix2_inode** %5, align 8
  %17 = load %struct.minix2_inode*, %struct.minix2_inode** %5, align 8
  %18 = icmp ne %struct.minix2_inode* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store %struct.buffer_head* null, %struct.buffer_head** %2, align 8
  br label %113

20:                                               ; preds = %1
  %21 = load %struct.inode*, %struct.inode** %3, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.minix2_inode*, %struct.minix2_inode** %5, align 8
  %25 = getelementptr inbounds %struct.minix2_inode, %struct.minix2_inode* %24, i32 0, i32 8
  store i32 %23, i32* %25, align 4
  %26 = load %struct.inode*, %struct.inode** %3, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @fs_high2lowuid(i32 %28)
  %30 = load %struct.minix2_inode*, %struct.minix2_inode** %5, align 8
  %31 = getelementptr inbounds %struct.minix2_inode, %struct.minix2_inode* %30, i32 0, i32 7
  store i32 %29, i32* %31, align 8
  %32 = load %struct.inode*, %struct.inode** %3, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @fs_high2lowgid(i32 %34)
  %36 = load %struct.minix2_inode*, %struct.minix2_inode** %5, align 8
  %37 = getelementptr inbounds %struct.minix2_inode, %struct.minix2_inode* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 4
  %38 = load %struct.inode*, %struct.inode** %3, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.minix2_inode*, %struct.minix2_inode** %5, align 8
  %42 = getelementptr inbounds %struct.minix2_inode, %struct.minix2_inode* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 8
  %43 = load %struct.inode*, %struct.inode** %3, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.minix2_inode*, %struct.minix2_inode** %5, align 8
  %47 = getelementptr inbounds %struct.minix2_inode, %struct.minix2_inode* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 4
  %48 = load %struct.inode*, %struct.inode** %3, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.minix2_inode*, %struct.minix2_inode** %5, align 8
  %53 = getelementptr inbounds %struct.minix2_inode, %struct.minix2_inode* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load %struct.inode*, %struct.inode** %3, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.minix2_inode*, %struct.minix2_inode** %5, align 8
  %59 = getelementptr inbounds %struct.minix2_inode, %struct.minix2_inode* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load %struct.inode*, %struct.inode** %3, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.minix2_inode*, %struct.minix2_inode** %5, align 8
  %65 = getelementptr inbounds %struct.minix2_inode, %struct.minix2_inode* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load %struct.inode*, %struct.inode** %3, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @S_ISCHR(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %20
  %72 = load %struct.inode*, %struct.inode** %3, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @S_ISBLK(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %71, %20
  %78 = load %struct.inode*, %struct.inode** %3, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @old_encode_dev(i32 %80)
  %82 = load %struct.minix2_inode*, %struct.minix2_inode** %5, align 8
  %83 = getelementptr inbounds %struct.minix2_inode, %struct.minix2_inode* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  store i32 %81, i32* %85, align 4
  br label %109

86:                                               ; preds = %71
  store i32 0, i32* %7, align 4
  br label %87

87:                                               ; preds = %105, %86
  %88 = load i32, i32* %7, align 4
  %89 = icmp slt i32 %88, 10
  br i1 %89, label %90, label %108

90:                                               ; preds = %87
  %91 = load %struct.minix_inode_info*, %struct.minix_inode_info** %6, align 8
  %92 = getelementptr inbounds %struct.minix_inode_info, %struct.minix_inode_info* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.minix2_inode*, %struct.minix2_inode** %5, align 8
  %100 = getelementptr inbounds %struct.minix2_inode, %struct.minix2_inode* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 %98, i32* %104, align 4
  br label %105

105:                                              ; preds = %90
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %87

108:                                              ; preds = %87
  br label %109

109:                                              ; preds = %108, %77
  %110 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %111 = call i32 @mark_buffer_dirty(%struct.buffer_head* %110)
  %112 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  store %struct.buffer_head* %112, %struct.buffer_head** %2, align 8
  br label %113

113:                                              ; preds = %109, %19
  %114 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  ret %struct.buffer_head* %114
}

declare dso_local %struct.minix_inode_info* @minix_i(%struct.inode*) #1

declare dso_local %struct.minix2_inode* @minix_V2_raw_inode(i32, i32, %struct.buffer_head**) #1

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
