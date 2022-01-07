; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_inode.c_ufs2_update_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_inode.c_ufs2_update_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, i32, i32, i32, %struct.super_block* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.super_block = type { i32 }
%struct.ufs2_inode = type { %struct.TYPE_10__, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_10__ = type { %struct.TYPE_12__, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32* }
%struct.ufs_inode_info = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32*, i32* }

@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"EXIT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.ufs2_inode*)* @ufs2_update_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufs2_update_inode(%struct.inode* %0, %struct.ufs2_inode* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.ufs2_inode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.ufs_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.ufs2_inode* %1, %struct.ufs2_inode** %4, align 8
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 10
  %9 = load %struct.super_block*, %struct.super_block** %8, align 8
  store %struct.super_block* %9, %struct.super_block** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = call %struct.ufs_inode_info* @UFS_I(%struct.inode* %10)
  store %struct.ufs_inode_info* %11, %struct.ufs_inode_info** %6, align 8
  %12 = call i32 @UFSD(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.super_block*, %struct.super_block** %5, align 8
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i8* @cpu_to_fs16(%struct.super_block* %13, i32 %16)
  %18 = load %struct.ufs2_inode*, %struct.ufs2_inode** %4, align 8
  %19 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %18, i32 0, i32 14
  store i8* %17, i8** %19, align 8
  %20 = load %struct.super_block*, %struct.super_block** %5, align 8
  %21 = load %struct.inode*, %struct.inode** %3, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i8* @cpu_to_fs16(%struct.super_block* %20, i32 %23)
  %25 = load %struct.ufs2_inode*, %struct.ufs2_inode** %4, align 8
  %26 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %25, i32 0, i32 13
  store i8* %24, i8** %26, align 8
  %27 = load %struct.super_block*, %struct.super_block** %5, align 8
  %28 = load %struct.inode*, %struct.inode** %3, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 9
  %30 = load i32, i32* %29, align 8
  %31 = call i8* @cpu_to_fs32(%struct.super_block* %27, i32 %30)
  %32 = load %struct.ufs2_inode*, %struct.ufs2_inode** %4, align 8
  %33 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %32, i32 0, i32 12
  store i8* %31, i8** %33, align 8
  %34 = load %struct.super_block*, %struct.super_block** %5, align 8
  %35 = load %struct.inode*, %struct.inode** %3, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @cpu_to_fs32(%struct.super_block* %34, i32 %37)
  %39 = load %struct.ufs2_inode*, %struct.ufs2_inode** %4, align 8
  %40 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %39, i32 0, i32 11
  store i8* %38, i8** %40, align 8
  %41 = load %struct.super_block*, %struct.super_block** %5, align 8
  %42 = load %struct.inode*, %struct.inode** %3, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 8
  %45 = call i8* @cpu_to_fs64(%struct.super_block* %41, i32 %44)
  %46 = load %struct.ufs2_inode*, %struct.ufs2_inode** %4, align 8
  %47 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %46, i32 0, i32 10
  store i8* %45, i8** %47, align 8
  %48 = load %struct.super_block*, %struct.super_block** %5, align 8
  %49 = load %struct.inode*, %struct.inode** %3, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 6
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @cpu_to_fs64(%struct.super_block* %48, i32 %52)
  %54 = load %struct.ufs2_inode*, %struct.ufs2_inode** %4, align 8
  %55 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %54, i32 0, i32 9
  store i8* %53, i8** %55, align 8
  %56 = load %struct.super_block*, %struct.super_block** %5, align 8
  %57 = load %struct.inode*, %struct.inode** %3, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i8* @cpu_to_fs32(%struct.super_block* %56, i32 %60)
  %62 = load %struct.ufs2_inode*, %struct.ufs2_inode** %4, align 8
  %63 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %62, i32 0, i32 8
  store i8* %61, i8** %63, align 8
  %64 = load %struct.super_block*, %struct.super_block** %5, align 8
  %65 = load %struct.inode*, %struct.inode** %3, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 5
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @cpu_to_fs64(%struct.super_block* %64, i32 %68)
  %70 = load %struct.ufs2_inode*, %struct.ufs2_inode** %4, align 8
  %71 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %70, i32 0, i32 7
  store i8* %69, i8** %71, align 8
  %72 = load %struct.super_block*, %struct.super_block** %5, align 8
  %73 = load %struct.inode*, %struct.inode** %3, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 5
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i8* @cpu_to_fs32(%struct.super_block* %72, i32 %76)
  %78 = load %struct.ufs2_inode*, %struct.ufs2_inode** %4, align 8
  %79 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %78, i32 0, i32 6
  store i8* %77, i8** %79, align 8
  %80 = load %struct.super_block*, %struct.super_block** %5, align 8
  %81 = load %struct.inode*, %struct.inode** %3, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @cpu_to_fs64(%struct.super_block* %80, i32 %84)
  %86 = load %struct.ufs2_inode*, %struct.ufs2_inode** %4, align 8
  %87 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %86, i32 0, i32 5
  store i8* %85, i8** %87, align 8
  %88 = load %struct.super_block*, %struct.super_block** %5, align 8
  %89 = load %struct.inode*, %struct.inode** %3, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i8* @cpu_to_fs32(%struct.super_block* %88, i32 %92)
  %94 = load %struct.ufs2_inode*, %struct.ufs2_inode** %4, align 8
  %95 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %94, i32 0, i32 4
  store i8* %93, i8** %95, align 8
  %96 = load %struct.super_block*, %struct.super_block** %5, align 8
  %97 = load %struct.inode*, %struct.inode** %3, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @cpu_to_fs64(%struct.super_block* %96, i32 %99)
  %101 = load %struct.ufs2_inode*, %struct.ufs2_inode** %4, align 8
  %102 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %101, i32 0, i32 3
  store i8* %100, i8** %102, align 8
  %103 = load %struct.super_block*, %struct.super_block** %5, align 8
  %104 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %6, align 8
  %105 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i8* @cpu_to_fs32(%struct.super_block* %103, i32 %106)
  %108 = load %struct.ufs2_inode*, %struct.ufs2_inode** %4, align 8
  %109 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %108, i32 0, i32 2
  store i8* %107, i8** %109, align 8
  %110 = load %struct.super_block*, %struct.super_block** %5, align 8
  %111 = load %struct.inode*, %struct.inode** %3, align 8
  %112 = getelementptr inbounds %struct.inode, %struct.inode* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = call i8* @cpu_to_fs32(%struct.super_block* %110, i32 %113)
  %115 = load %struct.ufs2_inode*, %struct.ufs2_inode** %4, align 8
  %116 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %115, i32 0, i32 1
  store i8* %114, i8** %116, align 8
  %117 = load %struct.inode*, %struct.inode** %3, align 8
  %118 = getelementptr inbounds %struct.inode, %struct.inode* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @S_ISCHR(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %2
  %123 = load %struct.inode*, %struct.inode** %3, align 8
  %124 = getelementptr inbounds %struct.inode, %struct.inode* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i64 @S_ISBLK(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %141

128:                                              ; preds = %122, %2
  %129 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %6, align 8
  %130 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.ufs2_inode*, %struct.ufs2_inode** %4, align 8
  %136 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  store i32 %134, i32* %140, align 4
  br label %165

141:                                              ; preds = %122
  %142 = load %struct.inode*, %struct.inode** %3, align 8
  %143 = getelementptr inbounds %struct.inode, %struct.inode* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %141
  %147 = load %struct.ufs2_inode*, %struct.ufs2_inode** %4, align 8
  %148 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 1
  %150 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %6, align 8
  %151 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = call i32 @memcpy(%struct.TYPE_12__* %149, i32* %153, i32 8)
  br label %164

155:                                              ; preds = %141
  %156 = load %struct.ufs2_inode*, %struct.ufs2_inode** %4, align 8
  %157 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %6, align 8
  %160 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = call i32 @memcpy(%struct.TYPE_12__* %158, i32* %162, i32 8)
  br label %164

164:                                              ; preds = %155, %146
  br label %165

165:                                              ; preds = %164, %128
  %166 = load %struct.inode*, %struct.inode** %3, align 8
  %167 = getelementptr inbounds %struct.inode, %struct.inode* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %165
  %171 = load %struct.ufs2_inode*, %struct.ufs2_inode** %4, align 8
  %172 = call i32 @memset(%struct.ufs2_inode* %171, i32 0, i32 128)
  br label %173

173:                                              ; preds = %170, %165
  %174 = call i32 @UFSD(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local %struct.ufs_inode_info* @UFS_I(%struct.inode*) #1

declare dso_local i32 @UFSD(i8*) #1

declare dso_local i8* @cpu_to_fs16(%struct.super_block*, i32) #1

declare dso_local i8* @cpu_to_fs32(%struct.super_block*, i32) #1

declare dso_local i8* @cpu_to_fs64(%struct.super_block*, i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @memset(%struct.ufs2_inode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
