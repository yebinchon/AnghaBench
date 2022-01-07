; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_inode.c_hfs_write_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_inode.c_hfs_write_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i64, i32, i32 }
%struct.writeback_control = type { i32 }
%struct.hfs_find_data = type { i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i8*, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.inode* }

@DBG_INODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"hfs_write_inode: %lu\0A\00", align 1
@HFS_FIRSTUSER_CNID = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@HFS_CDR_DIR = common dso_local global i64 0, align 8
@HFS_CDR_FIL = common dso_local global i64 0, align 8
@S_IWUSR = common dso_local global i32 0, align 4
@HFS_FIL_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfs_write_inode(%struct.inode* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.hfs_find_data, align 8
  %8 = alloca %struct.TYPE_12__, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  store %struct.inode* %9, %struct.inode** %6, align 8
  %10 = load i32, i32* @DBG_INODE, align 4
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @dprint(i32 %10, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = call i32 @hfs_ext_write_extent(%struct.inode* %15)
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @HFS_FIRSTUSER_CNID, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %48

22:                                               ; preds = %2
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %43 [
    i32 128, label %26
    i32 129, label %27
    i32 130, label %35
  ]

26:                                               ; preds = %22
  br label %47

27:                                               ; preds = %22
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.TYPE_13__* @HFS_SB(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @hfs_btree_write(i32 %33)
  store i32 0, i32* %3, align 4
  br label %232

35:                                               ; preds = %22
  %36 = load %struct.inode*, %struct.inode** %4, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = call %struct.TYPE_13__* @HFS_SB(i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @hfs_btree_write(i32 %41)
  store i32 0, i32* %3, align 4
  br label %232

43:                                               ; preds = %22
  %44 = call i32 (...) @BUG()
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %232

47:                                               ; preds = %26
  br label %48

48:                                               ; preds = %47, %2
  %49 = load %struct.inode*, %struct.inode** %4, align 8
  %50 = call i64 @HFS_IS_RSRC(%struct.inode* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load %struct.inode*, %struct.inode** %4, align 8
  %54 = call %struct.TYPE_14__* @HFS_I(%struct.inode* %53)
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = load %struct.inode*, %struct.inode** %55, align 8
  store %struct.inode* %56, %struct.inode** %6, align 8
  br label %57

57:                                               ; preds = %52, %48
  %58 = load %struct.inode*, %struct.inode** %6, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %232

63:                                               ; preds = %57
  %64 = load %struct.inode*, %struct.inode** %6, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = call %struct.TYPE_13__* @HFS_SB(i32 %66)
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @hfs_find_init(i32 %69, %struct.hfs_find_data* %7)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = load i32, i32* @EIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %232

75:                                               ; preds = %63
  %76 = load %struct.inode*, %struct.inode** %6, align 8
  %77 = call %struct.TYPE_14__* @HFS_I(%struct.inode* %76)
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %7, i32 0, i32 3
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 4
  %83 = call i64 @hfs_brec_find(%struct.hfs_find_data* %7)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %75
  br label %230

86:                                               ; preds = %75
  %87 = load %struct.inode*, %struct.inode** %6, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @S_ISDIR(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %137

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %7, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = icmp ult i64 %95, 4
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %98

98:                                               ; preds = %97, %92
  %99 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %7, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %7, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @hfs_bnode_read(i32 %100, %struct.TYPE_12__* %8, i32 %102, i32 4)
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @HFS_CDR_DIR, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %117, label %108

108:                                              ; preds = %98
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @be32_to_cpu(i32 %111)
  %113 = load %struct.inode*, %struct.inode** %4, align 8
  %114 = getelementptr inbounds %struct.inode, %struct.inode* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %112, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %108, %98
  br label %118

118:                                              ; preds = %117, %108
  %119 = load %struct.inode*, %struct.inode** %4, align 8
  %120 = getelementptr inbounds %struct.inode, %struct.inode* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i8* @hfs_u_to_mtime(i32 %121)
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 1
  store i8* %122, i8** %124, align 8
  %125 = load %struct.inode*, %struct.inode** %4, align 8
  %126 = getelementptr inbounds %struct.inode, %struct.inode* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = sub nsw i64 %127, 2
  %129 = call i32 @cpu_to_be16(i64 %128)
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  %132 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %7, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %7, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @hfs_bnode_write(i32 %133, %struct.TYPE_12__* %8, i32 %135, i32 4)
  br label %229

137:                                              ; preds = %86
  %138 = load %struct.inode*, %struct.inode** %4, align 8
  %139 = call i64 @HFS_IS_RSRC(%struct.inode* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %161

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %7, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %7, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @hfs_bnode_read(i32 %143, %struct.TYPE_12__* %8, i32 %145, i32 4)
  %147 = load %struct.inode*, %struct.inode** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 8
  %150 = load i32, i32* %149, align 4
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 7
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 6
  %155 = call i32 @hfs_inode_write_fork(%struct.inode* %147, i32 %150, i32* %152, i32* %154)
  %156 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %7, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %7, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @hfs_bnode_write(i32 %157, %struct.TYPE_12__* %8, i32 %159, i32 4)
  br label %228

161:                                              ; preds = %137
  %162 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %7, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = sext i32 %163 to i64
  %165 = icmp ult i64 %164, 4
  br i1 %165, label %166, label %167

166:                                              ; preds = %161
  br label %167

167:                                              ; preds = %166, %161
  %168 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %7, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %7, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @hfs_bnode_read(i32 %169, %struct.TYPE_12__* %8, i32 %171, i32 4)
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @HFS_CDR_FIL, align 8
  %176 = icmp ne i64 %174, %175
  br i1 %176, label %186, label %177

177:                                              ; preds = %167
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @be32_to_cpu(i32 %180)
  %182 = load %struct.inode*, %struct.inode** %4, align 8
  %183 = getelementptr inbounds %struct.inode, %struct.inode* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = icmp ne i32 %181, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %177, %167
  br label %187

187:                                              ; preds = %186, %177
  %188 = load %struct.inode*, %struct.inode** %4, align 8
  %189 = getelementptr inbounds %struct.inode, %struct.inode* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @S_IWUSR, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %201

194:                                              ; preds = %187
  %195 = load i32, i32* @HFS_FIL_LOCK, align 4
  %196 = xor i32 %195, -1
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 4
  %200 = and i32 %199, %196
  store i32 %200, i32* %198, align 4
  br label %207

201:                                              ; preds = %187
  %202 = load i32, i32* @HFS_FIL_LOCK, align 4
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 4
  %206 = or i32 %205, %202
  store i32 %206, i32* %204, align 4
  br label %207

207:                                              ; preds = %201, %194
  %208 = load %struct.inode*, %struct.inode** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 1
  %216 = call i32 @hfs_inode_write_fork(%struct.inode* %208, i32 %211, i32* %213, i32* %215)
  %217 = load %struct.inode*, %struct.inode** %4, align 8
  %218 = getelementptr inbounds %struct.inode, %struct.inode* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = call i8* @hfs_u_to_mtime(i32 %219)
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 0
  store i8* %220, i8** %222, align 8
  %223 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %7, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %7, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @hfs_bnode_write(i32 %224, %struct.TYPE_12__* %8, i32 %226, i32 4)
  br label %228

228:                                              ; preds = %207, %141
  br label %229

229:                                              ; preds = %228, %118
  br label %230

230:                                              ; preds = %229, %85
  %231 = call i32 @hfs_find_exit(%struct.hfs_find_data* %7)
  store i32 0, i32* %3, align 4
  br label %232

232:                                              ; preds = %230, %72, %62, %43, %35, %27
  %233 = load i32, i32* %3, align 4
  ret i32 %233
}

declare dso_local i32 @dprint(i32, i8*, i32) #1

declare dso_local i32 @hfs_ext_write_extent(%struct.inode*) #1

declare dso_local i32 @hfs_btree_write(i32) #1

declare dso_local %struct.TYPE_13__* @HFS_SB(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @HFS_IS_RSRC(%struct.inode*) #1

declare dso_local %struct.TYPE_14__* @HFS_I(%struct.inode*) #1

declare dso_local i64 @hfs_find_init(i32, %struct.hfs_find_data*) #1

declare dso_local i64 @hfs_brec_find(%struct.hfs_find_data*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @hfs_bnode_read(i32, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i8* @hfs_u_to_mtime(i32) #1

declare dso_local i32 @cpu_to_be16(i64) #1

declare dso_local i32 @hfs_bnode_write(i32, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @hfs_inode_write_fork(%struct.inode*, i32, i32*, i32*) #1

declare dso_local i32 @hfs_find_exit(%struct.hfs_find_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
