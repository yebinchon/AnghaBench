; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_brec.c_hfs_bnode_split.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_brec.c_hfs_bnode_split.c"
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
  %7 = alloca %struct.hfs_bnode_desc, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.hfs_bnode*, align 8
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
  br label %300

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
  %68 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %69 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sdiv i32 %70, 2
  %72 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %73 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = mul nsw i32 %74, 2
  %76 = sub nsw i32 %71, %75
  %77 = sub nsw i32 %76, 14
  store i32 %77, i32* %14, align 4
  %78 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %79 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sub nsw i32 %80, 4
  store i32 %81, i32* %11, align 4
  store i32 1, i32* %8, align 4
  br label %82

82:                                               ; preds = %99, %29
  %83 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @hfs_bnode_read_u16(%struct.hfs_bnode* %83, i32 %84)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %14, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %108

90:                                               ; preds = %82
  %91 = load i32, i32* %11, align 4
  %92 = sub nsw i32 %91, 2
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  %95 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %96 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  br label %82

100:                                              ; preds = %90
  %101 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %102 = call i32 @hfs_bnode_put(%struct.hfs_bnode* %101)
  %103 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %104 = call i32 @hfs_bnode_put(%struct.hfs_bnode* %103)
  %105 = load i32, i32* @ENOSPC, align 4
  %106 = sub nsw i32 0, %105
  %107 = call %struct.hfs_bnode* @ERR_PTR(i32 %106)
  store %struct.hfs_bnode* %107, %struct.hfs_bnode** %2, align 8
  br label %300

108:                                              ; preds = %89
  %109 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %110 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, 1
  %113 = load i32, i32* %8, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %123

115:                                              ; preds = %108
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, 2
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %8, align 4
  %120 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %121 = load i32, i32* %11, align 4
  %122 = call i32 @hfs_bnode_read_u16(%struct.hfs_bnode* %120, i32 %121)
  store i32 %122, i32* %12, align 4
  br label %148

123:                                              ; preds = %108
  %124 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %125 = call i32 @hfs_bnode_put(%struct.hfs_bnode* %124)
  %126 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %127 = call i32 @hfs_bnode_get(%struct.hfs_bnode* %126)
  %128 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %129 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %130 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %129, i32 0, i32 3
  store %struct.hfs_bnode* %128, %struct.hfs_bnode** %130, align 8
  %131 = load i32, i32* %8, align 4
  %132 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %133 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = sub nsw i32 %134, %131
  store i32 %135, i32* %133, align 8
  %136 = load i32, i32* %12, align 4
  %137 = sub nsw i32 %136, 14
  %138 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %139 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = sub nsw i32 %140, %137
  store i32 %141, i32* %139, align 4
  %142 = load i32, i32* %12, align 4
  %143 = sub nsw i32 %142, 14
  %144 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %145 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = sub nsw i32 %146, %143
  store i32 %147, i32* %145, align 8
  br label %148

148:                                              ; preds = %123, %115
  %149 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %150 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sub nsw i32 %151, %152
  %154 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %155 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %154, i32 0, i32 3
  store i32 %153, i32* %155, align 8
  %156 = load i32, i32* %8, align 4
  %157 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %158 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %157, i32 0, i32 3
  store i32 %156, i32* %158, align 8
  %159 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %160 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = sub nsw i32 %161, 2
  store i32 %162, i32* %9, align 4
  store i32 14, i32* %10, align 4
  %163 = load i32, i32* %12, align 4
  %164 = load i32, i32* %10, align 4
  %165 = sub nsw i32 %163, %164
  store i32 %165, i32* %14, align 4
  %166 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %167 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  store i32 %168, i32* %8, align 4
  %169 = load i32, i32* %12, align 4
  store i32 %169, i32* %13, align 4
  br label %170

170:                                              ; preds = %173, %148
  %171 = load i32, i32* %8, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %190

173:                                              ; preds = %170
  %174 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* %10, align 4
  %177 = call i32 @hfs_bnode_write_u16(%struct.hfs_bnode* %174, i32 %175, i32 %176)
  %178 = load i32, i32* %11, align 4
  %179 = sub nsw i32 %178, 2
  store i32 %179, i32* %11, align 4
  %180 = load i32, i32* %9, align 4
  %181 = sub nsw i32 %180, 2
  store i32 %181, i32* %9, align 4
  %182 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %183 = load i32, i32* %11, align 4
  %184 = call i32 @hfs_bnode_read_u16(%struct.hfs_bnode* %182, i32 %183)
  store i32 %184, i32* %13, align 4
  %185 = load i32, i32* %13, align 4
  %186 = load i32, i32* %14, align 4
  %187 = sub nsw i32 %185, %186
  store i32 %187, i32* %10, align 4
  %188 = load i32, i32* %8, align 4
  %189 = add nsw i32 %188, -1
  store i32 %189, i32* %8, align 4
  br label %170

190:                                              ; preds = %170
  %191 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %192 = load i32, i32* %9, align 4
  %193 = load i32, i32* %10, align 4
  %194 = call i32 @hfs_bnode_write_u16(%struct.hfs_bnode* %191, i32 %192, i32 %193)
  %195 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %196 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %197 = load i32, i32* %12, align 4
  %198 = load i32, i32* %13, align 4
  %199 = load i32, i32* %12, align 4
  %200 = sub nsw i32 %198, %199
  %201 = call i32 @hfs_bnode_copy(%struct.hfs_bnode* %195, i32 14, %struct.hfs_bnode* %196, i32 %197, i32 %200)
  %202 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %203 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = call i8* @cpu_to_be32(i64 %204)
  %206 = getelementptr inbounds %struct.hfs_bnode_desc, %struct.hfs_bnode_desc* %7, i32 0, i32 2
  store i8* %205, i8** %206, align 8
  %207 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %208 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = call i8* @cpu_to_be32(i64 %209)
  %211 = getelementptr inbounds %struct.hfs_bnode_desc, %struct.hfs_bnode_desc* %7, i32 0, i32 0
  store i8* %210, i8** %211, align 8
  %212 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %213 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %212, i32 0, i32 5
  %214 = load i32, i32* %213, align 8
  %215 = getelementptr inbounds %struct.hfs_bnode_desc, %struct.hfs_bnode_desc* %7, i32 0, i32 5
  store i32 %214, i32* %215, align 4
  %216 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %217 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 4
  %219 = getelementptr inbounds %struct.hfs_bnode_desc, %struct.hfs_bnode_desc* %7, i32 0, i32 4
  store i32 %218, i32* %219, align 8
  %220 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %221 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 8
  %223 = call i8* @cpu_to_be16(i32 %222)
  %224 = getelementptr inbounds %struct.hfs_bnode_desc, %struct.hfs_bnode_desc* %7, i32 0, i32 1
  store i8* %223, i8** %224, align 8
  %225 = getelementptr inbounds %struct.hfs_bnode_desc, %struct.hfs_bnode_desc* %7, i32 0, i32 3
  store i64 0, i64* %225, align 8
  %226 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %227 = call i32 @hfs_bnode_write(%struct.hfs_bnode* %226, %struct.hfs_bnode_desc* %7, i32 0, i32 40)
  %228 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %229 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %232 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %231, i32 0, i32 1
  store i64 %230, i64* %232, align 8
  %233 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %234 = call i32 @hfs_bnode_read(%struct.hfs_bnode* %233, %struct.hfs_bnode_desc* %7, i32 0, i32 40)
  %235 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %236 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = call i8* @cpu_to_be32(i64 %237)
  %239 = getelementptr inbounds %struct.hfs_bnode_desc, %struct.hfs_bnode_desc* %7, i32 0, i32 2
  store i8* %238, i8** %239, align 8
  %240 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %241 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 8
  %243 = call i8* @cpu_to_be16(i32 %242)
  %244 = getelementptr inbounds %struct.hfs_bnode_desc, %struct.hfs_bnode_desc* %7, i32 0, i32 1
  store i8* %243, i8** %244, align 8
  %245 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %246 = call i32 @hfs_bnode_write(%struct.hfs_bnode* %245, %struct.hfs_bnode_desc* %7, i32 0, i32 40)
  %247 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %248 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %273

251:                                              ; preds = %190
  %252 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %253 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %254 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = call %struct.hfs_bnode* @hfs_bnode_find(%struct.hfs_btree* %252, i64 %255)
  store %struct.hfs_bnode* %256, %struct.hfs_bnode** %15, align 8
  %257 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %258 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = load %struct.hfs_bnode*, %struct.hfs_bnode** %15, align 8
  %261 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %260, i32 0, i32 2
  store i64 %259, i64* %261, align 8
  %262 = load %struct.hfs_bnode*, %struct.hfs_bnode** %15, align 8
  %263 = call i32 @hfs_bnode_read(%struct.hfs_bnode* %262, %struct.hfs_bnode_desc* %7, i32 0, i32 40)
  %264 = load %struct.hfs_bnode*, %struct.hfs_bnode** %15, align 8
  %265 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %264, i32 0, i32 2
  %266 = load i64, i64* %265, align 8
  %267 = call i8* @cpu_to_be32(i64 %266)
  %268 = getelementptr inbounds %struct.hfs_bnode_desc, %struct.hfs_bnode_desc* %7, i32 0, i32 0
  store i8* %267, i8** %268, align 8
  %269 = load %struct.hfs_bnode*, %struct.hfs_bnode** %15, align 8
  %270 = call i32 @hfs_bnode_write(%struct.hfs_bnode* %269, %struct.hfs_bnode_desc* %7, i32 0, i32 40)
  %271 = load %struct.hfs_bnode*, %struct.hfs_bnode** %15, align 8
  %272 = call i32 @hfs_bnode_put(%struct.hfs_bnode* %271)
  br label %292

273:                                              ; preds = %190
  %274 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %275 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %278 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %277, i32 0, i32 1
  %279 = load i64, i64* %278, align 8
  %280 = icmp eq i64 %276, %279
  br i1 %280, label %281, label %291

281:                                              ; preds = %273
  %282 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %283 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %286 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %285, i32 0, i32 1
  store i64 %284, i64* %286, align 8
  %287 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %288 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 8
  %290 = call i32 @mark_inode_dirty(i32 %289)
  br label %291

291:                                              ; preds = %281, %273
  br label %292

292:                                              ; preds = %291, %251
  %293 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %294 = call i32 @hfs_bnode_dump(%struct.hfs_bnode* %293)
  %295 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %296 = call i32 @hfs_bnode_dump(%struct.hfs_bnode* %295)
  %297 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %298 = call i32 @hfs_bnode_put(%struct.hfs_bnode* %297)
  %299 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  store %struct.hfs_bnode* %299, %struct.hfs_bnode** %2, align 8
  br label %300

300:                                              ; preds = %292, %100, %27
  %301 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  ret %struct.hfs_bnode* %301
}

declare dso_local %struct.hfs_bnode* @hfs_bmap_alloc(%struct.hfs_btree*) #1

declare dso_local i64 @IS_ERR(%struct.hfs_bnode*) #1

declare dso_local i32 @hfs_bnode_get(%struct.hfs_bnode*) #1

declare dso_local i32 @dprint(i32, i8*, i64, i64, i64) #1

declare dso_local i32 @hfs_bnode_read_u16(%struct.hfs_bnode*, i32) #1

declare dso_local i32 @hfs_bnode_put(%struct.hfs_bnode*) #1

declare dso_local %struct.hfs_bnode* @ERR_PTR(i32) #1

declare dso_local i32 @hfs_bnode_write_u16(%struct.hfs_bnode*, i32, i32) #1

declare dso_local i32 @hfs_bnode_copy(%struct.hfs_bnode*, i32, %struct.hfs_bnode*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i64) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @hfs_bnode_write(%struct.hfs_bnode*, %struct.hfs_bnode_desc*, i32, i32) #1

declare dso_local i32 @hfs_bnode_read(%struct.hfs_bnode*, %struct.hfs_bnode_desc*, i32, i32) #1

declare dso_local %struct.hfs_bnode* @hfs_bnode_find(%struct.hfs_btree*, i64) #1

declare dso_local i32 @mark_inode_dirty(i32) #1

declare dso_local i32 @hfs_bnode_dump(%struct.hfs_bnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
