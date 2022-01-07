; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ddg.c_add_deps_for_use.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ddg.c_add_deps_for_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.df = type { i32 }
%struct.df_ref = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.df_rd_bb_info = type { i32 }

@ANTI_DEP = common dso_local global i32 0, align 4
@REG_DEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.df*, %struct.df_ref*)* @add_deps_for_use to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_deps_for_use(%struct.TYPE_11__* %0, %struct.df* %1, %struct.df_ref* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.df*, align 8
  %6 = alloca %struct.df_ref*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.df_ref*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.df_rd_bb_info*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.df* %1, %struct.df** %5, align 8
  store %struct.df_ref* %2, %struct.df_ref** %6, align 8
  %13 = load %struct.df_ref*, %struct.df_ref** %6, align 8
  %14 = call i32 @DF_REF_REGNO(%struct.df_ref* %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.df*, %struct.df** %5, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call %struct.df_ref* @df_bb_regno_first_def_find(%struct.df* %15, i32 %18, i32 %19)
  store %struct.df_ref* %20, %struct.df_ref** %9, align 8
  %21 = load %struct.df*, %struct.df** %5, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.df_rd_bb_info* @DF_RD_BB_INFO(%struct.df* %21, i32 %24)
  store %struct.df_rd_bb_info* %25, %struct.df_rd_bb_info** %12, align 8
  %26 = load %struct.df_ref*, %struct.df_ref** %9, align 8
  %27 = icmp ne %struct.df_ref* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %3
  br label %95

29:                                               ; preds = %3
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %31 = load %struct.df_ref*, %struct.df_ref** %6, align 8
  %32 = getelementptr inbounds %struct.df_ref, %struct.df_ref* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.TYPE_12__* @get_node_of_insn(%struct.TYPE_11__* %30, i32 %33)
  store %struct.TYPE_12__* %34, %struct.TYPE_12__** %10, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = load %struct.df_ref*, %struct.df_ref** %9, align 8
  %37 = getelementptr inbounds %struct.df_ref, %struct.df_ref* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.TYPE_12__* @get_node_of_insn(%struct.TYPE_11__* %35, i32 %38)
  store %struct.TYPE_12__* %39, %struct.TYPE_12__** %11, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %41 = icmp ne %struct.TYPE_12__* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %29
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %44 = icmp ne %struct.TYPE_12__* %43, null
  br label %45

45:                                               ; preds = %42, %29
  %46 = phi i1 [ false, %29 ], [ %44, %42 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @gcc_assert(i32 %47)
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %76, %45
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %79

59:                                               ; preds = %53
  %60 = load %struct.df*, %struct.df** %5, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.df_ref*, %struct.df_ref** %6, align 8
  %70 = getelementptr inbounds %struct.df_ref, %struct.df_ref* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @df_find_def(%struct.df* %60, i32 %68, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %59
  br label %95

75:                                               ; preds = %59
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %53

79:                                               ; preds = %53
  %80 = load %struct.df_rd_bb_info*, %struct.df_rd_bb_info** %12, align 8
  %81 = getelementptr inbounds %struct.df_rd_bb_info, %struct.df_rd_bb_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.df_ref*, %struct.df_ref** %9, align 8
  %84 = getelementptr inbounds %struct.df_ref, %struct.df_ref* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @bitmap_bit_p(i32 %82, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %79
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %92 = load i32, i32* @ANTI_DEP, align 4
  %93 = load i32, i32* @REG_DEP, align 4
  %94 = call i32 @create_ddg_dep_no_link(%struct.TYPE_11__* %89, %struct.TYPE_12__* %90, %struct.TYPE_12__* %91, i32 %92, i32 %93, i32 1)
  br label %95

95:                                               ; preds = %28, %74, %88, %79
  ret void
}

declare dso_local i32 @DF_REF_REGNO(%struct.df_ref*) #1

declare dso_local %struct.df_ref* @df_bb_regno_first_def_find(%struct.df*, i32, i32) #1

declare dso_local %struct.df_rd_bb_info* @DF_RD_BB_INFO(%struct.df*, i32) #1

declare dso_local %struct.TYPE_12__* @get_node_of_insn(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @df_find_def(%struct.df*, i32, i32) #1

declare dso_local i32 @bitmap_bit_p(i32, i32) #1

declare dso_local i32 @create_ddg_dep_no_link(%struct.TYPE_11__*, %struct.TYPE_12__*, %struct.TYPE_12__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
