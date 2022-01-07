; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_extent_map.c_ocfs2_fiemap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_extent_map.c_ocfs2_fiemap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.fiemap_extent_info = type { i32 }
%struct.ocfs2_super = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_extent_rec = type { i64, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@OCFS2_FIEMAP_FLAGS = common dso_local global i32 0, align 4
@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@OCFS2_EXT_UNWRITTEN = common dso_local global i32 0, align 4
@FIEMAP_EXTENT_UNWRITTEN = common dso_local global i32 0, align 4
@FIEMAP_EXTENT_LAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_fiemap(%struct.inode* %0, %struct.fiemap_extent_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.fiemap_extent_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ocfs2_super*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.buffer_head*, align 8
  %20 = alloca %struct.ocfs2_extent_rec, align 8
  %21 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.fiemap_extent_info* %1, %struct.fiemap_extent_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.ocfs2_super* @OCFS2_SB(i32 %24)
  store %struct.ocfs2_super* %25, %struct.ocfs2_super** %15, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %19, align 8
  %26 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %7, align 8
  %27 = load i32, i32* @OCFS2_FIEMAP_FLAGS, align 4
  %28 = call i32 @fiemap_check_flags(%struct.fiemap_extent_info* %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %5, align 4
  br label %177

33:                                               ; preds = %4
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = call i32 @ocfs2_inode_lock(%struct.inode* %34, %struct.buffer_head** %19, i32 0)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @mlog_errno(i32 %39)
  br label %175

41:                                               ; preds = %33
  %42 = load %struct.inode*, %struct.inode** %6, align 8
  %43 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %42)
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = call i32 @down_read(i32* %44)
  %46 = load %struct.inode*, %struct.inode** %6, align 8
  %47 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %46)
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %41
  %54 = load %struct.inode*, %struct.inode** %6, align 8
  %55 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %56 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @ocfs2_fiemap_inline(%struct.inode* %54, %struct.buffer_head* %55, %struct.fiemap_extent_info* %56, i32 %57)
  store i32 %58, i32* %10, align 4
  br label %166

59:                                               ; preds = %41
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.ocfs2_super*, %struct.ocfs2_super** %15, align 8
  %62 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = lshr i32 %60, %63
  store i32 %64, i32* %13, align 4
  %65 = load %struct.inode*, %struct.inode** %6, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = add i32 %68, %69
  %71 = call i32 @ocfs2_clusters_for_bytes(i32 %67, i32 %70)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %12, align 4
  %74 = sub i32 %73, %72
  store i32 %74, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %75

75:                                               ; preds = %153, %99, %59
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  br label %83

83:                                               ; preds = %79, %75
  %84 = phi i1 [ false, %75 ], [ %82, %79 ]
  br i1 %84, label %85, label %161

85:                                               ; preds = %83
  %86 = load %struct.inode*, %struct.inode** %6, align 8
  %87 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @ocfs2_get_clusters_nocache(%struct.inode* %86, %struct.buffer_head* %87, i32 %88, i32* %14, %struct.ocfs2_extent_rec* %20, i32* %11)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @mlog_errno(i32 %93)
  br label %175

95:                                               ; preds = %85
  %96 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %20, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* %13, align 4
  %102 = add i32 %101, %100
  store i32 %102, i32* %13, align 4
  br label %75

103:                                              ; preds = %95
  store i32 0, i32* %21, align 4
  %104 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %20, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @OCFS2_EXT_UNWRITTEN, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %103
  %110 = load i32, i32* @FIEMAP_EXTENT_UNWRITTEN, align 4
  %111 = load i32, i32* %21, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %21, align 4
  br label %113

113:                                              ; preds = %109, %103
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load i32, i32* @FIEMAP_EXTENT_LAST, align 4
  %118 = load i32, i32* %21, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %21, align 4
  br label %120

120:                                              ; preds = %116, %113
  %121 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %20, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @le16_to_cpu(i32 %122)
  %124 = load %struct.ocfs2_super*, %struct.ocfs2_super** %15, align 8
  %125 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = shl i32 %123, %126
  store i32 %127, i32* %16, align 4
  %128 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %20, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @le64_to_cpu(i64 %129)
  %131 = load %struct.ocfs2_super*, %struct.ocfs2_super** %15, align 8
  %132 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %131, i32 0, i32 1
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = shl i32 %130, %135
  store i32 %136, i32* %17, align 4
  %137 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %20, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @le32_to_cpu(i32 %138)
  %140 = load %struct.ocfs2_super*, %struct.ocfs2_super** %15, align 8
  %141 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = shl i32 %139, %142
  store i32 %143, i32* %18, align 4
  %144 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %7, align 8
  %145 = load i32, i32* %18, align 4
  %146 = load i32, i32* %17, align 4
  %147 = load i32, i32* %16, align 4
  %148 = load i32, i32* %21, align 4
  %149 = call i32 @fiemap_fill_next_extent(%struct.fiemap_extent_info* %144, i32 %145, i32 %146, i32 %147, i32 %148)
  store i32 %149, i32* %10, align 4
  %150 = load i32, i32* %10, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %120
  br label %161

153:                                              ; preds = %120
  %154 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %20, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @le32_to_cpu(i32 %155)
  %157 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %20, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @le16_to_cpu(i32 %158)
  %160 = add i32 %156, %159
  store i32 %160, i32* %13, align 4
  br label %75

161:                                              ; preds = %152, %83
  %162 = load i32, i32* %10, align 4
  %163 = icmp sgt i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %161
  store i32 0, i32* %10, align 4
  br label %165

165:                                              ; preds = %164, %161
  br label %166

166:                                              ; preds = %165, %53
  %167 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %168 = call i32 @brelse(%struct.buffer_head* %167)
  %169 = load %struct.inode*, %struct.inode** %6, align 8
  %170 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %169)
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  %172 = call i32 @up_read(i32* %171)
  %173 = load %struct.inode*, %struct.inode** %6, align 8
  %174 = call i32 @ocfs2_inode_unlock(%struct.inode* %173, i32 0)
  br label %175

175:                                              ; preds = %166, %92, %38
  %176 = load i32, i32* %10, align 4
  store i32 %176, i32* %5, align 4
  br label %177

177:                                              ; preds = %175, %31
  %178 = load i32, i32* %5, align 4
  ret i32 %178
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @fiemap_check_flags(%struct.fiemap_extent_info*, i32) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_4__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_fiemap_inline(%struct.inode*, %struct.buffer_head*, %struct.fiemap_extent_info*, i32) #1

declare dso_local i32 @ocfs2_clusters_for_bytes(i32, i32) #1

declare dso_local i32 @ocfs2_get_clusters_nocache(%struct.inode*, %struct.buffer_head*, i32, i32*, %struct.ocfs2_extent_rec*, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le64_to_cpu(i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @fiemap_fill_next_extent(%struct.fiemap_extent_info*, i32, i32, i32, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
