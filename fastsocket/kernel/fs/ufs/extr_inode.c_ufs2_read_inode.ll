; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_inode.c_ufs2_read_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_inode.c_ufs2_read_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i8*, i8*, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, i8*, i8*, i8*, i32, i8*, i8*, %struct.super_block* }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.super_block = type { i32 }
%struct.ufs2_inode = type { %struct.TYPE_9__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32*, i32 }
%struct.ufs_inode_info = type { %struct.TYPE_10__, i8* }
%struct.TYPE_10__ = type { i64*, i64* }

@.str = private unnamed_addr constant [29 x i8] c"Reading ufs2 inode, ino %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"ufs_read_inode\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"inode %lu has zero nlink\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ufs2_inode*)* @ufs2_read_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs2_read_inode(%struct.inode* %0, %struct.ufs2_inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ufs2_inode*, align 8
  %6 = alloca %struct.ufs_inode_info*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.ufs2_inode* %1, %struct.ufs2_inode** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call %struct.ufs_inode_info* @UFS_I(%struct.inode* %9)
  store %struct.ufs_inode_info* %10, %struct.ufs_inode_info** %6, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 11
  %13 = load %struct.super_block*, %struct.super_block** %12, align 8
  store %struct.super_block* %13, %struct.super_block** %7, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @UFSD(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.super_block*, %struct.super_block** %7, align 8
  %19 = load %struct.ufs2_inode*, %struct.ufs2_inode** %5, align 8
  %20 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %19, i32 0, i32 14
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @fs16_to_cpu(%struct.super_block* %18, i32 %21)
  store i8* %22, i8** %8, align 8
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 10
  store i8* %22, i8** %24, align 8
  %25 = load %struct.super_block*, %struct.super_block** %7, align 8
  %26 = load %struct.ufs2_inode*, %struct.ufs2_inode** %5, align 8
  %27 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %26, i32 0, i32 13
  %28 = load i32, i32* %27, align 8
  %29 = call i8* @fs16_to_cpu(%struct.super_block* %25, i32 %28)
  %30 = load %struct.inode*, %struct.inode** %4, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 9
  store i8* %29, i8** %31, align 8
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 9
  %34 = load i8*, i8** %33, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %2
  %37 = load %struct.super_block*, %struct.super_block** %7, align 8
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 8
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @ufs_error(%struct.super_block* %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  store i32 -1, i32* %3, align 4
  br label %170

42:                                               ; preds = %2
  %43 = load %struct.super_block*, %struct.super_block** %7, align 8
  %44 = load %struct.ufs2_inode*, %struct.ufs2_inode** %5, align 8
  %45 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %44, i32 0, i32 12
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @fs32_to_cpu(%struct.super_block* %43, i32 %46)
  %48 = load %struct.inode*, %struct.inode** %4, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 7
  store i8* %47, i8** %49, align 8
  %50 = load %struct.super_block*, %struct.super_block** %7, align 8
  %51 = load %struct.ufs2_inode*, %struct.ufs2_inode** %5, align 8
  %52 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %51, i32 0, i32 11
  %53 = load i32, i32* %52, align 8
  %54 = call i8* @fs32_to_cpu(%struct.super_block* %50, i32 %53)
  %55 = load %struct.inode*, %struct.inode** %4, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 6
  store i8* %54, i8** %56, align 8
  %57 = load %struct.super_block*, %struct.super_block** %7, align 8
  %58 = load %struct.ufs2_inode*, %struct.ufs2_inode** %5, align 8
  %59 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %58, i32 0, i32 10
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @fs64_to_cpu(%struct.super_block* %57, i32 %60)
  %62 = load %struct.inode*, %struct.inode** %4, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 5
  store i8* %61, i8** %63, align 8
  %64 = load %struct.super_block*, %struct.super_block** %7, align 8
  %65 = load %struct.ufs2_inode*, %struct.ufs2_inode** %5, align 8
  %66 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %65, i32 0, i32 9
  %67 = load i32, i32* %66, align 8
  %68 = call i8* @fs64_to_cpu(%struct.super_block* %64, i32 %67)
  %69 = load %struct.inode*, %struct.inode** %4, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  store i8* %68, i8** %71, align 8
  %72 = load %struct.super_block*, %struct.super_block** %7, align 8
  %73 = load %struct.ufs2_inode*, %struct.ufs2_inode** %5, align 8
  %74 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %73, i32 0, i32 8
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @fs64_to_cpu(%struct.super_block* %72, i32 %75)
  %77 = load %struct.inode*, %struct.inode** %4, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  store i8* %76, i8** %79, align 8
  %80 = load %struct.super_block*, %struct.super_block** %7, align 8
  %81 = load %struct.ufs2_inode*, %struct.ufs2_inode** %5, align 8
  %82 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 8
  %84 = call i8* @fs64_to_cpu(%struct.super_block* %80, i32 %83)
  %85 = load %struct.inode*, %struct.inode** %4, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  store i8* %84, i8** %87, align 8
  %88 = load %struct.super_block*, %struct.super_block** %7, align 8
  %89 = load %struct.ufs2_inode*, %struct.ufs2_inode** %5, align 8
  %90 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @fs32_to_cpu(%struct.super_block* %88, i32 %91)
  %93 = load %struct.inode*, %struct.inode** %4, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  store i8* %92, i8** %95, align 8
  %96 = load %struct.super_block*, %struct.super_block** %7, align 8
  %97 = load %struct.ufs2_inode*, %struct.ufs2_inode** %5, align 8
  %98 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 8
  %100 = call i8* @fs32_to_cpu(%struct.super_block* %96, i32 %99)
  %101 = load %struct.inode*, %struct.inode** %4, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  store i8* %100, i8** %103, align 8
  %104 = load %struct.super_block*, %struct.super_block** %7, align 8
  %105 = load %struct.ufs2_inode*, %struct.ufs2_inode** %5, align 8
  %106 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = call i8* @fs32_to_cpu(%struct.super_block* %104, i32 %107)
  %109 = load %struct.inode*, %struct.inode** %4, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  store i8* %108, i8** %111, align 8
  %112 = load %struct.super_block*, %struct.super_block** %7, align 8
  %113 = load %struct.ufs2_inode*, %struct.ufs2_inode** %5, align 8
  %114 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = call i8* @fs64_to_cpu(%struct.super_block* %112, i32 %115)
  %117 = load %struct.inode*, %struct.inode** %4, align 8
  %118 = getelementptr inbounds %struct.inode, %struct.inode* %117, i32 0, i32 0
  store i8* %116, i8** %118, align 8
  %119 = load %struct.super_block*, %struct.super_block** %7, align 8
  %120 = load %struct.ufs2_inode*, %struct.ufs2_inode** %5, align 8
  %121 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = call i8* @fs32_to_cpu(%struct.super_block* %119, i32 %122)
  %124 = load %struct.inode*, %struct.inode** %4, align 8
  %125 = getelementptr inbounds %struct.inode, %struct.inode* %124, i32 0, i32 1
  store i8* %123, i8** %125, align 8
  %126 = load %struct.super_block*, %struct.super_block** %7, align 8
  %127 = load %struct.ufs2_inode*, %struct.ufs2_inode** %5, align 8
  %128 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i8* @fs32_to_cpu(%struct.super_block* %126, i32 %129)
  %131 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %6, align 8
  %132 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %131, i32 0, i32 1
  store i8* %130, i8** %132, align 8
  %133 = load i8*, i8** %8, align 8
  %134 = call i64 @S_ISCHR(i8* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %145, label %136

136:                                              ; preds = %42
  %137 = load i8*, i8** %8, align 8
  %138 = call i64 @S_ISBLK(i8* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %145, label %140

140:                                              ; preds = %136
  %141 = load %struct.inode*, %struct.inode** %4, align 8
  %142 = getelementptr inbounds %struct.inode, %struct.inode* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %154

145:                                              ; preds = %140, %136, %42
  %146 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %6, align 8
  %147 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 1
  %149 = load i64*, i64** %148, align 8
  %150 = load %struct.ufs2_inode*, %struct.ufs2_inode** %5, align 8
  %151 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 1
  %153 = call i32 @memcpy(i64* %149, i32* %152, i32 4)
  br label %169

154:                                              ; preds = %140
  %155 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %6, align 8
  %156 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = load i64*, i64** %157, align 8
  %159 = load %struct.ufs2_inode*, %struct.ufs2_inode** %5, align 8
  %160 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = call i32 @memcpy(i64* %158, i32* %162, i32 7)
  %164 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %6, align 8
  %165 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = load i64*, i64** %166, align 8
  %168 = getelementptr inbounds i64, i64* %167, i64 7
  store i64 0, i64* %168, align 8
  br label %169

169:                                              ; preds = %154, %145
  store i32 0, i32* %3, align 4
  br label %170

170:                                              ; preds = %169, %36
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local %struct.ufs_inode_info* @UFS_I(%struct.inode*) #1

declare dso_local i32 @UFSD(i8*, i32) #1

declare dso_local i8* @fs16_to_cpu(%struct.super_block*, i32) #1

declare dso_local i32 @ufs_error(%struct.super_block*, i8*, i8*, i32) #1

declare dso_local i8* @fs32_to_cpu(%struct.super_block*, i32) #1

declare dso_local i8* @fs64_to_cpu(%struct.super_block*, i32) #1

declare dso_local i64 @S_ISCHR(i8*) #1

declare dso_local i64 @S_ISBLK(i8*) #1

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
