; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfg.c_tree_flow_call_edges_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfg.c_tree_flow_call_edges_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@last_basic_block = common dso_local global i32 0, align 4
@n_basic_blocks = common dso_local global i64 0, align 8
@NUM_FIXED_BLOCKS = common dso_local global i64 0, align 8
@EXIT_BLOCK_PTR = common dso_local global %struct.TYPE_11__* null, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@EDGE_FAKE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @tree_flow_call_edges_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tree_flow_call_edges_add(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %5, align 4
  %17 = load i32, i32* @last_basic_block, align 4
  store i32 %17, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %18 = load i64, i64* @n_basic_blocks, align 8
  %19 = load i64, i64* @NUM_FIXED_BLOCKS, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %143

22:                                               ; preds = %1
  %23 = load i64, i64* %3, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  store i32 1, i32* %7, align 4
  br label %34

26:                                               ; preds = %22
  %27 = load i64, i64* %3, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** @EXIT_BLOCK_PTR, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @TEST_BIT(i64 %27, i32 %32)
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %26, %25
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %70

37:                                               ; preds = %34
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** @EXIT_BLOCK_PTR, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %8, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %42 = call i32 @bsi_last(%struct.TYPE_10__* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i64, i64* @NULL_TREE, align 8
  store i64 %43, i64* %10, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @bsi_end_p(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %37
  %48 = load i32, i32* %9, align 4
  %49 = call i64 @bsi_stmt(i32 %48)
  store i64 %49, i64* %10, align 8
  br label %50

50:                                               ; preds = %47, %37
  %51 = load i64, i64* %10, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %50
  %54 = load i64, i64* %10, align 8
  %55 = call i64 @need_fake_edge_p(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %53
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** @EXIT_BLOCK_PTR, align 8
  %60 = call i32* @find_edge(%struct.TYPE_10__* %58, %struct.TYPE_11__* %59)
  store i32* %60, i32** %11, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load i32*, i32** %11, align 8
  %65 = call i32 (...) @build_empty_stmt()
  %66 = call i32 @bsi_insert_on_edge(i32* %64, i32 %65)
  %67 = call i32 (...) @bsi_commit_edge_inserts()
  br label %68

68:                                               ; preds = %63, %57
  br label %69

69:                                               ; preds = %68, %53, %50
  br label %70

70:                                               ; preds = %69, %34
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %133, %70
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %136

75:                                               ; preds = %71
  %76 = load i32, i32* %4, align 4
  %77 = call %struct.TYPE_10__* @BASIC_BLOCK(i32 %76)
  store %struct.TYPE_10__* %77, %struct.TYPE_10__** %12, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %79 = icmp ne %struct.TYPE_10__* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  br label %133

81:                                               ; preds = %75
  %82 = load i64, i64* %3, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load i64, i64* %3, align 8
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @TEST_BIT(i64 %85, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %84
  br label %133

90:                                               ; preds = %84, %81
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %92 = call i32 @bsi_last(%struct.TYPE_10__* %91)
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @bsi_end_p(i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %132, label %96

96:                                               ; preds = %90
  %97 = load i32, i32* %13, align 4
  %98 = call i64 @bsi_stmt(i32 %97)
  store i64 %98, i64* %15, align 8
  br label %99

99:                                               ; preds = %126, %96
  %100 = load i32, i32* %13, align 4
  %101 = call i64 @bsi_stmt(i32 %100)
  store i64 %101, i64* %14, align 8
  %102 = load i64, i64* %14, align 8
  %103 = call i64 @need_fake_edge_p(i64 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %124

105:                                              ; preds = %99
  %106 = load i64, i64* %14, align 8
  %107 = load i64, i64* %15, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %119

109:                                              ; preds = %105
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %111 = load i64, i64* %14, align 8
  %112 = call i32* @split_block(%struct.TYPE_10__* %110, i64 %111)
  store i32* %112, i32** %16, align 8
  %113 = load i32*, i32** %16, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = load i32, i32* %5, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %115, %109
  br label %119

119:                                              ; preds = %118, %105
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** @EXIT_BLOCK_PTR, align 8
  %122 = load i32, i32* @EDGE_FAKE, align 4
  %123 = call i32 @make_edge(%struct.TYPE_10__* %120, %struct.TYPE_11__* %121, i32 %122)
  br label %124

124:                                              ; preds = %119, %99
  %125 = call i32 @bsi_prev(i32* %13)
  br label %126

126:                                              ; preds = %124
  %127 = load i32, i32* %13, align 4
  %128 = call i32 @bsi_end_p(i32 %127)
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  br i1 %130, label %99, label %131

131:                                              ; preds = %126
  br label %132

132:                                              ; preds = %131, %90
  br label %133

133:                                              ; preds = %132, %89, %80
  %134 = load i32, i32* %4, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %4, align 4
  br label %71

136:                                              ; preds = %71
  %137 = load i32, i32* %5, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = call i32 (...) @verify_flow_info()
  br label %141

141:                                              ; preds = %139, %136
  %142 = load i32, i32* %5, align 4
  store i32 %142, i32* %2, align 4
  br label %143

143:                                              ; preds = %141, %21
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i32 @TEST_BIT(i64, i32) #1

declare dso_local i32 @bsi_last(%struct.TYPE_10__*) #1

declare dso_local i32 @bsi_end_p(i32) #1

declare dso_local i64 @bsi_stmt(i32) #1

declare dso_local i64 @need_fake_edge_p(i64) #1

declare dso_local i32* @find_edge(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @bsi_insert_on_edge(i32*, i32) #1

declare dso_local i32 @build_empty_stmt(...) #1

declare dso_local i32 @bsi_commit_edge_inserts(...) #1

declare dso_local %struct.TYPE_10__* @BASIC_BLOCK(i32) #1

declare dso_local i32* @split_block(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @make_edge(%struct.TYPE_10__*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @bsi_prev(i32*) #1

declare dso_local i32 @verify_flow_info(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
