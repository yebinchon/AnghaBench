; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_et-forest.c_et_nca.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_et-forest.c_et_nca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et_node = type { %struct.et_occ* }
%struct.et_occ = type { i32, i32, %struct.et_node*, %struct.TYPE_2__*, %struct.et_occ*, %struct.et_occ*, %struct.et_occ* }
%struct.TYPE_2__ = type { %struct.et_node* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.et_node* @et_nca(%struct.et_node* %0, %struct.et_node* %1) #0 {
  %3 = alloca %struct.et_node*, align 8
  %4 = alloca %struct.et_node*, align 8
  %5 = alloca %struct.et_node*, align 8
  %6 = alloca %struct.et_occ*, align 8
  %7 = alloca %struct.et_occ*, align 8
  %8 = alloca %struct.et_occ*, align 8
  %9 = alloca %struct.et_occ*, align 8
  %10 = alloca %struct.et_occ*, align 8
  %11 = alloca %struct.et_occ*, align 8
  %12 = alloca i32, align 4
  store %struct.et_node* %0, %struct.et_node** %4, align 8
  store %struct.et_node* %1, %struct.et_node** %5, align 8
  %13 = load %struct.et_node*, %struct.et_node** %4, align 8
  %14 = getelementptr inbounds %struct.et_node, %struct.et_node* %13, i32 0, i32 0
  %15 = load %struct.et_occ*, %struct.et_occ** %14, align 8
  store %struct.et_occ* %15, %struct.et_occ** %6, align 8
  %16 = load %struct.et_node*, %struct.et_node** %5, align 8
  %17 = getelementptr inbounds %struct.et_node, %struct.et_node* %16, i32 0, i32 0
  %18 = load %struct.et_occ*, %struct.et_occ** %17, align 8
  store %struct.et_occ* %18, %struct.et_occ** %7, align 8
  %19 = load %struct.et_node*, %struct.et_node** %4, align 8
  %20 = load %struct.et_node*, %struct.et_node** %5, align 8
  %21 = icmp eq %struct.et_node* %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load %struct.et_node*, %struct.et_node** %4, align 8
  store %struct.et_node* %23, %struct.et_node** %3, align 8
  br label %132

24:                                               ; preds = %2
  %25 = load %struct.et_occ*, %struct.et_occ** %6, align 8
  %26 = call i32 @et_splay(%struct.et_occ* %25)
  %27 = load %struct.et_occ*, %struct.et_occ** %6, align 8
  %28 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %27, i32 0, i32 5
  %29 = load %struct.et_occ*, %struct.et_occ** %28, align 8
  store %struct.et_occ* %29, %struct.et_occ** %9, align 8
  %30 = load %struct.et_occ*, %struct.et_occ** %6, align 8
  %31 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %30, i32 0, i32 6
  %32 = load %struct.et_occ*, %struct.et_occ** %31, align 8
  store %struct.et_occ* %32, %struct.et_occ** %10, align 8
  %33 = load %struct.et_occ*, %struct.et_occ** %9, align 8
  %34 = icmp ne %struct.et_occ* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = load %struct.et_occ*, %struct.et_occ** %9, align 8
  %37 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %36, i32 0, i32 4
  store %struct.et_occ* null, %struct.et_occ** %37, align 8
  br label %38

38:                                               ; preds = %35, %24
  %39 = load %struct.et_occ*, %struct.et_occ** %10, align 8
  %40 = icmp ne %struct.et_occ* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.et_occ*, %struct.et_occ** %10, align 8
  %43 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %42, i32 0, i32 4
  store %struct.et_occ* null, %struct.et_occ** %43, align 8
  br label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.et_occ*, %struct.et_occ** %7, align 8
  %46 = call i32 @et_splay(%struct.et_occ* %45)
  %47 = load %struct.et_occ*, %struct.et_occ** %9, align 8
  %48 = load %struct.et_occ*, %struct.et_occ** %7, align 8
  %49 = icmp eq %struct.et_occ* %47, %48
  br i1 %49, label %58, label %50

50:                                               ; preds = %44
  %51 = load %struct.et_occ*, %struct.et_occ** %9, align 8
  %52 = icmp ne %struct.et_occ* %51, null
  br i1 %52, label %53, label %72

53:                                               ; preds = %50
  %54 = load %struct.et_occ*, %struct.et_occ** %9, align 8
  %55 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %54, i32 0, i32 4
  %56 = load %struct.et_occ*, %struct.et_occ** %55, align 8
  %57 = icmp ne %struct.et_occ* %56, null
  br i1 %57, label %58, label %72

58:                                               ; preds = %53, %44
  %59 = load %struct.et_occ*, %struct.et_occ** %7, align 8
  %60 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %59, i32 0, i32 6
  %61 = load %struct.et_occ*, %struct.et_occ** %60, align 8
  store %struct.et_occ* %61, %struct.et_occ** %11, align 8
  %62 = load %struct.et_occ*, %struct.et_occ** %6, align 8
  %63 = load %struct.et_occ*, %struct.et_occ** %7, align 8
  %64 = call i32 @set_prev(%struct.et_occ* %62, %struct.et_occ* %63)
  %65 = load %struct.et_occ*, %struct.et_occ** %10, align 8
  %66 = icmp ne %struct.et_occ* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %58
  %68 = load %struct.et_occ*, %struct.et_occ** %6, align 8
  %69 = load %struct.et_occ*, %struct.et_occ** %10, align 8
  %70 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %69, i32 0, i32 4
  store %struct.et_occ* %68, %struct.et_occ** %70, align 8
  br label %71

71:                                               ; preds = %67, %58
  br label %86

72:                                               ; preds = %53, %50
  %73 = load %struct.et_occ*, %struct.et_occ** %7, align 8
  %74 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %73, i32 0, i32 5
  %75 = load %struct.et_occ*, %struct.et_occ** %74, align 8
  store %struct.et_occ* %75, %struct.et_occ** %11, align 8
  %76 = load %struct.et_occ*, %struct.et_occ** %6, align 8
  %77 = load %struct.et_occ*, %struct.et_occ** %7, align 8
  %78 = call i32 @set_next(%struct.et_occ* %76, %struct.et_occ* %77)
  %79 = load %struct.et_occ*, %struct.et_occ** %9, align 8
  %80 = icmp ne %struct.et_occ* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %72
  %82 = load %struct.et_occ*, %struct.et_occ** %6, align 8
  %83 = load %struct.et_occ*, %struct.et_occ** %9, align 8
  %84 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %83, i32 0, i32 4
  store %struct.et_occ* %82, %struct.et_occ** %84, align 8
  br label %85

85:                                               ; preds = %81, %72
  br label %86

86:                                               ; preds = %85, %71
  %87 = load %struct.et_occ*, %struct.et_occ** %7, align 8
  %88 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 0, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.et_occ*, %struct.et_occ** %6, align 8
  store %struct.et_occ* %92, %struct.et_occ** %8, align 8
  %93 = load %struct.et_occ*, %struct.et_occ** %6, align 8
  %94 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %12, align 4
  br label %105

96:                                               ; preds = %86
  %97 = load %struct.et_occ*, %struct.et_occ** %7, align 8
  store %struct.et_occ* %97, %struct.et_occ** %8, align 8
  %98 = load %struct.et_occ*, %struct.et_occ** %7, align 8
  %99 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.et_occ*, %struct.et_occ** %6, align 8
  %102 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %100, %103
  store i32 %104, i32* %12, align 4
  br label %105

105:                                              ; preds = %96, %91
  %106 = load %struct.et_occ*, %struct.et_occ** %11, align 8
  %107 = icmp ne %struct.et_occ* %106, null
  br i1 %107, label %108, label %128

108:                                              ; preds = %105
  %109 = load %struct.et_occ*, %struct.et_occ** %11, align 8
  %110 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.et_occ*, %struct.et_occ** %6, align 8
  %113 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %111, %114
  %116 = load %struct.et_occ*, %struct.et_occ** %7, align 8
  %117 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %115, %118
  %120 = load i32, i32* %12, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %108
  %123 = load %struct.et_occ*, %struct.et_occ** %11, align 8
  %124 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %123, i32 0, i32 3
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load %struct.et_node*, %struct.et_node** %126, align 8
  store %struct.et_node* %127, %struct.et_node** %3, align 8
  br label %132

128:                                              ; preds = %108, %105
  %129 = load %struct.et_occ*, %struct.et_occ** %8, align 8
  %130 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %129, i32 0, i32 2
  %131 = load %struct.et_node*, %struct.et_node** %130, align 8
  store %struct.et_node* %131, %struct.et_node** %3, align 8
  br label %132

132:                                              ; preds = %128, %122, %22
  %133 = load %struct.et_node*, %struct.et_node** %3, align 8
  ret %struct.et_node* %133
}

declare dso_local i32 @et_splay(%struct.et_occ*) #1

declare dso_local i32 @set_prev(%struct.et_occ*, %struct.et_occ*) #1

declare dso_local i32 @set_next(%struct.et_occ*, %struct.et_occ*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
