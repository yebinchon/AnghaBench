; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraphunit.c_cgraph_output_in_order.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraphunit.c_cgraph_output_in_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { i32, i64, %struct.cgraph_node* }
%struct.cgraph_varpool_node = type { i32, %struct.cgraph_varpool_node* }
%struct.cgraph_asm_node = type { i32, i32, %struct.cgraph_asm_node* }
%struct.cgraph_order_sort = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.cgraph_asm_node*, %struct.cgraph_varpool_node*, %struct.cgraph_node* }

@cgraph_order = common dso_local global i32 0, align 4
@cgraph_nodes = common dso_local global %struct.cgraph_node* null, align 8
@cgraph_varpool_nodes_queue = common dso_local global %struct.cgraph_varpool_node* null, align 8
@cgraph_asm_nodes = common dso_local global %struct.cgraph_asm_node* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cgraph_output_in_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgraph_output_in_order() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca %struct.cgraph_order_sort*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cgraph_node*, align 8
  %6 = alloca %struct.cgraph_varpool_node*, align 8
  %7 = alloca %struct.cgraph_asm_node*, align 8
  %8 = load i32, i32* @cgraph_order, align 4
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 32
  store i64 %11, i64* %2, align 8
  %12 = load i64, i64* %2, align 8
  %13 = call i64 @alloca(i64 %12)
  %14 = inttoptr i64 %13 to %struct.cgraph_order_sort*
  store %struct.cgraph_order_sort* %14, %struct.cgraph_order_sort** %3, align 8
  %15 = load %struct.cgraph_order_sort*, %struct.cgraph_order_sort** %3, align 8
  %16 = load i64, i64* %2, align 8
  %17 = call i32 @memset(%struct.cgraph_order_sort* %15, i32 0, i64 %16)
  %18 = call i32 (...) @cgraph_varpool_analyze_pending_decls()
  %19 = load %struct.cgraph_node*, %struct.cgraph_node** @cgraph_nodes, align 8
  store %struct.cgraph_node* %19, %struct.cgraph_node** %5, align 8
  br label %20

20:                                               ; preds = %54, %0
  %21 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %22 = icmp ne %struct.cgraph_node* %21, null
  br i1 %22, label %23, label %58

23:                                               ; preds = %20
  %24 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %25 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %23
  %29 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %30 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %4, align 4
  %32 = load %struct.cgraph_order_sort*, %struct.cgraph_order_sort** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.cgraph_order_sort, %struct.cgraph_order_sort* %32, i64 %34
  %36 = getelementptr inbounds %struct.cgraph_order_sort, %struct.cgraph_order_sort* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 129
  %39 = zext i1 %38 to i32
  %40 = call i32 @gcc_assert(i32 %39)
  %41 = load %struct.cgraph_order_sort*, %struct.cgraph_order_sort** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.cgraph_order_sort, %struct.cgraph_order_sort* %41, i64 %43
  %45 = getelementptr inbounds %struct.cgraph_order_sort, %struct.cgraph_order_sort* %44, i32 0, i32 0
  store i32 130, i32* %45, align 8
  %46 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %47 = load %struct.cgraph_order_sort*, %struct.cgraph_order_sort** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.cgraph_order_sort, %struct.cgraph_order_sort* %47, i64 %49
  %51 = getelementptr inbounds %struct.cgraph_order_sort, %struct.cgraph_order_sort* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  store %struct.cgraph_node* %46, %struct.cgraph_node** %52, align 8
  br label %53

53:                                               ; preds = %28, %23
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %56 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %55, i32 0, i32 2
  %57 = load %struct.cgraph_node*, %struct.cgraph_node** %56, align 8
  store %struct.cgraph_node* %57, %struct.cgraph_node** %5, align 8
  br label %20

58:                                               ; preds = %20
  %59 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** @cgraph_varpool_nodes_queue, align 8
  store %struct.cgraph_varpool_node* %59, %struct.cgraph_varpool_node** %6, align 8
  br label %60

60:                                               ; preds = %88, %58
  %61 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %6, align 8
  %62 = icmp ne %struct.cgraph_varpool_node* %61, null
  br i1 %62, label %63, label %92

63:                                               ; preds = %60
  %64 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %6, align 8
  %65 = getelementptr inbounds %struct.cgraph_varpool_node, %struct.cgraph_varpool_node* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %4, align 4
  %67 = load %struct.cgraph_order_sort*, %struct.cgraph_order_sort** %3, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.cgraph_order_sort, %struct.cgraph_order_sort* %67, i64 %69
  %71 = getelementptr inbounds %struct.cgraph_order_sort, %struct.cgraph_order_sort* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 129
  %74 = zext i1 %73 to i32
  %75 = call i32 @gcc_assert(i32 %74)
  %76 = load %struct.cgraph_order_sort*, %struct.cgraph_order_sort** %3, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.cgraph_order_sort, %struct.cgraph_order_sort* %76, i64 %78
  %80 = getelementptr inbounds %struct.cgraph_order_sort, %struct.cgraph_order_sort* %79, i32 0, i32 0
  store i32 128, i32* %80, align 8
  %81 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %6, align 8
  %82 = load %struct.cgraph_order_sort*, %struct.cgraph_order_sort** %3, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.cgraph_order_sort, %struct.cgraph_order_sort* %82, i64 %84
  %86 = getelementptr inbounds %struct.cgraph_order_sort, %struct.cgraph_order_sort* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  store %struct.cgraph_varpool_node* %81, %struct.cgraph_varpool_node** %87, align 8
  br label %88

88:                                               ; preds = %63
  %89 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %6, align 8
  %90 = getelementptr inbounds %struct.cgraph_varpool_node, %struct.cgraph_varpool_node* %89, i32 0, i32 1
  %91 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %90, align 8
  store %struct.cgraph_varpool_node* %91, %struct.cgraph_varpool_node** %6, align 8
  br label %60

92:                                               ; preds = %60
  %93 = load %struct.cgraph_asm_node*, %struct.cgraph_asm_node** @cgraph_asm_nodes, align 8
  store %struct.cgraph_asm_node* %93, %struct.cgraph_asm_node** %7, align 8
  br label %94

94:                                               ; preds = %122, %92
  %95 = load %struct.cgraph_asm_node*, %struct.cgraph_asm_node** %7, align 8
  %96 = icmp ne %struct.cgraph_asm_node* %95, null
  br i1 %96, label %97, label %126

97:                                               ; preds = %94
  %98 = load %struct.cgraph_asm_node*, %struct.cgraph_asm_node** %7, align 8
  %99 = getelementptr inbounds %struct.cgraph_asm_node, %struct.cgraph_asm_node* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %4, align 4
  %101 = load %struct.cgraph_order_sort*, %struct.cgraph_order_sort** %3, align 8
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.cgraph_order_sort, %struct.cgraph_order_sort* %101, i64 %103
  %105 = getelementptr inbounds %struct.cgraph_order_sort, %struct.cgraph_order_sort* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %106, 129
  %108 = zext i1 %107 to i32
  %109 = call i32 @gcc_assert(i32 %108)
  %110 = load %struct.cgraph_order_sort*, %struct.cgraph_order_sort** %3, align 8
  %111 = load i32, i32* %4, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.cgraph_order_sort, %struct.cgraph_order_sort* %110, i64 %112
  %114 = getelementptr inbounds %struct.cgraph_order_sort, %struct.cgraph_order_sort* %113, i32 0, i32 0
  store i32 131, i32* %114, align 8
  %115 = load %struct.cgraph_asm_node*, %struct.cgraph_asm_node** %7, align 8
  %116 = load %struct.cgraph_order_sort*, %struct.cgraph_order_sort** %3, align 8
  %117 = load i32, i32* %4, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.cgraph_order_sort, %struct.cgraph_order_sort* %116, i64 %118
  %120 = getelementptr inbounds %struct.cgraph_order_sort, %struct.cgraph_order_sort* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  store %struct.cgraph_asm_node* %115, %struct.cgraph_asm_node** %121, align 8
  br label %122

122:                                              ; preds = %97
  %123 = load %struct.cgraph_asm_node*, %struct.cgraph_asm_node** %7, align 8
  %124 = getelementptr inbounds %struct.cgraph_asm_node, %struct.cgraph_asm_node* %123, i32 0, i32 2
  %125 = load %struct.cgraph_asm_node*, %struct.cgraph_asm_node** %124, align 8
  store %struct.cgraph_asm_node* %125, %struct.cgraph_asm_node** %7, align 8
  br label %94

126:                                              ; preds = %94
  store i32 0, i32* %4, align 4
  br label %127

127:                                              ; preds = %179, %126
  %128 = load i32, i32* %4, align 4
  %129 = load i32, i32* %1, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %182

131:                                              ; preds = %127
  %132 = load %struct.cgraph_order_sort*, %struct.cgraph_order_sort** %3, align 8
  %133 = load i32, i32* %4, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.cgraph_order_sort, %struct.cgraph_order_sort* %132, i64 %134
  %136 = getelementptr inbounds %struct.cgraph_order_sort, %struct.cgraph_order_sort* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  switch i32 %137, label %176 [
    i32 130, label %138
    i32 128, label %155
    i32 131, label %164
    i32 129, label %175
  ]

138:                                              ; preds = %131
  %139 = load %struct.cgraph_order_sort*, %struct.cgraph_order_sort** %3, align 8
  %140 = load i32, i32* %4, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.cgraph_order_sort, %struct.cgraph_order_sort* %139, i64 %141
  %143 = getelementptr inbounds %struct.cgraph_order_sort, %struct.cgraph_order_sort* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 2
  %145 = load %struct.cgraph_node*, %struct.cgraph_node** %144, align 8
  %146 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %145, i32 0, i32 1
  store i64 0, i64* %146, align 8
  %147 = load %struct.cgraph_order_sort*, %struct.cgraph_order_sort** %3, align 8
  %148 = load i32, i32* %4, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.cgraph_order_sort, %struct.cgraph_order_sort* %147, i64 %149
  %151 = getelementptr inbounds %struct.cgraph_order_sort, %struct.cgraph_order_sort* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 2
  %153 = load %struct.cgraph_node*, %struct.cgraph_node** %152, align 8
  %154 = call i32 @cgraph_expand_function(%struct.cgraph_node* %153)
  br label %178

155:                                              ; preds = %131
  %156 = load %struct.cgraph_order_sort*, %struct.cgraph_order_sort** %3, align 8
  %157 = load i32, i32* %4, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.cgraph_order_sort, %struct.cgraph_order_sort* %156, i64 %158
  %160 = getelementptr inbounds %struct.cgraph_order_sort, %struct.cgraph_order_sort* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 1
  %162 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %161, align 8
  %163 = call i32 @cgraph_varpool_assemble_decl(%struct.cgraph_varpool_node* %162)
  br label %178

164:                                              ; preds = %131
  %165 = load %struct.cgraph_order_sort*, %struct.cgraph_order_sort** %3, align 8
  %166 = load i32, i32* %4, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.cgraph_order_sort, %struct.cgraph_order_sort* %165, i64 %167
  %169 = getelementptr inbounds %struct.cgraph_order_sort, %struct.cgraph_order_sort* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  %171 = load %struct.cgraph_asm_node*, %struct.cgraph_asm_node** %170, align 8
  %172 = getelementptr inbounds %struct.cgraph_asm_node, %struct.cgraph_asm_node* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @assemble_asm(i32 %173)
  br label %178

175:                                              ; preds = %131
  br label %178

176:                                              ; preds = %131
  %177 = call i32 (...) @gcc_unreachable()
  br label %178

178:                                              ; preds = %176, %175, %164, %155, %138
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %4, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %4, align 4
  br label %127

182:                                              ; preds = %127
  store %struct.cgraph_asm_node* null, %struct.cgraph_asm_node** @cgraph_asm_nodes, align 8
  ret void
}

declare dso_local i64 @alloca(i64) #1

declare dso_local i32 @memset(%struct.cgraph_order_sort*, i32, i64) #1

declare dso_local i32 @cgraph_varpool_analyze_pending_decls(...) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @cgraph_expand_function(%struct.cgraph_node*) #1

declare dso_local i32 @cgraph_varpool_assemble_decl(%struct.cgraph_varpool_node*) #1

declare dso_local i32 @assemble_asm(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
