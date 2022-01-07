; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-structalias.c_unify_nodes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-structalias.c_unify_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32 }
%struct.TYPE_8__ = type { i64* }
%struct.TYPE_10__ = type { i8*, i32, i32 }

@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Unifying %s to %s\0A\00", align 1
@stats = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@changed = common dso_local global i32 0, align 4
@changed_count = common dso_local global i64 0, align 8
@oldpta_obstack = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32, i32, i32)* @unify_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unify_nodes(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @find(i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %14, %15
  br label %17

17:                                               ; preds = %12, %4
  %18 = phi i1 [ false, %4 ], [ %16, %12 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @gcc_assert(i32 %19)
  %21 = load i64, i64* @dump_file, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %17
  %24 = load i32, i32* @dump_flags, align 4
  %25 = load i32, i32* @TDF_DETAILS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = load i64, i64* @dump_file, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call %struct.TYPE_10__* @get_varinfo(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call %struct.TYPE_10__* @get_varinfo(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @fprintf(i64 %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %33, i8* %37)
  br label %39

39:                                               ; preds = %28, %23, %17
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @stats, i32 0, i32 2), align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @stats, i32 0, i32 2), align 4
  br label %48

45:                                               ; preds = %39
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @stats, i32 0, i32 1), align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @stats, i32 0, i32 1), align 8
  br label %48

48:                                               ; preds = %45, %42
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @merge_graph_nodes(%struct.TYPE_8__* %49, i32 %50, i32 %51)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @merge_node_constraints(%struct.TYPE_8__* %53, i32 %54, i32 %55)
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %84

59:                                               ; preds = %48
  %60 = load i32, i32* @changed, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i64 @TEST_BIT(i32 %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %59
  %65 = load i32, i32* @changed, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @RESET_BIT(i32 %65, i32 %66)
  %68 = load i32, i32* @changed, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i64 @TEST_BIT(i32 %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %64
  %73 = load i32, i32* @changed, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @SET_BIT(i32 %73, i32 %74)
  br label %83

76:                                               ; preds = %64
  %77 = load i64, i64* @changed_count, align 8
  %78 = icmp sgt i64 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i32 @gcc_assert(i32 %79)
  %81 = load i64, i64* @changed_count, align 8
  %82 = add nsw i64 %81, -1
  store i64 %82, i64* @changed_count, align 8
  br label %83

83:                                               ; preds = %76, %72
  br label %84

84:                                               ; preds = %83, %59, %48
  %85 = load i32, i32* %6, align 4
  %86 = call %struct.TYPE_10__* @get_varinfo(i32 %85)
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call %struct.TYPE_10__* @get_varinfo(i32 %89)
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @bitmap_ior_into(i32 %88, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %110

95:                                               ; preds = %84
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %95
  %99 = load i32, i32* @changed, align 4
  %100 = load i32, i32* %6, align 4
  %101 = call i64 @TEST_BIT(i32 %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %98
  %104 = load i32, i32* @changed, align 4
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @SET_BIT(i32 %104, i32 %105)
  %107 = load i64, i64* @changed_count, align 8
  %108 = add nsw i64 %107, 1
  store i64 %108, i64* @changed_count, align 8
  br label %109

109:                                              ; preds = %103, %98, %95
  br label %110

110:                                              ; preds = %109, %84
  %111 = load i32, i32* %7, align 4
  %112 = call %struct.TYPE_10__* @get_varinfo(i32 %111)
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @BITMAP_FREE(i32 %114)
  %116 = load i32, i32* %7, align 4
  %117 = call %struct.TYPE_10__* @get_varinfo(i32 %116)
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @BITMAP_FREE(i32 %119)
  %121 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @stats, i32 0, i32 0), align 8
  %122 = icmp sgt i64 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %110
  %124 = load i32, i32* %6, align 4
  %125 = call %struct.TYPE_10__* @get_varinfo(i32 %124)
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @BITMAP_FREE(i32 %127)
  %129 = call i32 @BITMAP_ALLOC(i32* @oldpta_obstack)
  %130 = load i32, i32* %6, align 4
  %131 = call %struct.TYPE_10__* @get_varinfo(i32 %130)
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 1
  store i32 %129, i32* %132, align 8
  br label %133

133:                                              ; preds = %123, %110
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* %6, align 4
  %137 = call i64 @valid_graph_edge(%struct.TYPE_8__* %134, i32 %135, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %159

139:                                              ; preds = %133
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i64*, i64** %141, align 8
  %143 = load i32, i32* %6, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %142, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %158

148:                                              ; preds = %139
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load i64*, i64** %150, align 8
  %152 = load i32, i32* %6, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %151, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = load i32, i32* %6, align 4
  %157 = call i32 @bitmap_clear_bit(i64 %155, i32 %156)
  br label %158

158:                                              ; preds = %148, %139
  br label %159

159:                                              ; preds = %158, %133
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @find(i32) #1

declare dso_local i32 @fprintf(i64, i8*, i8*, i8*) #1

declare dso_local %struct.TYPE_10__* @get_varinfo(i32) #1

declare dso_local i32 @merge_graph_nodes(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @merge_node_constraints(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @TEST_BIT(i32, i32) #1

declare dso_local i32 @RESET_BIT(i32, i32) #1

declare dso_local i32 @SET_BIT(i32, i32) #1

declare dso_local i64 @bitmap_ior_into(i32, i32) #1

declare dso_local i32 @BITMAP_FREE(i32) #1

declare dso_local i32 @BITMAP_ALLOC(i32*) #1

declare dso_local i64 @valid_graph_edge(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @bitmap_clear_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
