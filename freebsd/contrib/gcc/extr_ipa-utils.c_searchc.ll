; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-utils.c_searchc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-utils.c_searchc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.searchc_env = type { i64, i64, i32, %struct.cgraph_node**, i64, %struct.cgraph_node**, i32 }
%struct.cgraph_node = type { %struct.ipa_dfs_info*, %struct.cgraph_edge*, i32 }
%struct.ipa_dfs_info = type { i32, i64, i64, i32, %struct.cgraph_node* }
%struct.cgraph_edge = type { %struct.cgraph_node*, %struct.cgraph_edge* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.searchc_env*, %struct.cgraph_node*)* @searchc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @searchc(%struct.searchc_env* %0, %struct.cgraph_node* %1) #0 {
  %3 = alloca %struct.searchc_env*, align 8
  %4 = alloca %struct.cgraph_node*, align 8
  %5 = alloca %struct.cgraph_edge*, align 8
  %6 = alloca %struct.ipa_dfs_info*, align 8
  %7 = alloca %struct.ipa_dfs_info*, align 8
  %8 = alloca %struct.cgraph_node*, align 8
  %9 = alloca %struct.cgraph_node*, align 8
  %10 = alloca %struct.cgraph_node*, align 8
  %11 = alloca %struct.ipa_dfs_info*, align 8
  store %struct.searchc_env* %0, %struct.searchc_env** %3, align 8
  store %struct.cgraph_node* %1, %struct.cgraph_node** %4, align 8
  %12 = load %struct.cgraph_node*, %struct.cgraph_node** %4, align 8
  %13 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %12, i32 0, i32 0
  %14 = load %struct.ipa_dfs_info*, %struct.ipa_dfs_info** %13, align 8
  store %struct.ipa_dfs_info* %14, %struct.ipa_dfs_info** %6, align 8
  %15 = load %struct.ipa_dfs_info*, %struct.ipa_dfs_info** %6, align 8
  %16 = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load %struct.searchc_env*, %struct.searchc_env** %3, align 8
  %18 = getelementptr inbounds %struct.searchc_env, %struct.searchc_env* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.cgraph_node*, %struct.cgraph_node** %4, align 8
  %21 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @splay_tree_remove(i32 %19, i32 %22)
  %24 = load %struct.searchc_env*, %struct.searchc_env** %3, align 8
  %25 = getelementptr inbounds %struct.searchc_env, %struct.searchc_env* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.ipa_dfs_info*, %struct.ipa_dfs_info** %6, align 8
  %28 = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load %struct.searchc_env*, %struct.searchc_env** %3, align 8
  %30 = getelementptr inbounds %struct.searchc_env, %struct.searchc_env* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.ipa_dfs_info*, %struct.ipa_dfs_info** %6, align 8
  %33 = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %32, i32 0, i32 2
  store i64 %31, i64* %33, align 8
  %34 = load %struct.searchc_env*, %struct.searchc_env** %3, align 8
  %35 = getelementptr inbounds %struct.searchc_env, %struct.searchc_env* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %35, align 8
  %38 = load %struct.cgraph_node*, %struct.cgraph_node** %4, align 8
  %39 = load %struct.searchc_env*, %struct.searchc_env** %3, align 8
  %40 = getelementptr inbounds %struct.searchc_env, %struct.searchc_env* %39, i32 0, i32 5
  %41 = load %struct.cgraph_node**, %struct.cgraph_node*** %40, align 8
  %42 = load %struct.searchc_env*, %struct.searchc_env** %3, align 8
  %43 = getelementptr inbounds %struct.searchc_env, %struct.searchc_env* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %43, align 8
  %46 = getelementptr inbounds %struct.cgraph_node*, %struct.cgraph_node** %41, i64 %44
  store %struct.cgraph_node* %38, %struct.cgraph_node** %46, align 8
  %47 = load %struct.ipa_dfs_info*, %struct.ipa_dfs_info** %6, align 8
  %48 = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %47, i32 0, i32 3
  store i32 1, i32* %48, align 8
  %49 = load %struct.cgraph_node*, %struct.cgraph_node** %4, align 8
  %50 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %49, i32 0, i32 1
  %51 = load %struct.cgraph_edge*, %struct.cgraph_edge** %50, align 8
  store %struct.cgraph_edge* %51, %struct.cgraph_edge** %5, align 8
  br label %52

52:                                               ; preds = %134, %2
  %53 = load %struct.cgraph_edge*, %struct.cgraph_edge** %5, align 8
  %54 = icmp ne %struct.cgraph_edge* %53, null
  br i1 %54, label %55, label %138

55:                                               ; preds = %52
  %56 = load %struct.cgraph_edge*, %struct.cgraph_edge** %5, align 8
  %57 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %56, i32 0, i32 0
  %58 = load %struct.cgraph_node*, %struct.cgraph_node** %57, align 8
  store %struct.cgraph_node* %58, %struct.cgraph_node** %8, align 8
  %59 = load %struct.cgraph_node*, %struct.cgraph_node** %8, align 8
  %60 = call %struct.cgraph_node* @cgraph_master_clone(%struct.cgraph_node* %59)
  store %struct.cgraph_node* %60, %struct.cgraph_node** %8, align 8
  %61 = load %struct.cgraph_node*, %struct.cgraph_node** %8, align 8
  %62 = icmp ne %struct.cgraph_node* %61, null
  br i1 %62, label %63, label %133

63:                                               ; preds = %55
  %64 = load %struct.cgraph_node*, %struct.cgraph_node** %8, align 8
  %65 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %64, i32 0, i32 0
  %66 = load %struct.ipa_dfs_info*, %struct.ipa_dfs_info** %65, align 8
  %67 = icmp ne %struct.ipa_dfs_info* %66, null
  br i1 %67, label %68, label %133

68:                                               ; preds = %63
  %69 = load %struct.cgraph_node*, %struct.cgraph_node** %8, align 8
  %70 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %69, i32 0, i32 0
  %71 = load %struct.ipa_dfs_info*, %struct.ipa_dfs_info** %70, align 8
  store %struct.ipa_dfs_info* %71, %struct.ipa_dfs_info** %7, align 8
  %72 = load %struct.ipa_dfs_info*, %struct.ipa_dfs_info** %7, align 8
  %73 = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %98

76:                                               ; preds = %68
  %77 = load %struct.searchc_env*, %struct.searchc_env** %3, align 8
  %78 = load %struct.cgraph_node*, %struct.cgraph_node** %8, align 8
  call void @searchc(%struct.searchc_env* %77, %struct.cgraph_node* %78)
  %79 = load %struct.ipa_dfs_info*, %struct.ipa_dfs_info** %6, align 8
  %80 = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.ipa_dfs_info*, %struct.ipa_dfs_info** %7, align 8
  %83 = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp slt i64 %81, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %76
  %87 = load %struct.ipa_dfs_info*, %struct.ipa_dfs_info** %6, align 8
  %88 = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  br label %94

90:                                               ; preds = %76
  %91 = load %struct.ipa_dfs_info*, %struct.ipa_dfs_info** %7, align 8
  %92 = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  br label %94

94:                                               ; preds = %90, %86
  %95 = phi i64 [ %89, %86 ], [ %93, %90 ]
  %96 = load %struct.ipa_dfs_info*, %struct.ipa_dfs_info** %6, align 8
  %97 = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %96, i32 0, i32 2
  store i64 %95, i64* %97, align 8
  br label %132

98:                                               ; preds = %68
  %99 = load %struct.ipa_dfs_info*, %struct.ipa_dfs_info** %7, align 8
  %100 = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.ipa_dfs_info*, %struct.ipa_dfs_info** %6, align 8
  %103 = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp slt i64 %101, %104
  br i1 %105, label %106, label %131

106:                                              ; preds = %98
  %107 = load %struct.ipa_dfs_info*, %struct.ipa_dfs_info** %7, align 8
  %108 = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %131

111:                                              ; preds = %106
  %112 = load %struct.ipa_dfs_info*, %struct.ipa_dfs_info** %7, align 8
  %113 = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.ipa_dfs_info*, %struct.ipa_dfs_info** %6, align 8
  %116 = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp slt i64 %114, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %111
  %120 = load %struct.ipa_dfs_info*, %struct.ipa_dfs_info** %7, align 8
  %121 = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  br label %127

123:                                              ; preds = %111
  %124 = load %struct.ipa_dfs_info*, %struct.ipa_dfs_info** %6, align 8
  %125 = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  br label %127

127:                                              ; preds = %123, %119
  %128 = phi i64 [ %122, %119 ], [ %126, %123 ]
  %129 = load %struct.ipa_dfs_info*, %struct.ipa_dfs_info** %6, align 8
  %130 = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %129, i32 0, i32 2
  store i64 %128, i64* %130, align 8
  br label %131

131:                                              ; preds = %127, %106, %98
  br label %132

132:                                              ; preds = %131, %94
  br label %133

133:                                              ; preds = %132, %63, %55
  br label %134

134:                                              ; preds = %133
  %135 = load %struct.cgraph_edge*, %struct.cgraph_edge** %5, align 8
  %136 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %135, i32 0, i32 1
  %137 = load %struct.cgraph_edge*, %struct.cgraph_edge** %136, align 8
  store %struct.cgraph_edge* %137, %struct.cgraph_edge** %5, align 8
  br label %52

138:                                              ; preds = %52
  %139 = load %struct.ipa_dfs_info*, %struct.ipa_dfs_info** %6, align 8
  %140 = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.ipa_dfs_info*, %struct.ipa_dfs_info** %6, align 8
  %143 = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp eq i64 %141, %144
  br i1 %145, label %146, label %204

146:                                              ; preds = %138
  store %struct.cgraph_node* null, %struct.cgraph_node** %9, align 8
  br label %147

147:                                              ; preds = %183, %146
  %148 = load %struct.searchc_env*, %struct.searchc_env** %3, align 8
  %149 = getelementptr inbounds %struct.searchc_env, %struct.searchc_env* %148, i32 0, i32 5
  %150 = load %struct.cgraph_node**, %struct.cgraph_node*** %149, align 8
  %151 = load %struct.searchc_env*, %struct.searchc_env** %3, align 8
  %152 = getelementptr inbounds %struct.searchc_env, %struct.searchc_env* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = add i64 %153, -1
  store i64 %154, i64* %152, align 8
  %155 = getelementptr inbounds %struct.cgraph_node*, %struct.cgraph_node** %150, i64 %154
  %156 = load %struct.cgraph_node*, %struct.cgraph_node** %155, align 8
  store %struct.cgraph_node* %156, %struct.cgraph_node** %10, align 8
  %157 = load %struct.cgraph_node*, %struct.cgraph_node** %10, align 8
  %158 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %157, i32 0, i32 0
  %159 = load %struct.ipa_dfs_info*, %struct.ipa_dfs_info** %158, align 8
  store %struct.ipa_dfs_info* %159, %struct.ipa_dfs_info** %11, align 8
  %160 = load %struct.ipa_dfs_info*, %struct.ipa_dfs_info** %11, align 8
  %161 = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %160, i32 0, i32 3
  store i32 0, i32* %161, align 8
  %162 = load %struct.searchc_env*, %struct.searchc_env** %3, align 8
  %163 = getelementptr inbounds %struct.searchc_env, %struct.searchc_env* %162, i32 0, i32 4
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %147
  %167 = load %struct.cgraph_node*, %struct.cgraph_node** %9, align 8
  %168 = load %struct.ipa_dfs_info*, %struct.ipa_dfs_info** %11, align 8
  %169 = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %168, i32 0, i32 4
  store %struct.cgraph_node* %167, %struct.cgraph_node** %169, align 8
  %170 = load %struct.cgraph_node*, %struct.cgraph_node** %10, align 8
  store %struct.cgraph_node* %170, %struct.cgraph_node** %9, align 8
  br label %182

171:                                              ; preds = %147
  %172 = load %struct.cgraph_node*, %struct.cgraph_node** %10, align 8
  %173 = load %struct.searchc_env*, %struct.searchc_env** %3, align 8
  %174 = getelementptr inbounds %struct.searchc_env, %struct.searchc_env* %173, i32 0, i32 3
  %175 = load %struct.cgraph_node**, %struct.cgraph_node*** %174, align 8
  %176 = load %struct.searchc_env*, %struct.searchc_env** %3, align 8
  %177 = getelementptr inbounds %struct.searchc_env, %struct.searchc_env* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %177, align 8
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds %struct.cgraph_node*, %struct.cgraph_node** %175, i64 %180
  store %struct.cgraph_node* %172, %struct.cgraph_node** %181, align 8
  br label %182

182:                                              ; preds = %171, %166
  br label %183

183:                                              ; preds = %182
  %184 = load %struct.cgraph_node*, %struct.cgraph_node** %4, align 8
  %185 = load %struct.cgraph_node*, %struct.cgraph_node** %10, align 8
  %186 = icmp ne %struct.cgraph_node* %184, %185
  br i1 %186, label %147, label %187

187:                                              ; preds = %183
  %188 = load %struct.searchc_env*, %struct.searchc_env** %3, align 8
  %189 = getelementptr inbounds %struct.searchc_env, %struct.searchc_env* %188, i32 0, i32 4
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %203

192:                                              ; preds = %187
  %193 = load %struct.cgraph_node*, %struct.cgraph_node** %4, align 8
  %194 = load %struct.searchc_env*, %struct.searchc_env** %3, align 8
  %195 = getelementptr inbounds %struct.searchc_env, %struct.searchc_env* %194, i32 0, i32 3
  %196 = load %struct.cgraph_node**, %struct.cgraph_node*** %195, align 8
  %197 = load %struct.searchc_env*, %struct.searchc_env** %3, align 8
  %198 = getelementptr inbounds %struct.searchc_env, %struct.searchc_env* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %198, align 8
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds %struct.cgraph_node*, %struct.cgraph_node** %196, i64 %201
  store %struct.cgraph_node* %193, %struct.cgraph_node** %202, align 8
  br label %203

203:                                              ; preds = %192, %187
  br label %204

204:                                              ; preds = %203, %138
  ret void
}

declare dso_local i32 @splay_tree_remove(i32, i32) #1

declare dso_local %struct.cgraph_node* @cgraph_master_clone(%struct.cgraph_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
