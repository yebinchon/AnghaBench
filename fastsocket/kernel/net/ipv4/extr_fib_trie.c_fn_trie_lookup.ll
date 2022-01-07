; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_trie.c_fn_trie_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_trie.c_fn_trie_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_table = type { i64 }
%struct.flowi = type { i32 }
%struct.fib_result = type { i32 }
%struct.trie = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.node = type { i32 }
%struct.tnode = type { i32, i32, i32, i32* }
%struct.leaf = type { i32 }

@KEYLENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib_table*, %struct.flowi*, %struct.fib_result*)* @fn_trie_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fn_trie_lookup(%struct.fib_table* %0, %struct.flowi* %1, %struct.fib_result* %2) #0 {
  %4 = alloca %struct.fib_table*, align 8
  %5 = alloca %struct.flowi*, align 8
  %6 = alloca %struct.fib_result*, align 8
  %7 = alloca %struct.trie*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.node*, align 8
  %10 = alloca %struct.tnode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.tnode*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.tnode*, align 8
  store %struct.fib_table* %0, %struct.fib_table** %4, align 8
  store %struct.flowi* %1, %struct.flowi** %5, align 8
  store %struct.fib_result* %2, %struct.fib_result** %6, align 8
  %23 = load %struct.fib_table*, %struct.fib_table** %4, align 8
  %24 = getelementptr inbounds %struct.fib_table, %struct.fib_table* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.trie*
  store %struct.trie* %26, %struct.trie** %7, align 8
  %27 = load %struct.flowi*, %struct.flowi** %5, align 8
  %28 = getelementptr inbounds %struct.flowi, %struct.flowi* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ntohl(i32 %29)
  store i32 %30, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %31 = load i32, i32* @KEYLENGTH, align 4
  store i32 %31, i32* %16, align 4
  %32 = call i32 (...) @rcu_read_lock()
  %33 = load %struct.trie*, %struct.trie** %7, align 8
  %34 = getelementptr inbounds %struct.trie, %struct.trie* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.node* @rcu_dereference(i32 %35)
  store %struct.node* %36, %struct.node** %9, align 8
  %37 = load %struct.node*, %struct.node** %9, align 8
  %38 = icmp ne %struct.node* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %3
  br label %262

40:                                               ; preds = %3
  %41 = load %struct.node*, %struct.node** %9, align 8
  %42 = call i64 @IS_LEAF(%struct.node* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load %struct.trie*, %struct.trie** %7, align 8
  %46 = load %struct.node*, %struct.node** %9, align 8
  %47 = bitcast %struct.node* %46 to %struct.leaf*
  %48 = load i32, i32* %13, align 4
  %49 = load %struct.flowi*, %struct.flowi** %5, align 8
  %50 = load %struct.fib_result*, %struct.fib_result** %6, align 8
  %51 = call i32 @check_leaf(%struct.trie* %45, %struct.leaf* %47, i32 %48, %struct.flowi* %49, %struct.fib_result* %50)
  store i32 %51, i32* %8, align 4
  br label %263

52:                                               ; preds = %40
  %53 = load %struct.node*, %struct.node** %9, align 8
  %54 = bitcast %struct.node* %53 to %struct.tnode*
  store %struct.tnode* %54, %struct.tnode** %10, align 8
  store i32 0, i32* %14, align 4
  br label %55

55:                                               ; preds = %260, %181, %52
  %56 = load %struct.tnode*, %struct.tnode** %10, align 8
  %57 = icmp ne %struct.tnode* %56, null
  br i1 %57, label %58, label %261

58:                                               ; preds = %55
  %59 = load %struct.tnode*, %struct.tnode** %10, align 8
  %60 = getelementptr inbounds %struct.tnode, %struct.tnode* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %11, align 4
  %62 = load %struct.tnode*, %struct.tnode** %10, align 8
  %63 = getelementptr inbounds %struct.tnode, %struct.tnode* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %14, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %58
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %16, align 4
  %70 = call i32 @mask_pfx(i32 %68, i32 %69)
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @tkey_extract_bits(i32 %70, i32 %71, i32 %72)
  store i32 %73, i32* %15, align 4
  br label %74

74:                                               ; preds = %67, %58
  %75 = load %struct.tnode*, %struct.tnode** %10, align 8
  %76 = load i32, i32* %15, align 4
  %77 = call %struct.node* @tnode_get_child_rcu(%struct.tnode* %75, i32 %76)
  store %struct.node* %77, %struct.node** %9, align 8
  %78 = load %struct.node*, %struct.node** %9, align 8
  %79 = icmp eq %struct.node* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %184

81:                                               ; preds = %74
  %82 = load %struct.node*, %struct.node** %9, align 8
  %83 = call i64 @IS_LEAF(%struct.node* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %81
  %86 = load %struct.trie*, %struct.trie** %7, align 8
  %87 = load %struct.node*, %struct.node** %9, align 8
  %88 = bitcast %struct.node* %87 to %struct.leaf*
  %89 = load i32, i32* %13, align 4
  %90 = load %struct.flowi*, %struct.flowi** %5, align 8
  %91 = load %struct.fib_result*, %struct.fib_result** %6, align 8
  %92 = call i32 @check_leaf(%struct.trie* %86, %struct.leaf* %88, i32 %89, %struct.flowi* %90, %struct.fib_result* %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %85
  br label %184

96:                                               ; preds = %85
  br label %263

97:                                               ; preds = %81
  %98 = load %struct.node*, %struct.node** %9, align 8
  %99 = bitcast %struct.node* %98 to %struct.tnode*
  store %struct.tnode* %99, %struct.tnode** %17, align 8
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %101, %102
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %126

105:                                              ; preds = %97
  %106 = load %struct.tnode*, %struct.tnode** %17, align 8
  %107 = getelementptr inbounds %struct.tnode, %struct.tnode* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %16, align 4
  %110 = load %struct.tnode*, %struct.tnode** %17, align 8
  %111 = getelementptr inbounds %struct.tnode, %struct.tnode* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %16, align 4
  %114 = sub nsw i32 %112, %113
  %115 = call i32 @tkey_extract_bits(i32 %108, i32 %109, i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %105
  %118 = load %struct.tnode*, %struct.tnode** %17, align 8
  %119 = getelementptr inbounds %struct.tnode, %struct.tnode* %118, i32 0, i32 3
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %117, %105
  br label %184

125:                                              ; preds = %117
  br label %126

126:                                              ; preds = %125, %97
  %127 = load %struct.tnode*, %struct.tnode** %17, align 8
  %128 = getelementptr inbounds %struct.tnode, %struct.tnode* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.tnode*, %struct.tnode** %17, align 8
  %131 = getelementptr inbounds %struct.tnode, %struct.tnode* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @mask_pfx(i32 %129, i32 %132)
  store i32 %133, i32* %18, align 4
  %134 = load i32, i32* %13, align 4
  %135 = load %struct.tnode*, %struct.tnode** %17, align 8
  %136 = getelementptr inbounds %struct.tnode, %struct.tnode* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @mask_pfx(i32 %134, i32 %137)
  store i32 %138, i32* %19, align 4
  %139 = load i32, i32* %19, align 4
  %140 = load i32, i32* %18, align 4
  %141 = xor i32 %139, %140
  store i32 %141, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %142 = load i32, i32* %20, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %181

144:                                              ; preds = %126
  br label %145

145:                                              ; preds = %153, %144
  %146 = load i32, i32* %20, align 4
  %147 = load i32, i32* @KEYLENGTH, align 4
  %148 = sub nsw i32 %147, 1
  %149 = shl i32 1, %148
  %150 = and i32 %146, %149
  %151 = icmp ne i32 %150, 0
  %152 = xor i1 %151, true
  br i1 %152, label %153, label %158

153:                                              ; preds = %145
  %154 = load i32, i32* %21, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %21, align 4
  %156 = load i32, i32* %20, align 4
  %157 = shl i32 %156, 1
  store i32 %157, i32* %20, align 4
  br label %145

158:                                              ; preds = %145
  %159 = load %struct.tnode*, %struct.tnode** %17, align 8
  %160 = getelementptr inbounds %struct.tnode, %struct.tnode* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* %21, align 4
  %163 = load %struct.tnode*, %struct.tnode** %17, align 8
  %164 = getelementptr inbounds %struct.tnode, %struct.tnode* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* %21, align 4
  %167 = sub nsw i32 %165, %166
  %168 = call i32 @tkey_extract_bits(i32 %161, i32 %162, i32 %167)
  store i32 %168, i32* %19, align 4
  %169 = load i32, i32* %19, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %158
  br label %184

172:                                              ; preds = %158
  %173 = load i32, i32* %16, align 4
  %174 = load %struct.tnode*, %struct.tnode** %17, align 8
  %175 = getelementptr inbounds %struct.tnode, %struct.tnode* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp sge i32 %173, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %172
  %179 = load i32, i32* %21, align 4
  store i32 %179, i32* %16, align 4
  br label %180

180:                                              ; preds = %178, %172
  br label %181

181:                                              ; preds = %180, %126
  %182 = load %struct.node*, %struct.node** %9, align 8
  %183 = bitcast %struct.node* %182 to %struct.tnode*
  store %struct.tnode* %183, %struct.tnode** %10, align 8
  store i32 0, i32* %14, align 4
  br label %55

184:                                              ; preds = %248, %171, %124, %95, %80
  %185 = load i32, i32* %14, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %14, align 4
  br label %187

187:                                              ; preds = %203, %184
  %188 = load i32, i32* %14, align 4
  %189 = load %struct.tnode*, %struct.tnode** %10, align 8
  %190 = getelementptr inbounds %struct.tnode, %struct.tnode* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = icmp sle i32 %188, %191
  br i1 %192, label %193, label %201

193:                                              ; preds = %187
  %194 = load i32, i32* %15, align 4
  %195 = load i32, i32* %14, align 4
  %196 = sub nsw i32 %195, 1
  %197 = shl i32 1, %196
  %198 = and i32 %194, %197
  %199 = icmp ne i32 %198, 0
  %200 = xor i1 %199, true
  br label %201

201:                                              ; preds = %193, %187
  %202 = phi i1 [ false, %187 ], [ %200, %193 ]
  br i1 %202, label %203, label %206

203:                                              ; preds = %201
  %204 = load i32, i32* %14, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %14, align 4
  br label %187

206:                                              ; preds = %201
  %207 = load i32, i32* %16, align 4
  %208 = load %struct.tnode*, %struct.tnode** %10, align 8
  %209 = getelementptr inbounds %struct.tnode, %struct.tnode* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.tnode*, %struct.tnode** %10, align 8
  %212 = getelementptr inbounds %struct.tnode, %struct.tnode* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = add nsw i32 %210, %213
  %215 = load i32, i32* %14, align 4
  %216 = sub nsw i32 %214, %215
  %217 = icmp sgt i32 %207, %216
  br i1 %217, label %218, label %228

218:                                              ; preds = %206
  %219 = load %struct.tnode*, %struct.tnode** %10, align 8
  %220 = getelementptr inbounds %struct.tnode, %struct.tnode* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.tnode*, %struct.tnode** %10, align 8
  %223 = getelementptr inbounds %struct.tnode, %struct.tnode* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = add nsw i32 %221, %224
  %226 = load i32, i32* %14, align 4
  %227 = sub nsw i32 %225, %226
  store i32 %227, i32* %16, align 4
  br label %228

228:                                              ; preds = %218, %206
  %229 = load i32, i32* %14, align 4
  %230 = load %struct.tnode*, %struct.tnode** %10, align 8
  %231 = getelementptr inbounds %struct.tnode, %struct.tnode* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = icmp sle i32 %229, %232
  br i1 %233, label %234, label %241

234:                                              ; preds = %228
  %235 = load i32, i32* %14, align 4
  %236 = sub nsw i32 %235, 1
  %237 = shl i32 1, %236
  %238 = xor i32 %237, -1
  %239 = load i32, i32* %15, align 4
  %240 = and i32 %239, %238
  store i32 %240, i32* %15, align 4
  br label %260

241:                                              ; preds = %228
  %242 = load %struct.tnode*, %struct.tnode** %10, align 8
  %243 = bitcast %struct.tnode* %242 to %struct.node*
  %244 = call %struct.tnode* @node_parent_rcu(%struct.node* %243)
  store %struct.tnode* %244, %struct.tnode** %22, align 8
  %245 = load %struct.tnode*, %struct.tnode** %22, align 8
  %246 = icmp ne %struct.tnode* %245, null
  br i1 %246, label %248, label %247

247:                                              ; preds = %241
  br label %262

248:                                              ; preds = %241
  %249 = load %struct.tnode*, %struct.tnode** %10, align 8
  %250 = getelementptr inbounds %struct.tnode, %struct.tnode* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.tnode*, %struct.tnode** %22, align 8
  %253 = getelementptr inbounds %struct.tnode, %struct.tnode* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.tnode*, %struct.tnode** %22, align 8
  %256 = getelementptr inbounds %struct.tnode, %struct.tnode* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @tkey_extract_bits(i32 %251, i32 %254, i32 %257)
  store i32 %258, i32* %15, align 4
  %259 = load %struct.tnode*, %struct.tnode** %22, align 8
  store %struct.tnode* %259, %struct.tnode** %10, align 8
  store i32 0, i32* %14, align 4
  br label %184

260:                                              ; preds = %234
  br label %55

261:                                              ; preds = %55
  br label %262

262:                                              ; preds = %261, %247, %39
  store i32 1, i32* %8, align 4
  br label %263

263:                                              ; preds = %262, %96, %44
  %264 = call i32 (...) @rcu_read_unlock()
  %265 = load i32, i32* %8, align 4
  ret i32 %265
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.node* @rcu_dereference(i32) #1

declare dso_local i64 @IS_LEAF(%struct.node*) #1

declare dso_local i32 @check_leaf(%struct.trie*, %struct.leaf*, i32, %struct.flowi*, %struct.fib_result*) #1

declare dso_local i32 @tkey_extract_bits(i32, i32, i32) #1

declare dso_local i32 @mask_pfx(i32, i32) #1

declare dso_local %struct.node* @tnode_get_child_rcu(%struct.tnode*, i32) #1

declare dso_local %struct.tnode* @node_parent_rcu(%struct.node*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
