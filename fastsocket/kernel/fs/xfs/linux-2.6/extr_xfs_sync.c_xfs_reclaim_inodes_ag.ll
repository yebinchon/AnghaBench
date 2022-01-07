; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_sync.c_xfs_reclaim_inodes_ag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_sync.c_xfs_reclaim_inodes_ag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32 }
%struct.xfs_perag = type { i64, i64, i32, i32 }
%struct.xfs_inode = type { i64 }

@SYNC_TRYLOCK = common dso_local global i32 0, align 4
@XFS_ICI_RECLAIM_TAG = common dso_local global i32 0, align 4
@XFS_LOOKUP_BATCH = common dso_local global i32 0, align 4
@EFSCORRUPTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_reclaim_inodes_ag(%struct.xfs_mount* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.xfs_mount*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.xfs_perag*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.xfs_inode*, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @SYNC_TRYLOCK, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %11, align 4
  br label %24

24:                                               ; preds = %208, %3
  store i64 0, i64* %10, align 8
  store i32 0, i32* %12, align 4
  br label %25

25:                                               ; preds = %192, %43, %24
  %26 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i32, i32* @XFS_ICI_RECLAIM_TAG, align 4
  %29 = call %struct.xfs_perag* @xfs_perag_get_tag(%struct.xfs_mount* %26, i64 %27, i32 %28)
  store %struct.xfs_perag* %29, %struct.xfs_perag** %7, align 8
  %30 = icmp ne %struct.xfs_perag* %29, null
  br i1 %30, label %31, label %198

31:                                               ; preds = %25
  store i64 0, i64* %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %32 = load %struct.xfs_perag*, %struct.xfs_perag** %7, align 8
  %33 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %31
  %39 = load %struct.xfs_perag*, %struct.xfs_perag** %7, align 8
  %40 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %39, i32 0, i32 2
  %41 = call i32 @mutex_trylock(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* %12, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %12, align 4
  %46 = load %struct.xfs_perag*, %struct.xfs_perag** %7, align 8
  %47 = call i32 @xfs_perag_put(%struct.xfs_perag* %46)
  br label %25

48:                                               ; preds = %38
  %49 = load %struct.xfs_perag*, %struct.xfs_perag** %7, align 8
  %50 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %13, align 8
  br label %56

52:                                               ; preds = %31
  %53 = load %struct.xfs_perag*, %struct.xfs_perag** %7, align 8
  %54 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %53, i32 0, i32 2
  %55 = call i32 @mutex_lock(i32* %54)
  br label %56

56:                                               ; preds = %52, %48
  br label %57

57:                                               ; preds = %177, %56
  %58 = load i32, i32* @XFS_LOOKUP_BATCH, align 4
  %59 = zext i32 %58 to i64
  %60 = call i8* @llvm.stacksave()
  store i8* %60, i8** %16, align 8
  %61 = alloca %struct.xfs_inode*, i64 %59, align 16
  store i64 %59, i64* %17, align 8
  %62 = call i32 (...) @rcu_read_lock()
  %63 = load %struct.xfs_perag*, %struct.xfs_perag** %7, align 8
  %64 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %63, i32 0, i32 3
  %65 = bitcast %struct.xfs_inode** %61 to i8**
  %66 = load i64, i64* %13, align 8
  %67 = load i32, i32* @XFS_LOOKUP_BATCH, align 4
  %68 = load i32, i32* @XFS_ICI_RECLAIM_TAG, align 4
  %69 = call i32 @radix_tree_gang_lookup_tag(i32* %64, i8** %65, i64 %66, i32 %67, i32 %68)
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %57
  store i32 1, i32* %14, align 4
  %73 = call i32 (...) @rcu_read_unlock()
  store i32 5, i32* %19, align 4
  br label %163

74:                                               ; preds = %57
  store i32 0, i32* %18, align 4
  br label %75

75:                                               ; preds = %122, %74
  %76 = load i32, i32* %18, align 4
  %77 = load i32, i32* %15, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %125

79:                                               ; preds = %75
  %80 = load i32, i32* %18, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.xfs_inode*, %struct.xfs_inode** %61, i64 %81
  %83 = load %struct.xfs_inode*, %struct.xfs_inode** %82, align 8
  store %struct.xfs_inode* %83, %struct.xfs_inode** %20, align 8
  %84 = load i32, i32* %14, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %79
  %87 = load %struct.xfs_inode*, %struct.xfs_inode** %20, align 8
  %88 = load i32, i32* %5, align 4
  %89 = call i64 @xfs_reclaim_inode_grab(%struct.xfs_inode* %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86, %79
  %92 = load i32, i32* %18, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.xfs_inode*, %struct.xfs_inode** %61, i64 %93
  store %struct.xfs_inode* null, %struct.xfs_inode** %94, align 8
  br label %95

95:                                               ; preds = %91, %86
  %96 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %97 = load %struct.xfs_inode*, %struct.xfs_inode** %20, align 8
  %98 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i64 @XFS_INO_TO_AGNO(%struct.xfs_mount* %96, i64 %99)
  %101 = load %struct.xfs_perag*, %struct.xfs_perag** %7, align 8
  %102 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %100, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %95
  br label %122

106:                                              ; preds = %95
  %107 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %108 = load %struct.xfs_inode*, %struct.xfs_inode** %20, align 8
  %109 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, 1
  %112 = call i64 @XFS_INO_TO_AGINO(%struct.xfs_mount* %107, i64 %111)
  store i64 %112, i64* %13, align 8
  %113 = load i64, i64* %13, align 8
  %114 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %115 = load %struct.xfs_inode*, %struct.xfs_inode** %20, align 8
  %116 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i64 @XFS_INO_TO_AGINO(%struct.xfs_mount* %114, i64 %117)
  %119 = icmp ult i64 %113, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %106
  store i32 1, i32* %14, align 4
  br label %121

121:                                              ; preds = %120, %106
  br label %122

122:                                              ; preds = %121, %105
  %123 = load i32, i32* %18, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %18, align 4
  br label %75

125:                                              ; preds = %75
  %126 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %18, align 4
  br label %127

127:                                              ; preds = %155, %125
  %128 = load i32, i32* %18, align 4
  %129 = load i32, i32* %15, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %158

131:                                              ; preds = %127
  %132 = load i32, i32* %18, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.xfs_inode*, %struct.xfs_inode** %61, i64 %133
  %135 = load %struct.xfs_inode*, %struct.xfs_inode** %134, align 8
  %136 = icmp ne %struct.xfs_inode* %135, null
  br i1 %136, label %138, label %137

137:                                              ; preds = %131
  br label %155

138:                                              ; preds = %131
  %139 = load i32, i32* %18, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.xfs_inode*, %struct.xfs_inode** %61, i64 %140
  %142 = load %struct.xfs_inode*, %struct.xfs_inode** %141, align 8
  %143 = load %struct.xfs_perag*, %struct.xfs_perag** %7, align 8
  %144 = load i32, i32* %5, align 4
  %145 = call i32 @xfs_reclaim_inode(%struct.xfs_inode* %142, %struct.xfs_perag* %143, i32 %144)
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %8, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %138
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* @EFSCORRUPTED, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %148
  %153 = load i32, i32* %8, align 4
  store i32 %153, i32* %9, align 4
  br label %154

154:                                              ; preds = %152, %148, %138
  br label %155

155:                                              ; preds = %154, %137
  %156 = load i32, i32* %18, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %18, align 4
  br label %127

158:                                              ; preds = %127
  %159 = load i32, i32* @XFS_LOOKUP_BATCH, align 4
  %160 = load i32*, i32** %6, align 8
  %161 = load i32, i32* %160, align 4
  %162 = sub nsw i32 %161, %159
  store i32 %162, i32* %160, align 4
  store i32 0, i32* %19, align 4
  br label %163

163:                                              ; preds = %158, %72
  %164 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %164)
  %165 = load i32, i32* %19, align 4
  switch i32 %165, label %212 [
    i32 0, label %166
    i32 5, label %179
  ]

166:                                              ; preds = %163
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %15, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %167
  %171 = load i32, i32* %14, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %170
  %174 = load i32*, i32** %6, align 8
  %175 = load i32, i32* %174, align 4
  %176 = icmp sgt i32 %175, 0
  br label %177

177:                                              ; preds = %173, %170, %167
  %178 = phi i1 [ false, %170 ], [ false, %167 ], [ %176, %173 ]
  br i1 %178, label %57, label %179

179:                                              ; preds = %177, %163
  %180 = load i32, i32* %11, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %179
  %183 = load i32, i32* %14, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %189, label %185

185:                                              ; preds = %182
  %186 = load i64, i64* %13, align 8
  %187 = load %struct.xfs_perag*, %struct.xfs_perag** %7, align 8
  %188 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %187, i32 0, i32 1
  store i64 %186, i64* %188, align 8
  br label %192

189:                                              ; preds = %182, %179
  %190 = load %struct.xfs_perag*, %struct.xfs_perag** %7, align 8
  %191 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %190, i32 0, i32 1
  store i64 0, i64* %191, align 8
  br label %192

192:                                              ; preds = %189, %185
  %193 = load %struct.xfs_perag*, %struct.xfs_perag** %7, align 8
  %194 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %193, i32 0, i32 2
  %195 = call i32 @mutex_unlock(i32* %194)
  %196 = load %struct.xfs_perag*, %struct.xfs_perag** %7, align 8
  %197 = call i32 @xfs_perag_put(%struct.xfs_perag* %196)
  br label %25

198:                                              ; preds = %25
  %199 = load i32, i32* %11, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %209

201:                                              ; preds = %198
  %202 = load i32, i32* %12, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %201
  %205 = load i32*, i32** %6, align 8
  %206 = load i32, i32* %205, align 4
  %207 = icmp sgt i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %204
  store i32 0, i32* %11, align 4
  br label %24

209:                                              ; preds = %204, %201, %198
  %210 = load i32, i32* %9, align 4
  %211 = call i32 @XFS_ERROR(i32 %210)
  ret i32 %211

212:                                              ; preds = %163
  unreachable
}

declare dso_local %struct.xfs_perag* @xfs_perag_get_tag(%struct.xfs_mount*, i64, i32) #1

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i32 @xfs_perag_put(%struct.xfs_perag*) #1

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @radix_tree_gang_lookup_tag(i32*, i8**, i64, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @xfs_reclaim_inode_grab(%struct.xfs_inode*, i32) #1

declare dso_local i64 @XFS_INO_TO_AGNO(%struct.xfs_mount*, i64) #1

declare dso_local i64 @XFS_INO_TO_AGINO(%struct.xfs_mount*, i64) #1

declare dso_local i32 @xfs_reclaim_inode(%struct.xfs_inode*, %struct.xfs_perag*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @XFS_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
