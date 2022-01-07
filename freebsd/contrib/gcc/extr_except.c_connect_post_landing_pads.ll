; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_connect_post_landing_pads.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_connect_post_landing_pads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.eh_region = type { i32, i64, i32*, i64, i64, %struct.eh_region* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@cfun = common dso_local global %struct.TYPE_13__* null, align 8
@eh_region = common dso_local global i32 0, align 4
@REG_BR_PROB_BASE = common dso_local global i32 0, align 4
@unwind_resume_libfunc = common dso_local global i32 0, align 4
@LCT_THROW = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@ptr_mode = common dso_local global i32 0, align 4
@ERT_CLEANUP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @connect_post_landing_pads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @connect_post_landing_pads() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.eh_region*, align 8
  %3 = alloca %struct.eh_region*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cfun, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %1, align 4
  br label %14

14:                                               ; preds = %149, %0
  %15 = load i32, i32* %1, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %152

17:                                               ; preds = %14
  %18 = load i32, i32* @eh_region, align 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cfun, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %1, align 4
  %25 = call %struct.eh_region* @VEC_index(i32 %18, i32 %23, i32 %24)
  store %struct.eh_region* %25, %struct.eh_region** %2, align 8
  %26 = load %struct.eh_region*, %struct.eh_region** %2, align 8
  %27 = icmp ne %struct.eh_region* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %17
  %29 = load %struct.eh_region*, %struct.eh_region** %2, align 8
  %30 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %1, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %17
  br label %149

35:                                               ; preds = %28
  %36 = load %struct.eh_region*, %struct.eh_region** %2, align 8
  %37 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.eh_region*, %struct.eh_region** %2, align 8
  %42 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @INSN_DELETED_P(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40, %35
  br label %149

47:                                               ; preds = %40
  %48 = load %struct.eh_region*, %struct.eh_region** %2, align 8
  %49 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %48, i32 0, i32 5
  %50 = load %struct.eh_region*, %struct.eh_region** %49, align 8
  store %struct.eh_region* %50, %struct.eh_region** %3, align 8
  br label %51

51:                                               ; preds = %61, %47
  %52 = load %struct.eh_region*, %struct.eh_region** %3, align 8
  %53 = icmp ne %struct.eh_region* %52, null
  br i1 %53, label %54, label %65

54:                                               ; preds = %51
  %55 = load %struct.eh_region*, %struct.eh_region** %3, align 8
  %56 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %65

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.eh_region*, %struct.eh_region** %3, align 8
  %63 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %62, i32 0, i32 5
  %64 = load %struct.eh_region*, %struct.eh_region** %63, align 8
  store %struct.eh_region* %64, %struct.eh_region** %3, align 8
  br label %51

65:                                               ; preds = %59, %51
  %66 = call i32 (...) @start_sequence()
  %67 = load %struct.eh_region*, %struct.eh_region** %3, align 8
  %68 = icmp ne %struct.eh_region* %67, null
  br i1 %68, label %69, label %104

69:                                               ; preds = %65
  %70 = load %struct.eh_region*, %struct.eh_region** %3, align 8
  %71 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @emit_jump(i64 %72)
  %74 = load %struct.eh_region*, %struct.eh_region** %2, align 8
  %75 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = call %struct.TYPE_12__* @BLOCK_FOR_INSN(i64 %76)
  store %struct.TYPE_12__* %77, %struct.TYPE_12__** %7, align 8
  %78 = load %struct.eh_region*, %struct.eh_region** %3, align 8
  %79 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = call %struct.TYPE_12__* @BLOCK_FOR_INSN(i64 %80)
  store %struct.TYPE_12__* %81, %struct.TYPE_12__** %8, align 8
  br label %82

82:                                               ; preds = %88, %69
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @EDGE_COUNT(i32 %85)
  %87 = icmp sgt i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %90 = call i32 @EDGE_SUCC(%struct.TYPE_12__* %89, i32 0)
  %91 = call i32 @remove_edge(i32 %90)
  br label %82

92:                                               ; preds = %82
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %95 = call %struct.TYPE_11__* @make_edge(%struct.TYPE_12__* %93, %struct.TYPE_12__* %94, i32 0)
  store %struct.TYPE_11__* %95, %struct.TYPE_11__** %6, align 8
  %96 = load i32, i32* @REG_BR_PROB_BASE, align 4
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  br label %118

104:                                              ; preds = %65
  %105 = load i32, i32* @unwind_resume_libfunc, align 4
  %106 = load i32, i32* @LCT_THROW, align 4
  %107 = load i32, i32* @VOIDmode, align 4
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cfun, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @ptr_mode, align 4
  %114 = call i32 @emit_library_call(i32 %105, i32 %106, i32 %107, i32 1, i32 %112, i32 %113)
  %115 = call i32 (...) @last_call_insn()
  %116 = call i32 @NEXT_INSN(i32 %115)
  %117 = call i32 @delete_insns_since(i32 %116)
  br label %118

118:                                              ; preds = %104, %92
  %119 = call i64 (...) @get_insns()
  store i64 %119, i64* %4, align 8
  %120 = call i32 (...) @end_sequence()
  %121 = load i64, i64* %4, align 8
  %122 = load %struct.eh_region*, %struct.eh_region** %2, align 8
  %123 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = call i64 @emit_insn_before(i64 %121, i64 %124)
  store i64 %125, i64* %5, align 8
  %126 = load i64, i64* %5, align 8
  %127 = call i32 @BARRIER_P(i64 %126)
  %128 = call i32 @gcc_assert(i32 %127)
  %129 = load i64, i64* %5, align 8
  %130 = call i32 @delete_insn(i64 %129)
  %131 = load %struct.eh_region*, %struct.eh_region** %2, align 8
  %132 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @delete_insn(i64 %133)
  %135 = load %struct.eh_region*, %struct.eh_region** %2, align 8
  %136 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = icmp eq i32* %137, null
  br i1 %138, label %139, label %148

139:                                              ; preds = %118
  %140 = load %struct.eh_region*, %struct.eh_region** %2, align 8
  %141 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @ERT_CLEANUP, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %139
  %146 = load %struct.eh_region*, %struct.eh_region** %2, align 8
  %147 = call i32 @remove_eh_handler(%struct.eh_region* %146)
  br label %148

148:                                              ; preds = %145, %139, %118
  br label %149

149:                                              ; preds = %148, %46, %34
  %150 = load i32, i32* %1, align 4
  %151 = add nsw i32 %150, -1
  store i32 %151, i32* %1, align 4
  br label %14

152:                                              ; preds = %14
  ret void
}

declare dso_local %struct.eh_region* @VEC_index(i32, i32, i32) #1

declare dso_local i64 @INSN_DELETED_P(i64) #1

declare dso_local i32 @start_sequence(...) #1

declare dso_local i32 @emit_jump(i64) #1

declare dso_local %struct.TYPE_12__* @BLOCK_FOR_INSN(i64) #1

declare dso_local i64 @EDGE_COUNT(i32) #1

declare dso_local i32 @remove_edge(i32) #1

declare dso_local i32 @EDGE_SUCC(%struct.TYPE_12__*, i32) #1

declare dso_local %struct.TYPE_11__* @make_edge(%struct.TYPE_12__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @emit_library_call(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @delete_insns_since(i32) #1

declare dso_local i32 @NEXT_INSN(i32) #1

declare dso_local i32 @last_call_insn(...) #1

declare dso_local i64 @get_insns(...) #1

declare dso_local i32 @end_sequence(...) #1

declare dso_local i64 @emit_insn_before(i64, i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @BARRIER_P(i64) #1

declare dso_local i32 @delete_insn(i64) #1

declare dso_local i32 @remove_eh_handler(%struct.eh_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
