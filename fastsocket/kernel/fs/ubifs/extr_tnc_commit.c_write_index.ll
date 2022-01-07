; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc_commit.c_write_index.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc_commit.c_write_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, i32, i32, i32*, %struct.TYPE_3__*, %struct.ubifs_idx_node*, %struct.ubifs_znode*, %struct.ubifs_znode* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ubifs_idx_node = type { i8*, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ubifs_znode = type { i32, i32, i32, i32, i32, i32, %struct.ubifs_znode*, %struct.ubifs_zbranch* }
%struct.ubifs_zbranch = type { %struct.ubifs_znode*, i32, i32, i32, i32 }
%struct.ubifs_branch = type { i8*, i8*, i8*, i32 }

@LPROPS_NC = common dso_local global i32 0, align 4
@LPROPS_TAKEN = common dso_local global i32 0, align 4
@UBIFS_IDX_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"bad ref in znode\00", align 1
@COW_ZNODE = common dso_local global i32 0, align 4
@DIRTY_ZNODE = common dso_local global i32 0, align 4
@UBI_SHORTTERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*)* @write_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_index(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca %struct.ubifs_idx_node*, align 8
  %5 = alloca %struct.ubifs_znode*, align 8
  %6 = alloca %struct.ubifs_znode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.ubifs_branch*, align 8
  %20 = alloca %struct.ubifs_zbranch*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  store i32 0, i32* %18, align 4
  %23 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %24 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %23, i32 0, i32 9
  %25 = load %struct.ubifs_znode*, %struct.ubifs_znode** %24, align 8
  store %struct.ubifs_znode* %25, %struct.ubifs_znode** %6, align 8
  %26 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %27 = icmp ne %struct.ubifs_znode* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %389

29:                                               ; preds = %1
  %30 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %31 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %8, align 4
  %33 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %34 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %13, align 4
  %36 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %37 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %40 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ALIGN(i32 %38, i32 %41)
  store i32 %42, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %15, align 4
  %44 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %45 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %46 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @ubifs_idx_node_sz(%struct.ubifs_info* %44, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %49, %50
  %52 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %53 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = icmp sgt i32 %51, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %29
  %57 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @LPROPS_NC, align 4
  %60 = load i32, i32* @LPROPS_TAKEN, align 4
  %61 = call i32 @ubifs_update_one_lp(%struct.ubifs_info* %57, i32 %58, i32 %59, i32 0, i32 0, i32 %60)
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %17, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i32, i32* %17, align 4
  store i32 %65, i32* %2, align 4
  br label %389

66:                                               ; preds = %56
  store i32 -1, i32* %8, align 4
  br label %67

67:                                               ; preds = %66, %29
  br label %68

68:                                               ; preds = %67, %279, %298, %365
  %69 = call i32 (...) @cond_resched()
  %70 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  store %struct.ubifs_znode* %70, %struct.ubifs_znode** %5, align 8
  %71 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %72 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %71, i32 0, i32 7
  %73 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %72, align 8
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.ubifs_idx_node, %struct.ubifs_idx_node* %73, i64 %75
  store %struct.ubifs_idx_node* %76, %struct.ubifs_idx_node** %4, align 8
  %77 = load i32, i32* @UBIFS_IDX_NODE, align 4
  %78 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %4, align 8
  %79 = getelementptr inbounds %struct.ubifs_idx_node, %struct.ubifs_idx_node* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 8
  %81 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %82 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i8* @cpu_to_le16(i32 %83)
  %85 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %4, align 8
  %86 = getelementptr inbounds %struct.ubifs_idx_node, %struct.ubifs_idx_node* %85, i32 0, i32 1
  store i8* %84, i8** %86, align 8
  %87 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %88 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @cpu_to_le16(i32 %89)
  %91 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %4, align 8
  %92 = getelementptr inbounds %struct.ubifs_idx_node, %struct.ubifs_idx_node* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 8
  store i32 0, i32* %7, align 4
  br label %93

93:                                               ; preds = %160, %68
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %96 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %163

99:                                               ; preds = %93
  %100 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %101 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %4, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call %struct.ubifs_branch* @ubifs_idx_branch(%struct.ubifs_info* %100, %struct.ubifs_idx_node* %101, i32 %102)
  store %struct.ubifs_branch* %103, %struct.ubifs_branch** %19, align 8
  %104 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %105 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %104, i32 0, i32 7
  %106 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %106, i64 %108
  store %struct.ubifs_zbranch* %109, %struct.ubifs_zbranch** %20, align 8
  %110 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %111 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %20, align 8
  %112 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %111, i32 0, i32 4
  %113 = load %struct.ubifs_branch*, %struct.ubifs_branch** %19, align 8
  %114 = getelementptr inbounds %struct.ubifs_branch, %struct.ubifs_branch* %113, i32 0, i32 3
  %115 = call i32 @key_write_idx(%struct.ubifs_info* %110, i32* %112, i32* %114)
  %116 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %20, align 8
  %117 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = call i8* @cpu_to_le32(i32 %118)
  %120 = load %struct.ubifs_branch*, %struct.ubifs_branch** %19, align 8
  %121 = getelementptr inbounds %struct.ubifs_branch, %struct.ubifs_branch* %120, i32 0, i32 2
  store i8* %119, i8** %121, align 8
  %122 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %20, align 8
  %123 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = call i8* @cpu_to_le32(i32 %124)
  %126 = load %struct.ubifs_branch*, %struct.ubifs_branch** %19, align 8
  %127 = getelementptr inbounds %struct.ubifs_branch, %struct.ubifs_branch* %126, i32 0, i32 1
  store i8* %125, i8** %127, align 8
  %128 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %20, align 8
  %129 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i8* @cpu_to_le32(i32 %130)
  %132 = load %struct.ubifs_branch*, %struct.ubifs_branch** %19, align 8
  %133 = getelementptr inbounds %struct.ubifs_branch, %struct.ubifs_branch* %132, i32 0, i32 0
  store i8* %131, i8** %133, align 8
  %134 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %20, align 8
  %135 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %99
  %139 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %20, align 8
  %140 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %159, label %143

143:                                              ; preds = %138, %99
  %144 = call i32 @ubifs_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %145 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %146 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %147 = call i32 @dbg_dump_znode(%struct.ubifs_info* %145, %struct.ubifs_znode* %146)
  %148 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %20, align 8
  %149 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %148, i32 0, i32 0
  %150 = load %struct.ubifs_znode*, %struct.ubifs_znode** %149, align 8
  %151 = icmp ne %struct.ubifs_znode* %150, null
  br i1 %151, label %152, label %158

152:                                              ; preds = %143
  %153 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %154 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %20, align 8
  %155 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %154, i32 0, i32 0
  %156 = load %struct.ubifs_znode*, %struct.ubifs_znode** %155, align 8
  %157 = call i32 @dbg_dump_znode(%struct.ubifs_info* %153, %struct.ubifs_znode* %156)
  br label %158

158:                                              ; preds = %152, %143
  br label %159

159:                                              ; preds = %158, %138
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %7, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %7, align 4
  br label %93

163:                                              ; preds = %93
  %164 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %165 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %166 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @ubifs_idx_node_sz(%struct.ubifs_info* %164, i32 %167)
  store i32 %168, i32* %10, align 4
  %169 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %170 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %4, align 8
  %171 = load i32, i32* %10, align 4
  %172 = call i32 @ubifs_prepare_node(%struct.ubifs_info* %169, %struct.ubifs_idx_node* %170, i32 %171, i32 0)
  %173 = load i32, i32* %8, align 4
  %174 = icmp eq i32 %173, -1
  br i1 %174, label %175, label %185

175:                                              ; preds = %163
  %176 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %177 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %176, i32 0, i32 5
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %18, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %18, align 4
  %181 = sext i32 %179 to i64
  %182 = getelementptr inbounds i32, i32* %178, i64 %181
  %183 = load i32, i32* %182, align 4
  store i32 %183, i32* %8, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %184 = load i32, i32* %12, align 4
  store i32 %184, i32* %15, align 4
  br label %185

185:                                              ; preds = %175, %163
  %186 = load i32, i32* %13, align 4
  %187 = load i32, i32* %14, align 4
  %188 = add nsw i32 %186, %187
  store i32 %188, i32* %9, align 4
  %189 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %190 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %189, i32 0, i32 6
  %191 = load %struct.ubifs_znode*, %struct.ubifs_znode** %190, align 8
  store %struct.ubifs_znode* %191, %struct.ubifs_znode** %6, align 8
  %192 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %193 = call i32 @ubifs_zn_dirty(%struct.ubifs_znode* %192)
  %194 = call i32 @ubifs_assert(i32 %193)
  %195 = load i32, i32* @COW_ZNODE, align 4
  %196 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %197 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %196, i32 0, i32 5
  %198 = call i32 @test_bit(i32 %195, i32* %197)
  %199 = call i32 @ubifs_assert(i32 %198)
  %200 = load i32, i32* @DIRTY_ZNODE, align 4
  %201 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %202 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %201, i32 0, i32 5
  %203 = call i32 @clear_bit(i32 %200, i32* %202)
  %204 = call i32 (...) @smp_mb__before_clear_bit()
  %205 = load i32, i32* @COW_ZNODE, align 4
  %206 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %207 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %206, i32 0, i32 5
  %208 = call i32 @clear_bit(i32 %205, i32* %207)
  %209 = call i32 (...) @smp_mb__after_clear_bit()
  %210 = load i32, i32* %14, align 4
  %211 = load i32, i32* %10, align 4
  %212 = add nsw i32 %210, %211
  store i32 %212, i32* %16, align 4
  %213 = load i32, i32* %10, align 4
  %214 = call i32 @ALIGN(i32 %213, i32 8)
  %215 = load i32, i32* %14, align 4
  %216 = add nsw i32 %215, %214
  store i32 %216, i32* %14, align 4
  %217 = load i32, i32* %10, align 4
  %218 = call i32 @ALIGN(i32 %217, i32 8)
  %219 = load i32, i32* %15, align 4
  %220 = sub nsw i32 %219, %218
  store i32 %220, i32* %15, align 4
  %221 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %222 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %223 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %222, i32 0, i32 8
  %224 = load %struct.ubifs_znode*, %struct.ubifs_znode** %223, align 8
  %225 = icmp eq %struct.ubifs_znode* %221, %224
  br i1 %225, label %226, label %227

226:                                              ; preds = %185
  store i32 0, i32* %11, align 4
  br label %233

227:                                              ; preds = %185
  %228 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %229 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %230 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @ubifs_idx_node_sz(%struct.ubifs_info* %228, i32 %231)
  store i32 %232, i32* %11, align 4
  br label %233

233:                                              ; preds = %227, %226
  %234 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %235 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 4
  %237 = icmp eq i32 %236, 1
  br i1 %237, label %238, label %281

238:                                              ; preds = %233
  %239 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %240 = load i32, i32* %8, align 4
  %241 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %242 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %241, i32 0, i32 7
  %243 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %242, align 8
  %244 = load i32, i32* %13, align 4
  %245 = load i32, i32* %16, align 4
  %246 = load i32, i32* @UBI_SHORTTERM, align 4
  %247 = call i32 @ubifs_leb_write(%struct.ubifs_info* %239, i32 %240, %struct.ubifs_idx_node* %243, i32 %244, i32 %245, i32 %246)
  store i32 %247, i32* %17, align 4
  %248 = load i32, i32* %17, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %238
  %251 = load i32, i32* %17, align 4
  store i32 %251, i32* %2, align 4
  br label %389

252:                                              ; preds = %238
  %253 = load i32, i32* %16, align 4
  %254 = call i32 @ALIGN(i32 %253, i32 8)
  %255 = load i32, i32* %13, align 4
  %256 = add nsw i32 %255, %254
  store i32 %256, i32* %13, align 4
  %257 = load i32, i32* %11, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %280

259:                                              ; preds = %252
  store i32 0, i32* %14, align 4
  %260 = load i32, i32* %12, align 4
  store i32 %260, i32* %15, align 4
  %261 = load i32, i32* %13, align 4
  %262 = load i32, i32* %11, align 4
  %263 = add nsw i32 %261, %262
  %264 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %265 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %264, i32 0, i32 4
  %266 = load i32, i32* %265, align 8
  %267 = icmp sgt i32 %263, %266
  br i1 %267, label %268, label %279

268:                                              ; preds = %259
  %269 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %270 = load i32, i32* %8, align 4
  %271 = load i32, i32* @LPROPS_NC, align 4
  %272 = load i32, i32* @LPROPS_TAKEN, align 4
  %273 = call i32 @ubifs_update_one_lp(%struct.ubifs_info* %269, i32 %270, i32 %271, i32 0, i32 0, i32 %272)
  store i32 %273, i32* %17, align 4
  %274 = load i32, i32* %17, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %278

276:                                              ; preds = %268
  %277 = load i32, i32* %17, align 4
  store i32 %277, i32* %2, align 4
  br label %389

278:                                              ; preds = %268
  store i32 -1, i32* %8, align 4
  br label %279

279:                                              ; preds = %278, %259
  br label %68

280:                                              ; preds = %252
  br label %381

281:                                              ; preds = %233
  %282 = load i32, i32* %13, align 4
  %283 = load i32, i32* %14, align 4
  %284 = add nsw i32 %282, %283
  %285 = load i32, i32* %11, align 4
  %286 = add nsw i32 %284, %285
  store i32 %286, i32* %22, align 4
  %287 = load i32, i32* %11, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %302

289:                                              ; preds = %281
  %290 = load i32, i32* %22, align 4
  %291 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %292 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %291, i32 0, i32 4
  %293 = load i32, i32* %292, align 8
  %294 = icmp sle i32 %290, %293
  br i1 %294, label %295, label %302

295:                                              ; preds = %289
  %296 = load i32, i32* %15, align 4
  %297 = icmp sgt i32 %296, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %295
  br label %68

299:                                              ; preds = %295
  %300 = load i32, i32* %12, align 4
  store i32 %300, i32* %21, align 4
  br label %301

301:                                              ; preds = %299
  br label %321

302:                                              ; preds = %289, %281
  %303 = load i32, i32* %16, align 4
  %304 = call i32 @ALIGN(i32 %303, i32 8)
  store i32 %304, i32* %16, align 4
  %305 = load i32, i32* %16, align 4
  %306 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %307 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %306, i32 0, i32 3
  %308 = load i32, i32* %307, align 4
  %309 = call i32 @ALIGN(i32 %305, i32 %308)
  store i32 %309, i32* %21, align 4
  %310 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %311 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %312 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %311, i32 0, i32 7
  %313 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %312, align 8
  %314 = load i32, i32* %16, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.ubifs_idx_node, %struct.ubifs_idx_node* %313, i64 %315
  %317 = load i32, i32* %21, align 4
  %318 = load i32, i32* %16, align 4
  %319 = sub nsw i32 %317, %318
  %320 = call i32 @ubifs_pad(%struct.ubifs_info* %310, %struct.ubifs_idx_node* %316, i32 %319)
  br label %321

321:                                              ; preds = %302, %301
  %322 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %323 = load i32, i32* %8, align 4
  %324 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %325 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %324, i32 0, i32 7
  %326 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %325, align 8
  %327 = load i32, i32* %13, align 4
  %328 = load i32, i32* %21, align 4
  %329 = load i32, i32* @UBI_SHORTTERM, align 4
  %330 = call i32 @ubifs_leb_write(%struct.ubifs_info* %322, i32 %323, %struct.ubifs_idx_node* %326, i32 %327, i32 %328, i32 %329)
  store i32 %330, i32* %17, align 4
  %331 = load i32, i32* %17, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %335

333:                                              ; preds = %321
  %334 = load i32, i32* %17, align 4
  store i32 %334, i32* %2, align 4
  br label %389

335:                                              ; preds = %321
  %336 = load i32, i32* %21, align 4
  %337 = load i32, i32* %13, align 4
  %338 = add nsw i32 %337, %336
  store i32 %338, i32* %13, align 4
  %339 = load i32, i32* %11, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %380

341:                                              ; preds = %335
  %342 = load i32, i32* %22, align 4
  %343 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %344 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %343, i32 0, i32 4
  %345 = load i32, i32* %344, align 8
  %346 = icmp sgt i32 %342, %345
  br i1 %346, label %347, label %358

347:                                              ; preds = %341
  %348 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %349 = load i32, i32* %8, align 4
  %350 = load i32, i32* @LPROPS_NC, align 4
  %351 = load i32, i32* @LPROPS_TAKEN, align 4
  %352 = call i32 @ubifs_update_one_lp(%struct.ubifs_info* %348, i32 %349, i32 %350, i32 0, i32 0, i32 %351)
  store i32 %352, i32* %17, align 4
  %353 = load i32, i32* %17, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %357

355:                                              ; preds = %347
  %356 = load i32, i32* %17, align 4
  store i32 %356, i32* %2, align 4
  br label %389

357:                                              ; preds = %347
  store i32 -1, i32* %8, align 4
  br label %358

358:                                              ; preds = %357, %341
  %359 = load i32, i32* %21, align 4
  %360 = load i32, i32* %14, align 4
  %361 = sub nsw i32 %360, %359
  store i32 %361, i32* %14, align 4
  %362 = load i32, i32* %14, align 4
  %363 = icmp slt i32 %362, 0
  br i1 %363, label %364, label %365

364:                                              ; preds = %358
  store i32 0, i32* %14, align 4
  br label %365

365:                                              ; preds = %364, %358
  %366 = load i32, i32* %12, align 4
  %367 = load i32, i32* %14, align 4
  %368 = sub nsw i32 %366, %367
  store i32 %368, i32* %15, align 4
  %369 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %370 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %369, i32 0, i32 7
  %371 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %370, align 8
  %372 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %373 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %372, i32 0, i32 7
  %374 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %373, align 8
  %375 = load i32, i32* %21, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.ubifs_idx_node, %struct.ubifs_idx_node* %374, i64 %376
  %378 = load i32, i32* %14, align 4
  %379 = call i32 @memmove(%struct.ubifs_idx_node* %371, %struct.ubifs_idx_node* %377, i32 %378)
  br label %68

380:                                              ; preds = %335
  br label %381

381:                                              ; preds = %380, %280
  br label %382

382:                                              ; preds = %381
  %383 = load i32, i32* %8, align 4
  %384 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %385 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %384, i32 0, i32 0
  store i32 %383, i32* %385, align 8
  %386 = load i32, i32* %13, align 4
  %387 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %388 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %387, i32 0, i32 1
  store i32 %386, i32* %388, align 4
  store i32 0, i32* %2, align 4
  br label %389

389:                                              ; preds = %382, %355, %333, %276, %250, %64, %28
  %390 = load i32, i32* %2, align 4
  ret i32 %390
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @ubifs_idx_node_sz(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_update_one_lp(%struct.ubifs_info*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local %struct.ubifs_branch* @ubifs_idx_branch(%struct.ubifs_info*, %struct.ubifs_idx_node*, i32) #1

declare dso_local i32 @key_write_idx(%struct.ubifs_info*, i32*, i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @ubifs_err(i8*) #1

declare dso_local i32 @dbg_dump_znode(%struct.ubifs_info*, %struct.ubifs_znode*) #1

declare dso_local i32 @ubifs_prepare_node(%struct.ubifs_info*, %struct.ubifs_idx_node*, i32, i32) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @ubifs_zn_dirty(%struct.ubifs_znode*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__before_clear_bit(...) #1

declare dso_local i32 @smp_mb__after_clear_bit(...) #1

declare dso_local i32 @ubifs_leb_write(%struct.ubifs_info*, i32, %struct.ubifs_idx_node*, i32, i32, i32) #1

declare dso_local i32 @ubifs_pad(%struct.ubifs_info*, %struct.ubifs_idx_node*, i32) #1

declare dso_local i32 @memmove(%struct.ubifs_idx_node*, %struct.ubifs_idx_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
