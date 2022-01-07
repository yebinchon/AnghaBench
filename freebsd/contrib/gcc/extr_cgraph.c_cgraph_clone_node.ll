; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraph.c_cgraph_clone_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraph.c_cgraph_clone_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { i32, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_edge*, i32, i32, i32, i32, i32, %struct.TYPE_2__*, %struct.cgraph_node*, i32 }
%struct.cgraph_edge = type { i32, %struct.cgraph_edge* }
%struct.TYPE_2__ = type { %struct.cgraph_node* }

@REG_BR_PROB_BASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cgraph_node* @cgraph_clone_node(%struct.cgraph_node* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.cgraph_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cgraph_node*, align 8
  %10 = alloca %struct.cgraph_edge*, align 8
  %11 = alloca i32, align 4
  store %struct.cgraph_node* %0, %struct.cgraph_node** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = call %struct.cgraph_node* (...) @cgraph_create_node()
  store %struct.cgraph_node* %12, %struct.cgraph_node** %9, align 8
  %13 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %14 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %13, i32 0, i32 11
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.cgraph_node*, %struct.cgraph_node** %9, align 8
  %17 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %16, i32 0, i32 11
  store i32 %15, i32* %17, align 8
  %18 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %19 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %18, i32 0, i32 9
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load %struct.cgraph_node*, %struct.cgraph_node** %9, align 8
  %22 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %21, i32 0, i32 9
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %22, align 8
  %23 = load %struct.cgraph_node*, %struct.cgraph_node** %9, align 8
  %24 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %23, i32 0, i32 9
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = icmp ne %struct.TYPE_2__* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %4
  %28 = load %struct.cgraph_node*, %struct.cgraph_node** %9, align 8
  %29 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %28, i32 0, i32 9
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.cgraph_node*, %struct.cgraph_node** %31, align 8
  %33 = load %struct.cgraph_node*, %struct.cgraph_node** %9, align 8
  %34 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %33, i32 0, i32 10
  store %struct.cgraph_node* %32, %struct.cgraph_node** %34, align 8
  %35 = load %struct.cgraph_node*, %struct.cgraph_node** %9, align 8
  %36 = load %struct.cgraph_node*, %struct.cgraph_node** %9, align 8
  %37 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %36, i32 0, i32 9
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store %struct.cgraph_node* %35, %struct.cgraph_node** %39, align 8
  br label %40

40:                                               ; preds = %27, %4
  %41 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %42 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.cgraph_node*, %struct.cgraph_node** %9, align 8
  %45 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %44, i32 0, i32 8
  store i32 %43, i32* %45, align 8
  %46 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %47 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.cgraph_node*, %struct.cgraph_node** %9, align 8
  %50 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %49, i32 0, i32 7
  store i32 %48, i32* %50, align 4
  %51 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %52 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.cgraph_node*, %struct.cgraph_node** %9, align 8
  %55 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %54, i32 0, i32 6
  store i32 %53, i32* %55, align 8
  %56 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %57 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.cgraph_node*, %struct.cgraph_node** %9, align 8
  %60 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 4
  %61 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %62 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.cgraph_node*, %struct.cgraph_node** %9, align 8
  %65 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.cgraph_node*, %struct.cgraph_node** %9, align 8
  %68 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %70 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %40
  %74 = load %struct.cgraph_node*, %struct.cgraph_node** %9, align 8
  %75 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @REG_BR_PROB_BASE, align 4
  %78 = mul nsw i32 %76, %77
  %79 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %80 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sdiv i32 %78, %81
  store i32 %82, i32* %11, align 4
  br label %84

83:                                               ; preds = %40
  store i32 0, i32* %11, align 4
  br label %84

84:                                               ; preds = %83, %73
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %84
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %90 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sub nsw i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %94 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %87
  %98 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %99 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %98, i32 0, i32 0
  store i32 0, i32* %99, align 8
  br label %100

100:                                              ; preds = %97, %87
  br label %101

101:                                              ; preds = %100, %84
  %102 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %103 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %102, i32 0, i32 3
  %104 = load %struct.cgraph_edge*, %struct.cgraph_edge** %103, align 8
  store %struct.cgraph_edge* %104, %struct.cgraph_edge** %10, align 8
  br label %105

105:                                              ; preds = %118, %101
  %106 = load %struct.cgraph_edge*, %struct.cgraph_edge** %10, align 8
  %107 = icmp ne %struct.cgraph_edge* %106, null
  br i1 %107, label %108, label %122

108:                                              ; preds = %105
  %109 = load %struct.cgraph_edge*, %struct.cgraph_edge** %10, align 8
  %110 = load %struct.cgraph_node*, %struct.cgraph_node** %9, align 8
  %111 = load %struct.cgraph_edge*, %struct.cgraph_edge** %10, align 8
  %112 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @cgraph_clone_edge(%struct.cgraph_edge* %109, %struct.cgraph_node* %110, i32 %113, i32 %114, i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %108
  %119 = load %struct.cgraph_edge*, %struct.cgraph_edge** %10, align 8
  %120 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %119, i32 0, i32 1
  %121 = load %struct.cgraph_edge*, %struct.cgraph_edge** %120, align 8
  store %struct.cgraph_edge* %121, %struct.cgraph_edge** %10, align 8
  br label %105

122:                                              ; preds = %105
  %123 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %124 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %123, i32 0, i32 2
  %125 = load %struct.cgraph_node*, %struct.cgraph_node** %124, align 8
  %126 = load %struct.cgraph_node*, %struct.cgraph_node** %9, align 8
  %127 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %126, i32 0, i32 2
  store %struct.cgraph_node* %125, %struct.cgraph_node** %127, align 8
  %128 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %129 = load %struct.cgraph_node*, %struct.cgraph_node** %9, align 8
  %130 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %129, i32 0, i32 1
  store %struct.cgraph_node* %128, %struct.cgraph_node** %130, align 8
  %131 = load %struct.cgraph_node*, %struct.cgraph_node** %9, align 8
  %132 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %133 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %132, i32 0, i32 2
  store %struct.cgraph_node* %131, %struct.cgraph_node** %133, align 8
  %134 = load %struct.cgraph_node*, %struct.cgraph_node** %9, align 8
  %135 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %134, i32 0, i32 2
  %136 = load %struct.cgraph_node*, %struct.cgraph_node** %135, align 8
  %137 = icmp ne %struct.cgraph_node* %136, null
  br i1 %137, label %138, label %144

138:                                              ; preds = %122
  %139 = load %struct.cgraph_node*, %struct.cgraph_node** %9, align 8
  %140 = load %struct.cgraph_node*, %struct.cgraph_node** %9, align 8
  %141 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %140, i32 0, i32 2
  %142 = load %struct.cgraph_node*, %struct.cgraph_node** %141, align 8
  %143 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %142, i32 0, i32 1
  store %struct.cgraph_node* %139, %struct.cgraph_node** %143, align 8
  br label %144

144:                                              ; preds = %138, %122
  %145 = load %struct.cgraph_node*, %struct.cgraph_node** %9, align 8
  ret %struct.cgraph_node* %145
}

declare dso_local %struct.cgraph_node* @cgraph_create_node(...) #1

declare dso_local i32 @cgraph_clone_edge(%struct.cgraph_edge*, %struct.cgraph_node*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
