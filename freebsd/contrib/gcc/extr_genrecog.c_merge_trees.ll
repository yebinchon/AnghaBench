; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_merge_trees.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_merge_trees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decision_head = type { %struct.decision*, %struct.decision* }
%struct.decision = type { %struct.decision*, %struct.decision*, %struct.TYPE_2__*, %struct.decision_head, i32 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.decision_head*, %struct.decision_head*)* @merge_trees to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @merge_trees(%struct.decision_head* %0, %struct.decision_head* %1) #0 {
  %3 = alloca %struct.decision_head*, align 8
  %4 = alloca %struct.decision_head*, align 8
  %5 = alloca %struct.decision*, align 8
  %6 = alloca %struct.decision*, align 8
  %7 = alloca %struct.decision*, align 8
  %8 = alloca %struct.decision*, align 8
  store %struct.decision_head* %0, %struct.decision_head** %3, align 8
  store %struct.decision_head* %1, %struct.decision_head** %4, align 8
  %9 = load %struct.decision_head*, %struct.decision_head** %4, align 8
  %10 = getelementptr inbounds %struct.decision_head, %struct.decision_head* %9, i32 0, i32 0
  %11 = load %struct.decision*, %struct.decision** %10, align 8
  %12 = icmp eq %struct.decision* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %143

14:                                               ; preds = %2
  %15 = load %struct.decision_head*, %struct.decision_head** %3, align 8
  %16 = getelementptr inbounds %struct.decision_head, %struct.decision_head* %15, i32 0, i32 0
  %17 = load %struct.decision*, %struct.decision** %16, align 8
  %18 = icmp eq %struct.decision* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.decision_head*, %struct.decision_head** %3, align 8
  %21 = load %struct.decision_head*, %struct.decision_head** %4, align 8
  %22 = bitcast %struct.decision_head* %20 to i8*
  %23 = bitcast %struct.decision_head* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 16, i1 false)
  br label %143

24:                                               ; preds = %14
  %25 = load %struct.decision_head*, %struct.decision_head** %3, align 8
  %26 = getelementptr inbounds %struct.decision_head, %struct.decision_head* %25, i32 0, i32 0
  %27 = load %struct.decision*, %struct.decision** %26, align 8
  %28 = getelementptr inbounds %struct.decision, %struct.decision* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.decision_head*, %struct.decision_head** %4, align 8
  %31 = getelementptr inbounds %struct.decision_head, %struct.decision_head* %30, i32 0, i32 0
  %32 = load %struct.decision*, %struct.decision** %31, align 8
  %33 = getelementptr inbounds %struct.decision, %struct.decision* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @strcmp(i32 %29, i32 %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @gcc_assert(i32 %38)
  %40 = load %struct.decision_head*, %struct.decision_head** %4, align 8
  %41 = getelementptr inbounds %struct.decision_head, %struct.decision_head* %40, i32 0, i32 0
  %42 = load %struct.decision*, %struct.decision** %41, align 8
  store %struct.decision* %42, %struct.decision** %6, align 8
  br label %43

43:                                               ; preds = %141, %24
  %44 = load %struct.decision*, %struct.decision** %6, align 8
  %45 = icmp ne %struct.decision* %44, null
  br i1 %45, label %46, label %143

46:                                               ; preds = %43
  store %struct.decision* null, %struct.decision** %8, align 8
  %47 = load %struct.decision*, %struct.decision** %6, align 8
  %48 = getelementptr inbounds %struct.decision, %struct.decision* %47, i32 0, i32 1
  %49 = load %struct.decision*, %struct.decision** %48, align 8
  store %struct.decision* %49, %struct.decision** %5, align 8
  %50 = load %struct.decision_head*, %struct.decision_head** %3, align 8
  %51 = getelementptr inbounds %struct.decision_head, %struct.decision_head* %50, i32 0, i32 1
  %52 = load %struct.decision*, %struct.decision** %51, align 8
  store %struct.decision* %52, %struct.decision** %7, align 8
  br label %53

53:                                               ; preds = %92, %46
  %54 = load %struct.decision*, %struct.decision** %7, align 8
  %55 = icmp ne %struct.decision* %54, null
  br i1 %55, label %56, label %96

56:                                               ; preds = %53
  %57 = load %struct.decision*, %struct.decision** %7, align 8
  %58 = load %struct.decision*, %struct.decision** %6, align 8
  %59 = call i64 @nodes_identical(%struct.decision* %57, %struct.decision* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load %struct.decision*, %struct.decision** %7, align 8
  %63 = load %struct.decision*, %struct.decision** %6, align 8
  %64 = call i32 @merge_accept_insn(%struct.decision* %62, %struct.decision* %63)
  %65 = load %struct.decision*, %struct.decision** %7, align 8
  %66 = getelementptr inbounds %struct.decision, %struct.decision* %65, i32 0, i32 3
  %67 = load %struct.decision*, %struct.decision** %6, align 8
  %68 = getelementptr inbounds %struct.decision, %struct.decision* %67, i32 0, i32 3
  call void @merge_trees(%struct.decision_head* %66, %struct.decision_head* %68)
  br label %140

69:                                               ; preds = %56
  %70 = load %struct.decision*, %struct.decision** %7, align 8
  %71 = load %struct.decision*, %struct.decision** %6, align 8
  %72 = call i64 @maybe_both_true(%struct.decision* %70, %struct.decision* %71, i32 0)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %96

75:                                               ; preds = %69
  %76 = load %struct.decision*, %struct.decision** %6, align 8
  %77 = getelementptr inbounds %struct.decision, %struct.decision* %76, i32 0, i32 2
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i32
  %82 = load %struct.decision*, %struct.decision** %7, align 8
  %83 = getelementptr inbounds %struct.decision, %struct.decision* %82, i32 0, i32 2
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  %88 = icmp slt i32 %81, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %75
  %90 = load %struct.decision*, %struct.decision** %7, align 8
  store %struct.decision* %90, %struct.decision** %8, align 8
  br label %91

91:                                               ; preds = %89, %75
  br label %92

92:                                               ; preds = %91
  %93 = load %struct.decision*, %struct.decision** %7, align 8
  %94 = getelementptr inbounds %struct.decision, %struct.decision* %93, i32 0, i32 0
  %95 = load %struct.decision*, %struct.decision** %94, align 8
  store %struct.decision* %95, %struct.decision** %7, align 8
  br label %53

96:                                               ; preds = %74, %53
  %97 = load %struct.decision*, %struct.decision** %8, align 8
  %98 = icmp eq %struct.decision* %97, null
  br i1 %98, label %99, label %115

99:                                               ; preds = %96
  %100 = load %struct.decision*, %struct.decision** %6, align 8
  %101 = getelementptr inbounds %struct.decision, %struct.decision* %100, i32 0, i32 1
  store %struct.decision* null, %struct.decision** %101, align 8
  %102 = load %struct.decision_head*, %struct.decision_head** %3, align 8
  %103 = getelementptr inbounds %struct.decision_head, %struct.decision_head* %102, i32 0, i32 1
  %104 = load %struct.decision*, %struct.decision** %103, align 8
  %105 = load %struct.decision*, %struct.decision** %6, align 8
  %106 = getelementptr inbounds %struct.decision, %struct.decision* %105, i32 0, i32 0
  store %struct.decision* %104, %struct.decision** %106, align 8
  %107 = load %struct.decision*, %struct.decision** %6, align 8
  %108 = load %struct.decision_head*, %struct.decision_head** %3, align 8
  %109 = getelementptr inbounds %struct.decision_head, %struct.decision_head* %108, i32 0, i32 1
  %110 = load %struct.decision*, %struct.decision** %109, align 8
  %111 = getelementptr inbounds %struct.decision, %struct.decision* %110, i32 0, i32 1
  store %struct.decision* %107, %struct.decision** %111, align 8
  %112 = load %struct.decision*, %struct.decision** %6, align 8
  %113 = load %struct.decision_head*, %struct.decision_head** %3, align 8
  %114 = getelementptr inbounds %struct.decision_head, %struct.decision_head* %113, i32 0, i32 1
  store %struct.decision* %112, %struct.decision** %114, align 8
  br label %139

115:                                              ; preds = %96
  %116 = load %struct.decision*, %struct.decision** %8, align 8
  %117 = getelementptr inbounds %struct.decision, %struct.decision* %116, i32 0, i32 0
  %118 = load %struct.decision*, %struct.decision** %117, align 8
  %119 = load %struct.decision*, %struct.decision** %6, align 8
  %120 = getelementptr inbounds %struct.decision, %struct.decision* %119, i32 0, i32 0
  store %struct.decision* %118, %struct.decision** %120, align 8
  %121 = icmp ne %struct.decision* %118, null
  br i1 %121, label %122, label %128

122:                                              ; preds = %115
  %123 = load %struct.decision*, %struct.decision** %6, align 8
  %124 = load %struct.decision*, %struct.decision** %6, align 8
  %125 = getelementptr inbounds %struct.decision, %struct.decision* %124, i32 0, i32 0
  %126 = load %struct.decision*, %struct.decision** %125, align 8
  %127 = getelementptr inbounds %struct.decision, %struct.decision* %126, i32 0, i32 1
  store %struct.decision* %123, %struct.decision** %127, align 8
  br label %132

128:                                              ; preds = %115
  %129 = load %struct.decision*, %struct.decision** %6, align 8
  %130 = load %struct.decision_head*, %struct.decision_head** %3, align 8
  %131 = getelementptr inbounds %struct.decision_head, %struct.decision_head* %130, i32 0, i32 0
  store %struct.decision* %129, %struct.decision** %131, align 8
  br label %132

132:                                              ; preds = %128, %122
  %133 = load %struct.decision*, %struct.decision** %8, align 8
  %134 = load %struct.decision*, %struct.decision** %6, align 8
  %135 = getelementptr inbounds %struct.decision, %struct.decision* %134, i32 0, i32 1
  store %struct.decision* %133, %struct.decision** %135, align 8
  %136 = load %struct.decision*, %struct.decision** %6, align 8
  %137 = load %struct.decision*, %struct.decision** %8, align 8
  %138 = getelementptr inbounds %struct.decision, %struct.decision* %137, i32 0, i32 0
  store %struct.decision* %136, %struct.decision** %138, align 8
  br label %139

139:                                              ; preds = %132, %99
  br label %140

140:                                              ; preds = %139, %61
  br label %141

141:                                              ; preds = %140
  %142 = load %struct.decision*, %struct.decision** %5, align 8
  store %struct.decision* %142, %struct.decision** %6, align 8
  br label %43

143:                                              ; preds = %13, %19, %43
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @gcc_assert(i32) #2

declare dso_local i32 @strcmp(i32, i32) #2

declare dso_local i64 @nodes_identical(%struct.decision*, %struct.decision*) #2

declare dso_local i32 @merge_accept_insn(%struct.decision*, %struct.decision*) #2

declare dso_local i64 @maybe_both_true(%struct.decision*, %struct.decision*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
