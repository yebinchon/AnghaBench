; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-inline.c_cgraph_clone_inlined_nodes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-inline.c_cgraph_clone_inlined_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_edge = type { i32, %struct.cgraph_edge*, %struct.TYPE_10__*, %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_10__ = type { %struct.cgraph_edge*, %struct.TYPE_8__, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_9__*, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.cgraph_node = type { i32 }

@flag_unit_at_a_time = common dso_local global i64 0, align 8
@overall_insns = common dso_local global i32 0, align 4
@nfunctions_inlined = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cgraph_clone_inlined_nodes(%struct.cgraph_edge* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cgraph_edge*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cgraph_node*, align 8
  store %struct.cgraph_edge* %0, %struct.cgraph_edge** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %77

10:                                               ; preds = %3
  %11 = load %struct.cgraph_edge*, %struct.cgraph_edge** %4, align 8
  %12 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %11, i32 0, i32 2
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %61, label %19

19:                                               ; preds = %10
  %20 = load %struct.cgraph_edge*, %struct.cgraph_edge** %4, align 8
  %21 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %20, i32 0, i32 2
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %61, label %26

26:                                               ; preds = %19
  %27 = load i64, i64* @flag_unit_at_a_time, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %61

29:                                               ; preds = %26
  %30 = load %struct.cgraph_edge*, %struct.cgraph_edge** %4, align 8
  %31 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %30, i32 0, i32 2
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = icmp ne %struct.TYPE_9__* %35, null
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @gcc_assert(i32 %38)
  %40 = load %struct.cgraph_edge*, %struct.cgraph_edge** %4, align 8
  %41 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %40, i32 0, i32 2
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @DECL_SAVED_TREE(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %29
  %48 = load %struct.cgraph_edge*, %struct.cgraph_edge** %4, align 8
  %49 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %48, i32 0, i32 2
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* @overall_insns, align 4
  %55 = sext i32 %54 to i64
  %56 = sub nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* @overall_insns, align 4
  %58 = load i32, i32* @nfunctions_inlined, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* @nfunctions_inlined, align 4
  br label %60

60:                                               ; preds = %47, %29
  store i32 0, i32* %5, align 4
  br label %76

61:                                               ; preds = %26, %19, %10
  %62 = load %struct.cgraph_edge*, %struct.cgraph_edge** %4, align 8
  %63 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %62, i32 0, i32 2
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = load %struct.cgraph_edge*, %struct.cgraph_edge** %4, align 8
  %66 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.cgraph_edge*, %struct.cgraph_edge** %4, align 8
  %69 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call %struct.cgraph_node* @cgraph_clone_node(%struct.TYPE_10__* %64, i32 %67, i32 %70, i32 %71)
  store %struct.cgraph_node* %72, %struct.cgraph_node** %7, align 8
  %73 = load %struct.cgraph_edge*, %struct.cgraph_edge** %4, align 8
  %74 = load %struct.cgraph_node*, %struct.cgraph_node** %7, align 8
  %75 = call i32 @cgraph_redirect_edge_callee(%struct.cgraph_edge* %73, %struct.cgraph_node* %74)
  br label %76

76:                                               ; preds = %61, %60
  br label %77

77:                                               ; preds = %76, %3
  %78 = load %struct.cgraph_edge*, %struct.cgraph_edge** %4, align 8
  %79 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %78, i32 0, i32 3
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = icmp ne %struct.TYPE_9__* %83, null
  br i1 %84, label %85, label %97

85:                                               ; preds = %77
  %86 = load %struct.cgraph_edge*, %struct.cgraph_edge** %4, align 8
  %87 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %86, i32 0, i32 3
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = load %struct.cgraph_edge*, %struct.cgraph_edge** %4, align 8
  %93 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %92, i32 0, i32 2
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  store %struct.TYPE_9__* %91, %struct.TYPE_9__** %96, align 8
  br label %106

97:                                               ; preds = %77
  %98 = load %struct.cgraph_edge*, %struct.cgraph_edge** %4, align 8
  %99 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %98, i32 0, i32 3
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = load %struct.cgraph_edge*, %struct.cgraph_edge** %4, align 8
  %102 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %101, i32 0, i32 2
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  store %struct.TYPE_9__* %100, %struct.TYPE_9__** %105, align 8
  br label %106

106:                                              ; preds = %97, %85
  %107 = load %struct.cgraph_edge*, %struct.cgraph_edge** %4, align 8
  %108 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %107, i32 0, i32 2
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load %struct.cgraph_edge*, %struct.cgraph_edge** %110, align 8
  store %struct.cgraph_edge* %111, %struct.cgraph_edge** %4, align 8
  br label %112

112:                                              ; preds = %125, %106
  %113 = load %struct.cgraph_edge*, %struct.cgraph_edge** %4, align 8
  %114 = icmp ne %struct.cgraph_edge* %113, null
  br i1 %114, label %115, label %129

115:                                              ; preds = %112
  %116 = load %struct.cgraph_edge*, %struct.cgraph_edge** %4, align 8
  %117 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %115
  %121 = load %struct.cgraph_edge*, %struct.cgraph_edge** %4, align 8
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* %6, align 4
  call void @cgraph_clone_inlined_nodes(%struct.cgraph_edge* %121, i32 %122, i32 %123)
  br label %124

124:                                              ; preds = %120, %115
  br label %125

125:                                              ; preds = %124
  %126 = load %struct.cgraph_edge*, %struct.cgraph_edge** %4, align 8
  %127 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %126, i32 0, i32 1
  %128 = load %struct.cgraph_edge*, %struct.cgraph_edge** %127, align 8
  store %struct.cgraph_edge* %128, %struct.cgraph_edge** %4, align 8
  br label %112

129:                                              ; preds = %112
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @DECL_SAVED_TREE(i32) #1

declare dso_local %struct.cgraph_node* @cgraph_clone_node(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @cgraph_redirect_edge_callee(%struct.cgraph_edge*, %struct.cgraph_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
