; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgrtl.c_rtl_flow_call_edges_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgrtl.c_rtl_flow_call_edges_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@last_basic_block = common dso_local global i32 0, align 4
@n_basic_blocks = common dso_local global i32 0, align 4
@NUM_FIXED_BLOCKS = common dso_local global i32 0, align 4
@EXIT_BLOCK_PTR = common dso_local global %struct.TYPE_12__* null, align 8
@VOIDmode = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4
@EDGE_FAKE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @rtl_flow_call_edges_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_flow_call_edges_add(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %5, align 4
  %16 = load i32, i32* @last_basic_block, align 4
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %17 = load i32, i32* @n_basic_blocks, align 4
  %18 = load i32, i32* @NUM_FIXED_BLOCKS, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %167

21:                                               ; preds = %1
  %22 = load i64, i64* %3, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store i32 1, i32* %7, align 4
  br label %33

25:                                               ; preds = %21
  %26 = load i64, i64* %3, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** @EXIT_BLOCK_PTR, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @TEST_BIT(i64 %26, i32 %31)
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %25, %24
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %75

36:                                               ; preds = %33
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** @EXIT_BLOCK_PTR, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  store %struct.TYPE_11__* %39, %struct.TYPE_11__** %8, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %41 = call i64 @BB_END(%struct.TYPE_11__* %40)
  store i64 %41, i64* %9, align 8
  br label %42

42:                                               ; preds = %53, %36
  %43 = load i64, i64* %9, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %45 = call i64 @BB_HEAD(%struct.TYPE_11__* %44)
  %46 = icmp ne i64 %43, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i64, i64* %9, align 8
  %49 = call i64 @keep_with_call_p(i64 %48)
  %50 = icmp ne i64 %49, 0
  br label %51

51:                                               ; preds = %47, %42
  %52 = phi i1 [ false, %42 ], [ %50, %47 ]
  br i1 %52, label %53, label %56

53:                                               ; preds = %51
  %54 = load i64, i64* %9, align 8
  %55 = call i64 @PREV_INSN(i64 %54)
  store i64 %55, i64* %9, align 8
  br label %42

56:                                               ; preds = %51
  %57 = load i64, i64* %9, align 8
  %58 = call i64 @need_fake_edge_p(i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %56
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** @EXIT_BLOCK_PTR, align 8
  %63 = call i32* @find_edge(%struct.TYPE_11__* %61, %struct.TYPE_12__* %62)
  store i32* %63, i32** %10, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = load i32, i32* @VOIDmode, align 4
  %68 = load i32, i32* @const0_rtx, align 4
  %69 = call i32 @gen_rtx_USE(i32 %67, i32 %68)
  %70 = load i32*, i32** %10, align 8
  %71 = call i32 @insert_insn_on_edge(i32 %69, i32* %70)
  %72 = call i32 (...) @commit_edge_insertions()
  br label %73

73:                                               ; preds = %66, %60
  br label %74

74:                                               ; preds = %73, %56
  br label %75

75:                                               ; preds = %74, %33
  %76 = load i32, i32* @NUM_FIXED_BLOCKS, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %157, %75
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %160

81:                                               ; preds = %77
  %82 = load i32, i32* %4, align 4
  %83 = call %struct.TYPE_11__* @BASIC_BLOCK(i32 %82)
  store %struct.TYPE_11__* %83, %struct.TYPE_11__** %11, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %85 = icmp ne %struct.TYPE_11__* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %81
  br label %157

87:                                               ; preds = %81
  %88 = load i64, i64* %3, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load i64, i64* %3, align 8
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @TEST_BIT(i64 %91, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %90
  br label %157

96:                                               ; preds = %90, %87
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %98 = call i64 @BB_END(%struct.TYPE_11__* %97)
  store i64 %98, i64* %12, align 8
  br label %99

99:                                               ; preds = %154, %96
  %100 = load i64, i64* %12, align 8
  %101 = call i64 @PREV_INSN(i64 %100)
  store i64 %101, i64* %13, align 8
  %102 = load i64, i64* %12, align 8
  %103 = call i64 @need_fake_edge_p(i64 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %147

105:                                              ; preds = %99
  %106 = load i64, i64* %12, align 8
  store i64 %106, i64* %15, align 8
  %107 = load i64, i64* %12, align 8
  %108 = call i64 @CALL_P(i64 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %127

110:                                              ; preds = %105
  br label %111

111:                                              ; preds = %123, %110
  %112 = load i64, i64* %15, align 8
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %114 = call i64 @BB_END(%struct.TYPE_11__* %113)
  %115 = icmp ne i64 %112, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = load i64, i64* %15, align 8
  %118 = call i64 @NEXT_INSN(i64 %117)
  %119 = call i64 @keep_with_call_p(i64 %118)
  %120 = icmp ne i64 %119, 0
  br label %121

121:                                              ; preds = %116, %111
  %122 = phi i1 [ false, %111 ], [ %120, %116 ]
  br i1 %122, label %123, label %126

123:                                              ; preds = %121
  %124 = load i64, i64* %15, align 8
  %125 = call i64 @NEXT_INSN(i64 %124)
  store i64 %125, i64* %15, align 8
  br label %111

126:                                              ; preds = %121
  br label %127

127:                                              ; preds = %126, %105
  %128 = load i64, i64* %15, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %130 = call i64 @BB_END(%struct.TYPE_11__* %129)
  %131 = icmp ne i64 %128, %130
  br i1 %131, label %132, label %142

132:                                              ; preds = %127
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %134 = load i64, i64* %15, align 8
  %135 = call i32* @split_block(%struct.TYPE_11__* %133, i64 %134)
  store i32* %135, i32** %14, align 8
  %136 = load i32*, i32** %14, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %132
  %139 = load i32, i32* %5, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %5, align 4
  br label %141

141:                                              ; preds = %138, %132
  br label %142

142:                                              ; preds = %141, %127
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** @EXIT_BLOCK_PTR, align 8
  %145 = load i32, i32* @EDGE_FAKE, align 4
  %146 = call i32 @make_edge(%struct.TYPE_11__* %143, %struct.TYPE_12__* %144, i32 %145)
  br label %147

147:                                              ; preds = %142, %99
  %148 = load i64, i64* %12, align 8
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %150 = call i64 @BB_HEAD(%struct.TYPE_11__* %149)
  %151 = icmp eq i64 %148, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %147
  br label %156

153:                                              ; preds = %147
  br label %154

154:                                              ; preds = %153
  %155 = load i64, i64* %13, align 8
  store i64 %155, i64* %12, align 8
  br label %99

156:                                              ; preds = %152
  br label %157

157:                                              ; preds = %156, %95, %86
  %158 = load i32, i32* %4, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %4, align 4
  br label %77

160:                                              ; preds = %77
  %161 = load i32, i32* %5, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %160
  %164 = call i32 (...) @verify_flow_info()
  br label %165

165:                                              ; preds = %163, %160
  %166 = load i32, i32* %5, align 4
  store i32 %166, i32* %2, align 4
  br label %167

167:                                              ; preds = %165, %20
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local i32 @TEST_BIT(i64, i32) #1

declare dso_local i64 @BB_END(%struct.TYPE_11__*) #1

declare dso_local i64 @BB_HEAD(%struct.TYPE_11__*) #1

declare dso_local i64 @keep_with_call_p(i64) #1

declare dso_local i64 @PREV_INSN(i64) #1

declare dso_local i64 @need_fake_edge_p(i64) #1

declare dso_local i32* @find_edge(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @insert_insn_on_edge(i32, i32*) #1

declare dso_local i32 @gen_rtx_USE(i32, i32) #1

declare dso_local i32 @commit_edge_insertions(...) #1

declare dso_local %struct.TYPE_11__* @BASIC_BLOCK(i32) #1

declare dso_local i64 @CALL_P(i64) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i32* @split_block(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @make_edge(%struct.TYPE_11__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @verify_flow_info(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
