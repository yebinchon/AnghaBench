; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_localalloc.c_ocfs2_load_local_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_localalloc.c_ocfs2_load_local_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i64, i64, i32, %struct.buffer_head*, i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.inode = type { i32 }
%struct.ocfs2_local_alloc = type { i64, i64 }
%struct.TYPE_6__ = type { i64 }

@ML_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"Requested local alloc window %d is larger than max possible %u. Using defaults.\0A\00", align 1
@OCFS2_DEFAULT_LOCAL_ALLOC_SIZE = common dso_local global i32 0, align 4
@LOCAL_ALLOC_SYSTEM_INODE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OCFS2_BH_IGNORE_CACHE = common dso_local global i32 0, align 4
@OCFS2_LOCAL_ALLOC_FL = common dso_local global i32 0, align 4
@OCFS2_BITMAP_FL = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Invalid local alloc inode, %llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Local alloc size is invalid (la_size = %u)\0A\00", align 1
@.str.3 = private unnamed_addr constant [79 x i8] c"Local alloc hasn't been recovered!\0Afound = %u, set = %u, taken = %u, off = %u\0A\00", align 1
@OCFS2_LA_ENABLED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"Local alloc window bits = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_load_local_alloc(%struct.ocfs2_super* %0) #0 {
  %2 = alloca %struct.ocfs2_super*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocfs2_dinode*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ocfs2_local_alloc*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %2, align 8
  store i32 0, i32* %3, align 4
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %4, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %5, align 8
  store %struct.inode* null, %struct.inode** %7, align 8
  %9 = call i32 (...) @mlog_entry_void()
  %10 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %11 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %164

15:                                               ; preds = %1
  %16 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %17 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %20 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp uge i64 %18, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %15
  %24 = load i32, i32* @ML_NOTICE, align 4
  %25 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %26 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %29 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = sub i64 %30, 1
  %32 = call i32 (i32, i8*, i64, ...) @mlog(i32 %24, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i64 %27, i64 %31)
  %33 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %34 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @OCFS2_DEFAULT_LOCAL_ALLOC_SIZE, align 4
  %37 = call i64 @ocfs2_megabytes_to_clusters(i32 %35, i32 %36)
  %38 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %39 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %23, %15
  %41 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %42 = load i32, i32* @LOCAL_ALLOC_SYSTEM_INODE, align 4
  %43 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %44 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %41, i32 %42, i32 %45)
  store %struct.inode* %46, %struct.inode** %7, align 8
  %47 = load %struct.inode*, %struct.inode** %7, align 8
  %48 = icmp ne %struct.inode* %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @mlog_errno(i32 %52)
  br label %164

54:                                               ; preds = %40
  %55 = load %struct.inode*, %struct.inode** %7, align 8
  %56 = load i32, i32* @OCFS2_BH_IGNORE_CACHE, align 4
  %57 = call i32 @ocfs2_read_inode_block_full(%struct.inode* %55, %struct.buffer_head** %5, i32 %56)
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @mlog_errno(i32 %61)
  br label %164

63:                                               ; preds = %54
  %64 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %65 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %67, %struct.ocfs2_dinode** %4, align 8
  %68 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %4, align 8
  %69 = call %struct.ocfs2_local_alloc* @OCFS2_LOCAL_ALLOC(%struct.ocfs2_dinode* %68)
  store %struct.ocfs2_local_alloc* %69, %struct.ocfs2_local_alloc** %8, align 8
  %70 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %4, align 8
  %71 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @le32_to_cpu(i64 %72)
  %74 = load i32, i32* @OCFS2_LOCAL_ALLOC_FL, align 4
  %75 = load i32, i32* @OCFS2_BITMAP_FL, align 4
  %76 = or i32 %74, %75
  %77 = and i32 %73, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %63
  %80 = load i32, i32* @ML_ERROR, align 4
  %81 = load %struct.inode*, %struct.inode** %7, align 8
  %82 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %81)
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 (i32, i8*, i64, ...) @mlog(i32 %80, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %84)
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %164

88:                                               ; preds = %63
  %89 = load %struct.ocfs2_local_alloc*, %struct.ocfs2_local_alloc** %8, align 8
  %90 = getelementptr inbounds %struct.ocfs2_local_alloc, %struct.ocfs2_local_alloc* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %103, label %93

93:                                               ; preds = %88
  %94 = load %struct.ocfs2_local_alloc*, %struct.ocfs2_local_alloc** %8, align 8
  %95 = getelementptr inbounds %struct.ocfs2_local_alloc, %struct.ocfs2_local_alloc* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i64 @le16_to_cpu(i64 %96)
  %98 = load %struct.inode*, %struct.inode** %7, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @ocfs2_local_alloc_size(i32 %100)
  %102 = icmp ugt i64 %97, %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %93, %88
  %104 = load i32, i32* @ML_ERROR, align 4
  %105 = load %struct.ocfs2_local_alloc*, %struct.ocfs2_local_alloc** %8, align 8
  %106 = getelementptr inbounds %struct.ocfs2_local_alloc, %struct.ocfs2_local_alloc* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i64 @le16_to_cpu(i64 %107)
  %109 = call i32 (i32, i8*, i64, ...) @mlog(i32 %104, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i64 %108)
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  br label %164

112:                                              ; preds = %93
  %113 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %4, align 8
  %114 = call i32 @ocfs2_local_alloc_count_bits(%struct.ocfs2_dinode* %113)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %136, label %117

117:                                              ; preds = %112
  %118 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %4, align 8
  %119 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %136, label %124

124:                                              ; preds = %117
  %125 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %4, align 8
  %126 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %136, label %131

131:                                              ; preds = %124
  %132 = load %struct.ocfs2_local_alloc*, %struct.ocfs2_local_alloc** %8, align 8
  %133 = getelementptr inbounds %struct.ocfs2_local_alloc, %struct.ocfs2_local_alloc* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %157

136:                                              ; preds = %131, %124, %117, %112
  %137 = load i32, i32* @ML_ERROR, align 4
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %4, align 8
  %141 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @le32_to_cpu(i64 %144)
  %146 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %4, align 8
  %147 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @le32_to_cpu(i64 %150)
  %152 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %4, align 8
  %153 = call %struct.ocfs2_local_alloc* @OCFS2_LOCAL_ALLOC(%struct.ocfs2_dinode* %152)
  %154 = getelementptr inbounds %struct.ocfs2_local_alloc, %struct.ocfs2_local_alloc* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = call i32 (i32, i8*, i64, ...) @mlog(i32 %137, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i64 %139, i32 %145, i32 %151, i64 %155)
  br label %157

157:                                              ; preds = %136, %131
  %158 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %159 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %160 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %159, i32 0, i32 3
  store %struct.buffer_head* %158, %struct.buffer_head** %160, align 8
  %161 = load i32, i32* @OCFS2_LA_ENABLED, align 4
  %162 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %163 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 8
  br label %164

164:                                              ; preds = %157, %103, %79, %60, %49, %14
  %165 = load i32, i32* %3, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %169 = call i32 @brelse(%struct.buffer_head* %168)
  br label %170

170:                                              ; preds = %167, %164
  %171 = load %struct.inode*, %struct.inode** %7, align 8
  %172 = icmp ne %struct.inode* %171, null
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = load %struct.inode*, %struct.inode** %7, align 8
  %175 = call i32 @iput(%struct.inode* %174)
  br label %176

176:                                              ; preds = %173, %170
  %177 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %178 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = call i32 (i32, i8*, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %179)
  %181 = load i32, i32* %3, align 4
  %182 = call i32 @mlog_exit(i32 %181)
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @mlog(i32, i8*, i64, ...) #1

declare dso_local i64 @ocfs2_megabytes_to_clusters(i32, i32) #1

declare dso_local %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_read_inode_block_full(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local %struct.ocfs2_local_alloc* @OCFS2_LOCAL_ALLOC(%struct.ocfs2_dinode*) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local %struct.TYPE_6__* @OCFS2_I(%struct.inode*) #1

declare dso_local i64 @le16_to_cpu(i64) #1

declare dso_local i64 @ocfs2_local_alloc_size(i32) #1

declare dso_local i32 @ocfs2_local_alloc_count_bits(%struct.ocfs2_dinode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
