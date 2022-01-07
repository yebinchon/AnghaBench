; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_extent.c_extAlloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_extent.c_extAlloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.jfs_sb_info = type { i32 }
%struct.TYPE_11__ = type { i32 }

@MAXXLEN = common dso_local global i32 0, align 4
@XAD_NOTRECORDED = common dso_local global i32 0, align 4
@EDQUOT = common dso_local global i32 0, align 4
@COMMIT_Synclist = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @extAlloc(%struct.inode* %0, i32 %1, i32 %2, %struct.TYPE_10__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.jfs_sb_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load %struct.inode*, %struct.inode** %7, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.jfs_sb_info* @JFS_SBI(i32 %22)
  store %struct.jfs_sb_info* %23, %struct.jfs_sb_info** %12, align 8
  store i32 0, i32* %17, align 4
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @txBeginAnon(i32 %26)
  %28 = load %struct.inode*, %struct.inode** %7, align 8
  %29 = call %struct.TYPE_11__* @JFS_IP(%struct.inode* %28)
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @MAXXLEN, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %5
  %36 = load i32, i32* @MAXXLEN, align 4
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %35, %5
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %12, align 8
  %40 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %38, %41
  store i32 %42, i32* %15, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %44 = call i32 @addressXAD(%struct.TYPE_10__* %43)
  store i32 %44, i32* %16, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %75

46:                                               ; preds = %37
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %48 = call i32 @lengthXAD(%struct.TYPE_10__* %47)
  store i32 %48, i32* %13, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %50 = call i32 @offsetXAD(%struct.TYPE_10__* %49)
  %51 = load i32, i32* %13, align 4
  %52 = add nsw i32 %50, %51
  %53 = load i32, i32* %15, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %46
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @XAD_NOTRECORDED, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 1, i32 0
  %65 = icmp eq i32 %56, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %55
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %67, %68
  store i32 %69, i32* %17, align 4
  br label %70

70:                                               ; preds = %66, %55, %46
  %71 = load i32, i32* %13, align 4
  %72 = sub nsw i32 %71, 1
  %73 = load i32, i32* %16, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %16, align 4
  br label %75

75:                                               ; preds = %70, %37
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %13, align 4
  %77 = load %struct.inode*, %struct.inode** %7, align 8
  %78 = load i32, i32* %16, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* %16, align 4
  br label %85

82:                                               ; preds = %75
  %83 = load %struct.inode*, %struct.inode** %7, align 8
  %84 = call i32 @INOHINT(%struct.inode* %83)
  br label %85

85:                                               ; preds = %82, %80
  %86 = phi i32 [ %81, %80 ], [ %84, %82 ]
  %87 = call i32 @extBalloc(%struct.inode* %77, i32 %86, i32* %13, i32* %14)
  store i32 %87, i32* %18, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = load %struct.inode*, %struct.inode** %7, align 8
  %91 = call %struct.TYPE_11__* @JFS_IP(%struct.inode* %90)
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = call i32 @mutex_unlock(i32* %92)
  %94 = load i32, i32* %18, align 4
  store i32 %94, i32* %6, align 4
  br label %179

95:                                               ; preds = %85
  %96 = load %struct.inode*, %struct.inode** %7, align 8
  %97 = load i32, i32* %13, align 4
  %98 = call i64 @vfs_dq_alloc_block(%struct.inode* %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %95
  %101 = load %struct.inode*, %struct.inode** %7, align 8
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %13, align 4
  %104 = call i32 @dbFree(%struct.inode* %101, i32 %102, i32 %103)
  %105 = load %struct.inode*, %struct.inode** %7, align 8
  %106 = call %struct.TYPE_11__* @JFS_IP(%struct.inode* %105)
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = call i32 @mutex_unlock(i32* %107)
  %109 = load i32, i32* @EDQUOT, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %6, align 4
  br label %179

111:                                              ; preds = %95
  %112 = load i32, i32* %11, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = load i32, i32* @XAD_NOTRECORDED, align 4
  br label %117

116:                                              ; preds = %111
  br label %117

117:                                              ; preds = %116, %114
  %118 = phi i32 [ %115, %114 ], [ 0, %116 ]
  store i32 %118, i32* %19, align 4
  %119 = load i32, i32* %17, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %117
  %122 = load i32, i32* %17, align 4
  %123 = load i32, i32* %14, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %121
  %126 = load %struct.inode*, %struct.inode** %7, align 8
  %127 = load i32, i32* %15, align 4
  %128 = load i32, i32* %13, align 4
  %129 = call i32 @xtExtend(i32 0, %struct.inode* %126, i32 %127, i32 %128, i32 0)
  store i32 %129, i32* %18, align 4
  br label %136

130:                                              ; preds = %121, %117
  %131 = load %struct.inode*, %struct.inode** %7, align 8
  %132 = load i32, i32* %19, align 4
  %133 = load i32, i32* %15, align 4
  %134 = load i32, i32* %13, align 4
  %135 = call i32 @xtInsert(i32 0, %struct.inode* %131, i32 %132, i32 %133, i32 %134, i32* %14, i32 0)
  store i32 %135, i32* %18, align 4
  br label %136

136:                                              ; preds = %130, %125
  %137 = load i32, i32* %18, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %152

139:                                              ; preds = %136
  %140 = load %struct.inode*, %struct.inode** %7, align 8
  %141 = load i32, i32* %14, align 4
  %142 = load i32, i32* %13, align 4
  %143 = call i32 @dbFree(%struct.inode* %140, i32 %141, i32 %142)
  %144 = load %struct.inode*, %struct.inode** %7, align 8
  %145 = load i32, i32* %13, align 4
  %146 = call i32 @vfs_dq_free_block(%struct.inode* %144, i32 %145)
  %147 = load %struct.inode*, %struct.inode** %7, align 8
  %148 = call %struct.TYPE_11__* @JFS_IP(%struct.inode* %147)
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  %150 = call i32 @mutex_unlock(i32* %149)
  %151 = load i32, i32* %18, align 4
  store i32 %151, i32* %6, align 4
  br label %179

152:                                              ; preds = %136
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %154 = load i32, i32* %14, align 4
  %155 = call i32 @XADaddress(%struct.TYPE_10__* %153, i32 %154)
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %157 = load i32, i32* %13, align 4
  %158 = call i32 @XADlength(%struct.TYPE_10__* %156, i32 %157)
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %160 = load i32, i32* %15, align 4
  %161 = call i32 @XADoffset(%struct.TYPE_10__* %159, i32 %160)
  %162 = load i32, i32* %19, align 4
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 4
  %165 = load %struct.inode*, %struct.inode** %7, align 8
  %166 = call i32 @mark_inode_dirty(%struct.inode* %165)
  %167 = load %struct.inode*, %struct.inode** %7, align 8
  %168 = call %struct.TYPE_11__* @JFS_IP(%struct.inode* %167)
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  %170 = call i32 @mutex_unlock(i32* %169)
  %171 = load i32, i32* @COMMIT_Synclist, align 4
  %172 = load %struct.inode*, %struct.inode** %7, align 8
  %173 = call i64 @test_and_clear_cflag(i32 %171, %struct.inode* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %152
  %176 = load %struct.inode*, %struct.inode** %7, align 8
  %177 = call i32 @jfs_commit_inode(%struct.inode* %176, i32 0)
  br label %178

178:                                              ; preds = %175, %152
  store i32 0, i32* %6, align 4
  br label %179

179:                                              ; preds = %178, %139, %100, %89
  %180 = load i32, i32* %6, align 4
  ret i32 %180
}

declare dso_local %struct.jfs_sb_info* @JFS_SBI(i32) #1

declare dso_local i32 @txBeginAnon(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_11__* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @addressXAD(%struct.TYPE_10__*) #1

declare dso_local i32 @lengthXAD(%struct.TYPE_10__*) #1

declare dso_local i32 @offsetXAD(%struct.TYPE_10__*) #1

declare dso_local i32 @extBalloc(%struct.inode*, i32, i32*, i32*) #1

declare dso_local i32 @INOHINT(%struct.inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @vfs_dq_alloc_block(%struct.inode*, i32) #1

declare dso_local i32 @dbFree(%struct.inode*, i32, i32) #1

declare dso_local i32 @xtExtend(i32, %struct.inode*, i32, i32, i32) #1

declare dso_local i32 @xtInsert(i32, %struct.inode*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @vfs_dq_free_block(%struct.inode*, i32) #1

declare dso_local i32 @XADaddress(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @XADlength(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @XADoffset(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i64 @test_and_clear_cflag(i32, %struct.inode*) #1

declare dso_local i32 @jfs_commit_inode(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
