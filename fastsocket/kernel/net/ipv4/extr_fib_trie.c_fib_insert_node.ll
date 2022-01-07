; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_trie.c_fib_insert_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_trie.c_fib_insert_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.trie = type { %struct.tnode* }
%struct.tnode = type { i32, i32, i32 }
%struct.node = type { i32, i32, i32 }
%struct.leaf = type { i32, i32 }
%struct.leaf_info = type { %struct.list_head }

@T_TNODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"fib_trie tp=%p pos=%d, bits=%d, key=%0x plen=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.list_head* (%struct.trie*, i32, i32)* @fib_insert_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.list_head* @fib_insert_node(%struct.trie* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.trie*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tnode*, align 8
  %11 = alloca %struct.tnode*, align 8
  %12 = alloca %struct.node*, align 8
  %13 = alloca %struct.leaf*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.list_head*, align 8
  %16 = alloca %struct.leaf_info*, align 8
  %17 = alloca i32, align 4
  store %struct.trie* %0, %struct.trie** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.tnode* null, %struct.tnode** %10, align 8
  store %struct.tnode* null, %struct.tnode** %11, align 8
  store %struct.list_head* null, %struct.list_head** %15, align 8
  store i32 0, i32* %8, align 4
  %18 = load %struct.trie*, %struct.trie** %5, align 8
  %19 = getelementptr inbounds %struct.trie, %struct.trie* %18, i32 0, i32 0
  %20 = load %struct.tnode*, %struct.tnode** %19, align 8
  %21 = bitcast %struct.tnode* %20 to %struct.node*
  store %struct.node* %21, %struct.node** %12, align 8
  br label %22

22:                                               ; preds = %83, %3
  %23 = load %struct.node*, %struct.node** %12, align 8
  %24 = icmp ne %struct.node* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load %struct.node*, %struct.node** %12, align 8
  %27 = bitcast %struct.node* %26 to %struct.tnode*
  %28 = call i64 @NODE_TYPE(%struct.tnode* %27)
  %29 = load i64, i64* @T_TNODE, align 8
  %30 = icmp eq i64 %28, %29
  br label %31

31:                                               ; preds = %25, %22
  %32 = phi i1 [ false, %22 ], [ %30, %25 ]
  br i1 %32, label %33, label %84

33:                                               ; preds = %31
  %34 = load %struct.node*, %struct.node** %12, align 8
  %35 = bitcast %struct.node* %34 to %struct.tnode*
  store %struct.tnode* %35, %struct.tnode** %11, align 8
  %36 = load %struct.tnode*, %struct.tnode** %11, align 8
  %37 = call i32 @check_tnode(%struct.tnode* %36)
  %38 = load %struct.tnode*, %struct.tnode** %11, align 8
  %39 = getelementptr inbounds %struct.tnode, %struct.tnode* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.tnode*, %struct.tnode** %11, align 8
  %43 = getelementptr inbounds %struct.tnode, %struct.tnode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %8, align 4
  %46 = sub nsw i32 %44, %45
  %47 = load i32, i32* %6, align 4
  %48 = call i64 @tkey_sub_equals(i32 %40, i32 %41, i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %82

50:                                               ; preds = %33
  %51 = load %struct.tnode*, %struct.tnode** %11, align 8
  store %struct.tnode* %51, %struct.tnode** %10, align 8
  %52 = load %struct.tnode*, %struct.tnode** %11, align 8
  %53 = getelementptr inbounds %struct.tnode, %struct.tnode* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.tnode*, %struct.tnode** %11, align 8
  %56 = getelementptr inbounds %struct.tnode, %struct.tnode* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %54, %57
  store i32 %58, i32* %8, align 4
  %59 = load %struct.tnode*, %struct.tnode** %11, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.tnode*, %struct.tnode** %11, align 8
  %62 = getelementptr inbounds %struct.tnode, %struct.tnode* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.tnode*, %struct.tnode** %11, align 8
  %65 = getelementptr inbounds %struct.tnode, %struct.tnode* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @tkey_extract_bits(i32 %60, i32 %63, i32 %66)
  %68 = call %struct.tnode* @tnode_get_child(%struct.tnode* %59, i32 %67)
  %69 = bitcast %struct.tnode* %68 to %struct.node*
  store %struct.node* %69, %struct.node** %12, align 8
  %70 = load %struct.node*, %struct.node** %12, align 8
  %71 = icmp ne %struct.node* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %50
  %73 = load %struct.node*, %struct.node** %12, align 8
  %74 = bitcast %struct.node* %73 to %struct.tnode*
  %75 = call %struct.tnode* @node_parent(%struct.tnode* %74)
  %76 = load %struct.tnode*, %struct.tnode** %11, align 8
  %77 = icmp ne %struct.tnode* %75, %76
  br label %78

78:                                               ; preds = %72, %50
  %79 = phi i1 [ false, %50 ], [ %77, %72 ]
  %80 = zext i1 %79 to i32
  %81 = call i32 @BUG_ON(i32 %80)
  br label %83

82:                                               ; preds = %33
  br label %84

83:                                               ; preds = %78
  br label %22

84:                                               ; preds = %82, %31
  %85 = load %struct.tnode*, %struct.tnode** %10, align 8
  %86 = icmp ne %struct.tnode* %85, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load %struct.tnode*, %struct.tnode** %10, align 8
  %89 = call i64 @IS_LEAF(%struct.tnode* %88)
  %90 = icmp ne i64 %89, 0
  br label %91

91:                                               ; preds = %87, %84
  %92 = phi i1 [ false, %84 ], [ %90, %87 ]
  %93 = zext i1 %92 to i32
  %94 = call i32 @BUG_ON(i32 %93)
  %95 = load %struct.node*, %struct.node** %12, align 8
  %96 = icmp ne %struct.node* %95, null
  br i1 %96, label %97, label %124

97:                                               ; preds = %91
  %98 = load %struct.node*, %struct.node** %12, align 8
  %99 = bitcast %struct.node* %98 to %struct.tnode*
  %100 = call i64 @IS_LEAF(%struct.tnode* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %124

102:                                              ; preds = %97
  %103 = load i32, i32* %6, align 4
  %104 = load %struct.node*, %struct.node** %12, align 8
  %105 = getelementptr inbounds %struct.node, %struct.node* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @tkey_equals(i32 %103, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %124

109:                                              ; preds = %102
  %110 = load %struct.node*, %struct.node** %12, align 8
  %111 = bitcast %struct.node* %110 to %struct.leaf*
  store %struct.leaf* %111, %struct.leaf** %13, align 8
  %112 = load i32, i32* %7, align 4
  %113 = call %struct.leaf_info* @leaf_info_new(i32 %112)
  store %struct.leaf_info* %113, %struct.leaf_info** %16, align 8
  %114 = load %struct.leaf_info*, %struct.leaf_info** %16, align 8
  %115 = icmp ne %struct.leaf_info* %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %109
  store %struct.list_head* null, %struct.list_head** %4, align 8
  br label %294

117:                                              ; preds = %109
  %118 = load %struct.leaf_info*, %struct.leaf_info** %16, align 8
  %119 = getelementptr inbounds %struct.leaf_info, %struct.leaf_info* %118, i32 0, i32 0
  store %struct.list_head* %119, %struct.list_head** %15, align 8
  %120 = load %struct.leaf*, %struct.leaf** %13, align 8
  %121 = getelementptr inbounds %struct.leaf, %struct.leaf* %120, i32 0, i32 0
  %122 = load %struct.leaf_info*, %struct.leaf_info** %16, align 8
  %123 = call i32 @insert_leaf_info(i32* %121, %struct.leaf_info* %122)
  br label %292

124:                                              ; preds = %102, %97, %91
  %125 = call %struct.leaf* (...) @leaf_new()
  store %struct.leaf* %125, %struct.leaf** %13, align 8
  %126 = load %struct.leaf*, %struct.leaf** %13, align 8
  %127 = icmp ne %struct.leaf* %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %124
  store %struct.list_head* null, %struct.list_head** %4, align 8
  br label %294

129:                                              ; preds = %124
  %130 = load i32, i32* %6, align 4
  %131 = load %struct.leaf*, %struct.leaf** %13, align 8
  %132 = getelementptr inbounds %struct.leaf, %struct.leaf* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* %7, align 4
  %134 = call %struct.leaf_info* @leaf_info_new(i32 %133)
  store %struct.leaf_info* %134, %struct.leaf_info** %16, align 8
  %135 = load %struct.leaf_info*, %struct.leaf_info** %16, align 8
  %136 = icmp ne %struct.leaf_info* %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %129
  %138 = load %struct.leaf*, %struct.leaf** %13, align 8
  %139 = call i32 @free_leaf(%struct.leaf* %138)
  store %struct.list_head* null, %struct.list_head** %4, align 8
  br label %294

140:                                              ; preds = %129
  %141 = load %struct.leaf_info*, %struct.leaf_info** %16, align 8
  %142 = getelementptr inbounds %struct.leaf_info, %struct.leaf_info* %141, i32 0, i32 0
  store %struct.list_head* %142, %struct.list_head** %15, align 8
  %143 = load %struct.leaf*, %struct.leaf** %13, align 8
  %144 = getelementptr inbounds %struct.leaf, %struct.leaf* %143, i32 0, i32 0
  %145 = load %struct.leaf_info*, %struct.leaf_info** %16, align 8
  %146 = call i32 @insert_leaf_info(i32* %144, %struct.leaf_info* %145)
  %147 = load %struct.trie*, %struct.trie** %5, align 8
  %148 = getelementptr inbounds %struct.trie, %struct.trie* %147, i32 0, i32 0
  %149 = load %struct.tnode*, %struct.tnode** %148, align 8
  %150 = icmp ne %struct.tnode* %149, null
  br i1 %150, label %151, label %175

151:                                              ; preds = %140
  %152 = load %struct.node*, %struct.node** %12, align 8
  %153 = icmp eq %struct.node* %152, null
  br i1 %153, label %154, label %175

154:                                              ; preds = %151
  %155 = load %struct.leaf*, %struct.leaf** %13, align 8
  %156 = bitcast %struct.leaf* %155 to %struct.node*
  %157 = bitcast %struct.node* %156 to %struct.tnode*
  %158 = load %struct.tnode*, %struct.tnode** %10, align 8
  %159 = call i32 @node_set_parent(%struct.tnode* %157, %struct.tnode* %158)
  %160 = load i32, i32* %6, align 4
  %161 = load %struct.tnode*, %struct.tnode** %10, align 8
  %162 = getelementptr inbounds %struct.tnode, %struct.tnode* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.tnode*, %struct.tnode** %10, align 8
  %165 = getelementptr inbounds %struct.tnode, %struct.tnode* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @tkey_extract_bits(i32 %160, i32 %163, i32 %166)
  store i32 %167, i32* %17, align 4
  %168 = load %struct.trie*, %struct.trie** %5, align 8
  %169 = load %struct.tnode*, %struct.tnode** %10, align 8
  %170 = load i32, i32* %17, align 4
  %171 = load %struct.leaf*, %struct.leaf** %13, align 8
  %172 = bitcast %struct.leaf* %171 to %struct.node*
  %173 = bitcast %struct.node* %172 to %struct.tnode*
  %174 = call i32 @put_child(%struct.trie* %168, %struct.tnode* %169, i32 %170, %struct.tnode* %173)
  br label %265

175:                                              ; preds = %151, %140
  %176 = load %struct.tnode*, %struct.tnode** %10, align 8
  %177 = icmp ne %struct.tnode* %176, null
  br i1 %177, label %178, label %186

178:                                              ; preds = %175
  %179 = load %struct.tnode*, %struct.tnode** %10, align 8
  %180 = getelementptr inbounds %struct.tnode, %struct.tnode* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.tnode*, %struct.tnode** %10, align 8
  %183 = getelementptr inbounds %struct.tnode, %struct.tnode* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %181, %184
  store i32 %185, i32* %8, align 4
  br label %187

186:                                              ; preds = %175
  store i32 0, i32* %8, align 4
  br label %187

187:                                              ; preds = %186, %178
  %188 = load %struct.node*, %struct.node** %12, align 8
  %189 = icmp ne %struct.node* %188, null
  br i1 %189, label %190, label %202

190:                                              ; preds = %187
  %191 = load i32, i32* %6, align 4
  %192 = load i32, i32* %8, align 4
  %193 = load %struct.node*, %struct.node** %12, align 8
  %194 = getelementptr inbounds %struct.node, %struct.node* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @tkey_mismatch(i32 %191, i32 %192, i32 %195)
  store i32 %196, i32* %9, align 4
  %197 = load %struct.node*, %struct.node** %12, align 8
  %198 = getelementptr inbounds %struct.node, %struct.node* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %9, align 4
  %201 = call %struct.tnode* @tnode_new(i32 %199, i32 %200, i32 1)
  store %struct.tnode* %201, %struct.tnode** %11, align 8
  br label %206

202:                                              ; preds = %187
  store i32 0, i32* %9, align 4
  %203 = load i32, i32* %6, align 4
  %204 = load i32, i32* %9, align 4
  %205 = call %struct.tnode* @tnode_new(i32 %203, i32 %204, i32 1)
  store %struct.tnode* %205, %struct.tnode** %11, align 8
  br label %206

206:                                              ; preds = %202, %190
  %207 = load %struct.tnode*, %struct.tnode** %11, align 8
  %208 = icmp ne %struct.tnode* %207, null
  br i1 %208, label %214, label %209

209:                                              ; preds = %206
  %210 = load %struct.leaf_info*, %struct.leaf_info** %16, align 8
  %211 = call i32 @free_leaf_info(%struct.leaf_info* %210)
  %212 = load %struct.leaf*, %struct.leaf** %13, align 8
  %213 = call i32 @free_leaf(%struct.leaf* %212)
  store %struct.list_head* null, %struct.list_head** %4, align 8
  br label %294

214:                                              ; preds = %206
  %215 = load %struct.tnode*, %struct.tnode** %11, align 8
  %216 = bitcast %struct.tnode* %215 to %struct.node*
  %217 = bitcast %struct.node* %216 to %struct.tnode*
  %218 = load %struct.tnode*, %struct.tnode** %10, align 8
  %219 = call i32 @node_set_parent(%struct.tnode* %217, %struct.tnode* %218)
  %220 = load i32, i32* %6, align 4
  %221 = load i32, i32* %9, align 4
  %222 = call i32 @tkey_extract_bits(i32 %220, i32 %221, i32 1)
  store i32 %222, i32* %14, align 4
  %223 = load %struct.trie*, %struct.trie** %5, align 8
  %224 = load %struct.tnode*, %struct.tnode** %11, align 8
  %225 = load i32, i32* %14, align 4
  %226 = load %struct.leaf*, %struct.leaf** %13, align 8
  %227 = bitcast %struct.leaf* %226 to %struct.node*
  %228 = bitcast %struct.node* %227 to %struct.tnode*
  %229 = call i32 @put_child(%struct.trie* %223, %struct.tnode* %224, i32 %225, %struct.tnode* %228)
  %230 = load %struct.trie*, %struct.trie** %5, align 8
  %231 = load %struct.tnode*, %struct.tnode** %11, align 8
  %232 = load i32, i32* %14, align 4
  %233 = sub nsw i32 1, %232
  %234 = load %struct.node*, %struct.node** %12, align 8
  %235 = bitcast %struct.node* %234 to %struct.tnode*
  %236 = call i32 @put_child(%struct.trie* %230, %struct.tnode* %231, i32 %233, %struct.tnode* %235)
  %237 = load %struct.tnode*, %struct.tnode** %10, align 8
  %238 = icmp ne %struct.tnode* %237, null
  br i1 %238, label %239, label %255

239:                                              ; preds = %214
  %240 = load i32, i32* %6, align 4
  %241 = load %struct.tnode*, %struct.tnode** %10, align 8
  %242 = getelementptr inbounds %struct.tnode, %struct.tnode* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.tnode*, %struct.tnode** %10, align 8
  %245 = getelementptr inbounds %struct.tnode, %struct.tnode* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @tkey_extract_bits(i32 %240, i32 %243, i32 %246)
  store i32 %247, i32* %17, align 4
  %248 = load %struct.trie*, %struct.trie** %5, align 8
  %249 = load %struct.tnode*, %struct.tnode** %10, align 8
  %250 = load i32, i32* %17, align 4
  %251 = load %struct.tnode*, %struct.tnode** %11, align 8
  %252 = bitcast %struct.tnode* %251 to %struct.node*
  %253 = bitcast %struct.node* %252 to %struct.tnode*
  %254 = call i32 @put_child(%struct.trie* %248, %struct.tnode* %249, i32 %250, %struct.tnode* %253)
  br label %264

255:                                              ; preds = %214
  %256 = load %struct.trie*, %struct.trie** %5, align 8
  %257 = getelementptr inbounds %struct.trie, %struct.trie* %256, i32 0, i32 0
  %258 = load %struct.tnode*, %struct.tnode** %257, align 8
  %259 = load %struct.tnode*, %struct.tnode** %11, align 8
  %260 = bitcast %struct.tnode* %259 to %struct.node*
  %261 = bitcast %struct.node* %260 to %struct.tnode*
  %262 = call i32 @rcu_assign_pointer(%struct.tnode* %258, %struct.tnode* %261)
  %263 = load %struct.tnode*, %struct.tnode** %11, align 8
  store %struct.tnode* %263, %struct.tnode** %10, align 8
  br label %264

264:                                              ; preds = %255, %239
  br label %265

265:                                              ; preds = %264, %154
  %266 = load %struct.tnode*, %struct.tnode** %10, align 8
  %267 = icmp ne %struct.tnode* %266, null
  br i1 %267, label %268, label %288

268:                                              ; preds = %265
  %269 = load %struct.tnode*, %struct.tnode** %10, align 8
  %270 = getelementptr inbounds %struct.tnode, %struct.tnode* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.tnode*, %struct.tnode** %10, align 8
  %273 = getelementptr inbounds %struct.tnode, %struct.tnode* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = add nsw i32 %271, %274
  %276 = icmp sgt i32 %275, 32
  br i1 %276, label %277, label %288

277:                                              ; preds = %268
  %278 = load %struct.tnode*, %struct.tnode** %10, align 8
  %279 = load %struct.tnode*, %struct.tnode** %10, align 8
  %280 = getelementptr inbounds %struct.tnode, %struct.tnode* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.tnode*, %struct.tnode** %10, align 8
  %283 = getelementptr inbounds %struct.tnode, %struct.tnode* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* %6, align 4
  %286 = load i32, i32* %7, align 4
  %287 = call i32 @pr_warning(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), %struct.tnode* %278, i32 %281, i32 %284, i32 %285, i32 %286)
  br label %288

288:                                              ; preds = %277, %268, %265
  %289 = load %struct.trie*, %struct.trie** %5, align 8
  %290 = load %struct.tnode*, %struct.tnode** %10, align 8
  %291 = call i32 @trie_rebalance(%struct.trie* %289, %struct.tnode* %290)
  br label %292

292:                                              ; preds = %288, %117
  %293 = load %struct.list_head*, %struct.list_head** %15, align 8
  store %struct.list_head* %293, %struct.list_head** %4, align 8
  br label %294

294:                                              ; preds = %292, %209, %137, %128, %116
  %295 = load %struct.list_head*, %struct.list_head** %4, align 8
  ret %struct.list_head* %295
}

declare dso_local i64 @NODE_TYPE(%struct.tnode*) #1

declare dso_local i32 @check_tnode(%struct.tnode*) #1

declare dso_local i64 @tkey_sub_equals(i32, i32, i32, i32) #1

declare dso_local %struct.tnode* @tnode_get_child(%struct.tnode*, i32) #1

declare dso_local i32 @tkey_extract_bits(i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.tnode* @node_parent(%struct.tnode*) #1

declare dso_local i64 @IS_LEAF(%struct.tnode*) #1

declare dso_local i64 @tkey_equals(i32, i32) #1

declare dso_local %struct.leaf_info* @leaf_info_new(i32) #1

declare dso_local i32 @insert_leaf_info(i32*, %struct.leaf_info*) #1

declare dso_local %struct.leaf* @leaf_new(...) #1

declare dso_local i32 @free_leaf(%struct.leaf*) #1

declare dso_local i32 @node_set_parent(%struct.tnode*, %struct.tnode*) #1

declare dso_local i32 @put_child(%struct.trie*, %struct.tnode*, i32, %struct.tnode*) #1

declare dso_local i32 @tkey_mismatch(i32, i32, i32) #1

declare dso_local %struct.tnode* @tnode_new(i32, i32, i32) #1

declare dso_local i32 @free_leaf_info(%struct.leaf_info*) #1

declare dso_local i32 @rcu_assign_pointer(%struct.tnode*, %struct.tnode*) #1

declare dso_local i32 @pr_warning(i8*, %struct.tnode*, i32, i32, i32, i32) #1

declare dso_local i32 @trie_rebalance(%struct.trie*, %struct.tnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
