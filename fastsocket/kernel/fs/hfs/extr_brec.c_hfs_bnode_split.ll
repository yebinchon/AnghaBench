; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_brec.c_hfs_bnode_split.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_brec.c_hfs_bnode_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfs_bnode = type { i64, i64, i64, i32, i32, i32, i32 }
%struct.hfs_find_data = type { i32, i32, i32, %struct.hfs_bnode*, %struct.hfs_btree* }
%struct.hfs_btree = type { i32, i64, i32 }
%struct.hfs_bnode_desc = type { i8*, i8*, i8*, i64, i32, i32 }

@DBG_BNODE_MOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"split_nodes: %d - %d - %d\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hfs_bnode* (%struct.hfs_find_data*)* @hfs_bnode_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hfs_bnode* @hfs_bnode_split(%struct.hfs_find_data* %0) #0 {
  %2 = alloca %struct.hfs_bnode*, align 8
  %3 = alloca %struct.hfs_find_data*, align 8
  %4 = alloca %struct.hfs_btree*, align 8
  %5 = alloca %struct.hfs_bnode*, align 8
  %6 = alloca %struct.hfs_bnode*, align 8
  %7 = alloca %struct.hfs_bnode*, align 8
  %8 = alloca %struct.hfs_bnode_desc, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.hfs_find_data* %0, %struct.hfs_find_data** %3, align 8
  %16 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %17 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %16, i32 0, i32 4
  %18 = load %struct.hfs_btree*, %struct.hfs_btree** %17, align 8
  store %struct.hfs_btree* %18, %struct.hfs_btree** %4, align 8
  %19 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %20 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %19, i32 0, i32 3
  %21 = load %struct.hfs_bnode*, %struct.hfs_bnode** %20, align 8
  store %struct.hfs_bnode* %21, %struct.hfs_bnode** %5, align 8
  %22 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %23 = call %struct.hfs_bnode* @hfs_bmap_alloc(%struct.hfs_btree* %22)
  store %struct.hfs_bnode* %23, %struct.hfs_bnode** %6, align 8
  %24 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %25 = call i64 @IS_ERR(%struct.hfs_bnode* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  store %struct.hfs_bnode* %28, %struct.hfs_bnode** %2, align 8
  br label %321

29:                                               ; preds = %1
  %30 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %31 = call i32 @hfs_bnode_get(%struct.hfs_bnode* %30)
  %32 = load i32, i32* @DBG_BNODE_MOD, align 4
  %33 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %34 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %37 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %40 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @dprint(i32 %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %35, i64 %38, i64 %41)
  %43 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %44 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %47 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %49 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %52 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %51, i32 0, i32 2
  store i64 %50, i64* %52, align 8
  %53 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %54 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %57 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %56, i32 0, i32 6
  store i32 %55, i32* %57, align 4
  %58 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %59 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %62 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 8
  %63 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %64 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %67 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 4
  %68 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %69 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %29
  %73 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %74 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %75 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call %struct.hfs_bnode* @hfs_bnode_find(%struct.hfs_btree* %73, i64 %76)
  store %struct.hfs_bnode* %77, %struct.hfs_bnode** %7, align 8
  br label %79

78:                                               ; preds = %29
  store %struct.hfs_bnode* null, %struct.hfs_bnode** %7, align 8
  br label %79

79:                                               ; preds = %78, %72
  %80 = load %struct.hfs_bnode*, %struct.hfs_bnode** %7, align 8
  %81 = call i64 @IS_ERR(%struct.hfs_bnode* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %85 = call i32 @hfs_bnode_put(%struct.hfs_bnode* %84)
  %86 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %87 = call i32 @hfs_bnode_put(%struct.hfs_bnode* %86)
  %88 = load %struct.hfs_bnode*, %struct.hfs_bnode** %7, align 8
  store %struct.hfs_bnode* %88, %struct.hfs_bnode** %2, align 8
  br label %321

89:                                               ; preds = %79
  %90 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %91 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sdiv i32 %92, 2
  %94 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %95 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = mul nsw i32 %96, 2
  %98 = sub nsw i32 %93, %97
  %99 = sub nsw i32 %98, 14
  store i32 %99, i32* %15, align 4
  %100 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %101 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sub nsw i32 %102, 4
  store i32 %103, i32* %12, align 4
  store i32 1, i32* %9, align 4
  br label %104

104:                                              ; preds = %121, %89
  %105 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @hfs_bnode_read_u16(%struct.hfs_bnode* %105, i32 %106)
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %15, align 4
  %110 = icmp sgt i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  br label %136

112:                                              ; preds = %104
  %113 = load i32, i32* %12, align 4
  %114 = sub nsw i32 %113, 2
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %9, align 4
  %117 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %118 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = icmp slt i32 %116, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %112
  br label %104

122:                                              ; preds = %112
  %123 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %124 = call i32 @hfs_bnode_put(%struct.hfs_bnode* %123)
  %125 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %126 = call i32 @hfs_bnode_put(%struct.hfs_bnode* %125)
  %127 = load %struct.hfs_bnode*, %struct.hfs_bnode** %7, align 8
  %128 = icmp ne %struct.hfs_bnode* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %122
  %130 = load %struct.hfs_bnode*, %struct.hfs_bnode** %7, align 8
  %131 = call i32 @hfs_bnode_put(%struct.hfs_bnode* %130)
  br label %132

132:                                              ; preds = %129, %122
  %133 = load i32, i32* @ENOSPC, align 4
  %134 = sub nsw i32 0, %133
  %135 = call %struct.hfs_bnode* @ERR_PTR(i32 %134)
  store %struct.hfs_bnode* %135, %struct.hfs_bnode** %2, align 8
  br label %321

136:                                              ; preds = %111
  %137 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %138 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %139, 1
  %141 = load i32, i32* %9, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %151

143:                                              ; preds = %136
  %144 = load i32, i32* %12, align 4
  %145 = add nsw i32 %144, 2
  store i32 %145, i32* %12, align 4
  %146 = load i32, i32* %9, align 4
  %147 = add nsw i32 %146, -1
  store i32 %147, i32* %9, align 4
  %148 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %149 = load i32, i32* %12, align 4
  %150 = call i32 @hfs_bnode_read_u16(%struct.hfs_bnode* %148, i32 %149)
  store i32 %150, i32* %13, align 4
  br label %176

151:                                              ; preds = %136
  %152 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %153 = call i32 @hfs_bnode_put(%struct.hfs_bnode* %152)
  %154 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %155 = call i32 @hfs_bnode_get(%struct.hfs_bnode* %154)
  %156 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %157 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %158 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %157, i32 0, i32 3
  store %struct.hfs_bnode* %156, %struct.hfs_bnode** %158, align 8
  %159 = load i32, i32* %9, align 4
  %160 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %161 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = sub nsw i32 %162, %159
  store i32 %163, i32* %161, align 8
  %164 = load i32, i32* %13, align 4
  %165 = sub nsw i32 %164, 14
  %166 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %167 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = sub nsw i32 %168, %165
  store i32 %169, i32* %167, align 4
  %170 = load i32, i32* %13, align 4
  %171 = sub nsw i32 %170, 14
  %172 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %173 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = sub nsw i32 %174, %171
  store i32 %175, i32* %173, align 8
  br label %176

176:                                              ; preds = %151, %143
  %177 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %178 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* %9, align 4
  %181 = sub nsw i32 %179, %180
  %182 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %183 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %182, i32 0, i32 3
  store i32 %181, i32* %183, align 8
  %184 = load i32, i32* %9, align 4
  %185 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %186 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %185, i32 0, i32 3
  store i32 %184, i32* %186, align 8
  %187 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %188 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = sub nsw i32 %189, 2
  store i32 %190, i32* %10, align 4
  store i32 14, i32* %11, align 4
  %191 = load i32, i32* %13, align 4
  %192 = load i32, i32* %11, align 4
  %193 = sub nsw i32 %191, %192
  store i32 %193, i32* %15, align 4
  %194 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %195 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  store i32 %196, i32* %9, align 4
  %197 = load i32, i32* %13, align 4
  store i32 %197, i32* %14, align 4
  br label %198

198:                                              ; preds = %201, %176
  %199 = load i32, i32* %9, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %218

201:                                              ; preds = %198
  %202 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %203 = load i32, i32* %10, align 4
  %204 = load i32, i32* %11, align 4
  %205 = call i32 @hfs_bnode_write_u16(%struct.hfs_bnode* %202, i32 %203, i32 %204)
  %206 = load i32, i32* %12, align 4
  %207 = sub nsw i32 %206, 2
  store i32 %207, i32* %12, align 4
  %208 = load i32, i32* %10, align 4
  %209 = sub nsw i32 %208, 2
  store i32 %209, i32* %10, align 4
  %210 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %211 = load i32, i32* %12, align 4
  %212 = call i32 @hfs_bnode_read_u16(%struct.hfs_bnode* %210, i32 %211)
  store i32 %212, i32* %14, align 4
  %213 = load i32, i32* %14, align 4
  %214 = load i32, i32* %15, align 4
  %215 = sub nsw i32 %213, %214
  store i32 %215, i32* %11, align 4
  %216 = load i32, i32* %9, align 4
  %217 = add nsw i32 %216, -1
  store i32 %217, i32* %9, align 4
  br label %198

218:                                              ; preds = %198
  %219 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %220 = load i32, i32* %10, align 4
  %221 = load i32, i32* %11, align 4
  %222 = call i32 @hfs_bnode_write_u16(%struct.hfs_bnode* %219, i32 %220, i32 %221)
  %223 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %224 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %225 = load i32, i32* %13, align 4
  %226 = load i32, i32* %14, align 4
  %227 = load i32, i32* %13, align 4
  %228 = sub nsw i32 %226, %227
  %229 = call i32 @hfs_bnode_copy(%struct.hfs_bnode* %223, i32 14, %struct.hfs_bnode* %224, i32 %225, i32 %228)
  %230 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %231 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = call i8* @cpu_to_be32(i64 %232)
  %234 = getelementptr inbounds %struct.hfs_bnode_desc, %struct.hfs_bnode_desc* %8, i32 0, i32 2
  store i8* %233, i8** %234, align 8
  %235 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %236 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %235, i32 0, i32 2
  %237 = load i64, i64* %236, align 8
  %238 = call i8* @cpu_to_be32(i64 %237)
  %239 = getelementptr inbounds %struct.hfs_bnode_desc, %struct.hfs_bnode_desc* %8, i32 0, i32 0
  store i8* %238, i8** %239, align 8
  %240 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %241 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %240, i32 0, i32 5
  %242 = load i32, i32* %241, align 8
  %243 = getelementptr inbounds %struct.hfs_bnode_desc, %struct.hfs_bnode_desc* %8, i32 0, i32 5
  store i32 %242, i32* %243, align 4
  %244 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %245 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %244, i32 0, i32 4
  %246 = load i32, i32* %245, align 4
  %247 = getelementptr inbounds %struct.hfs_bnode_desc, %struct.hfs_bnode_desc* %8, i32 0, i32 4
  store i32 %246, i32* %247, align 8
  %248 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %249 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 8
  %251 = call i8* @cpu_to_be16(i32 %250)
  %252 = getelementptr inbounds %struct.hfs_bnode_desc, %struct.hfs_bnode_desc* %8, i32 0, i32 1
  store i8* %251, i8** %252, align 8
  %253 = getelementptr inbounds %struct.hfs_bnode_desc, %struct.hfs_bnode_desc* %8, i32 0, i32 3
  store i64 0, i64* %253, align 8
  %254 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %255 = call i32 @hfs_bnode_write(%struct.hfs_bnode* %254, %struct.hfs_bnode_desc* %8, i32 0, i32 40)
  %256 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %257 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %260 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %259, i32 0, i32 1
  store i64 %258, i64* %260, align 8
  %261 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %262 = call i32 @hfs_bnode_read(%struct.hfs_bnode* %261, %struct.hfs_bnode_desc* %8, i32 0, i32 40)
  %263 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %264 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = call i8* @cpu_to_be32(i64 %265)
  %267 = getelementptr inbounds %struct.hfs_bnode_desc, %struct.hfs_bnode_desc* %8, i32 0, i32 2
  store i8* %266, i8** %267, align 8
  %268 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %269 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 8
  %271 = call i8* @cpu_to_be16(i32 %270)
  %272 = getelementptr inbounds %struct.hfs_bnode_desc, %struct.hfs_bnode_desc* %8, i32 0, i32 1
  store i8* %271, i8** %272, align 8
  %273 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %274 = call i32 @hfs_bnode_write(%struct.hfs_bnode* %273, %struct.hfs_bnode_desc* %8, i32 0, i32 40)
  %275 = load %struct.hfs_bnode*, %struct.hfs_bnode** %7, align 8
  %276 = icmp ne %struct.hfs_bnode* %275, null
  br i1 %276, label %277, label %294

277:                                              ; preds = %218
  %278 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %279 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = load %struct.hfs_bnode*, %struct.hfs_bnode** %7, align 8
  %282 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %281, i32 0, i32 2
  store i64 %280, i64* %282, align 8
  %283 = load %struct.hfs_bnode*, %struct.hfs_bnode** %7, align 8
  %284 = call i32 @hfs_bnode_read(%struct.hfs_bnode* %283, %struct.hfs_bnode_desc* %8, i32 0, i32 40)
  %285 = load %struct.hfs_bnode*, %struct.hfs_bnode** %7, align 8
  %286 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %285, i32 0, i32 2
  %287 = load i64, i64* %286, align 8
  %288 = call i8* @cpu_to_be32(i64 %287)
  %289 = getelementptr inbounds %struct.hfs_bnode_desc, %struct.hfs_bnode_desc* %8, i32 0, i32 0
  store i8* %288, i8** %289, align 8
  %290 = load %struct.hfs_bnode*, %struct.hfs_bnode** %7, align 8
  %291 = call i32 @hfs_bnode_write(%struct.hfs_bnode* %290, %struct.hfs_bnode_desc* %8, i32 0, i32 40)
  %292 = load %struct.hfs_bnode*, %struct.hfs_bnode** %7, align 8
  %293 = call i32 @hfs_bnode_put(%struct.hfs_bnode* %292)
  br label %313

294:                                              ; preds = %218
  %295 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %296 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %299 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %298, i32 0, i32 1
  %300 = load i64, i64* %299, align 8
  %301 = icmp eq i64 %297, %300
  br i1 %301, label %302, label %312

302:                                              ; preds = %294
  %303 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %304 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %307 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %306, i32 0, i32 1
  store i64 %305, i64* %307, align 8
  %308 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %309 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 8
  %311 = call i32 @mark_inode_dirty(i32 %310)
  br label %312

312:                                              ; preds = %302, %294
  br label %313

313:                                              ; preds = %312, %277
  %314 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %315 = call i32 @hfs_bnode_dump(%struct.hfs_bnode* %314)
  %316 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %317 = call i32 @hfs_bnode_dump(%struct.hfs_bnode* %316)
  %318 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %319 = call i32 @hfs_bnode_put(%struct.hfs_bnode* %318)
  %320 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  store %struct.hfs_bnode* %320, %struct.hfs_bnode** %2, align 8
  br label %321

321:                                              ; preds = %313, %132, %83, %27
  %322 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  ret %struct.hfs_bnode* %322
}

declare dso_local %struct.hfs_bnode* @hfs_bmap_alloc(%struct.hfs_btree*) #1

declare dso_local i64 @IS_ERR(%struct.hfs_bnode*) #1

declare dso_local i32 @hfs_bnode_get(%struct.hfs_bnode*) #1

declare dso_local i32 @dprint(i32, i8*, i64, i64, i64) #1

declare dso_local %struct.hfs_bnode* @hfs_bnode_find(%struct.hfs_btree*, i64) #1

declare dso_local i32 @hfs_bnode_put(%struct.hfs_bnode*) #1

declare dso_local i32 @hfs_bnode_read_u16(%struct.hfs_bnode*, i32) #1

declare dso_local %struct.hfs_bnode* @ERR_PTR(i32) #1

declare dso_local i32 @hfs_bnode_write_u16(%struct.hfs_bnode*, i32, i32) #1

declare dso_local i32 @hfs_bnode_copy(%struct.hfs_bnode*, i32, %struct.hfs_bnode*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i64) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @hfs_bnode_write(%struct.hfs_bnode*, %struct.hfs_bnode_desc*, i32, i32) #1

declare dso_local i32 @hfs_bnode_read(%struct.hfs_bnode*, %struct.hfs_bnode_desc*, i32, i32) #1

declare dso_local i32 @mark_inode_dirty(i32) #1

declare dso_local i32 @hfs_bnode_dump(%struct.hfs_bnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
