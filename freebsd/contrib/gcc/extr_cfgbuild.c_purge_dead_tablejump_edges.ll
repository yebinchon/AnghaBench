; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgbuild.c_purge_dead_tablejump_edges.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgbuild.c_purge_dead_tablejump_edges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@ADDR_VEC = common dso_local global i64 0, align 8
@pc_rtx = common dso_local global i64 0, align 8
@IF_THEN_ELSE = common dso_local global i64 0, align 8
@LABEL_REF = common dso_local global i64 0, align 8
@BLOCK_USED_BY_TABLEJUMP = common dso_local global i32 0, align 4
@EDGE_ABNORMAL = common dso_local global i32 0, align 4
@EDGE_EH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32*)* @purge_dead_tablejump_edges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @purge_dead_tablejump_edges(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = call i32* @BB_END(%struct.TYPE_8__* %11)
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @PATTERN(i32* %13)
  %15 = call i64 @GET_CODE(i32 %14)
  %16 = load i64, i64* @ADDR_VEC, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @PATTERN(i32* %19)
  %21 = call i32 @XVEC(i32 %20, i32 0)
  store i32 %21, i32* %7, align 4
  br label %26

22:                                               ; preds = %2
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @PATTERN(i32* %23)
  %25 = call i32 @XVEC(i32 %24, i32 1)
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @GET_NUM_ELEM(i32 %27)
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %39, %26
  %31 = load i32, i32* %8, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @RTVEC_ELT(i32 %34, i32 %35)
  %37 = call i32 @XEXP(i32 %36, i32 0)
  %38 = call i32 @mark_tablejump_edge(i32 %37)
  br label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %8, align 4
  br label %30

42:                                               ; preds = %30
  %43 = load i32*, i32** %5, align 8
  %44 = call i32* @single_set(i32* %43)
  store i32* %44, i32** %6, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %70

46:                                               ; preds = %42
  %47 = load i32*, i32** %6, align 8
  %48 = call i64 @SET_DEST(i32* %47)
  %49 = load i64, i64* @pc_rtx, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %46
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @SET_SRC(i32* %52)
  %54 = call i64 @GET_CODE(i32 %53)
  %55 = load i64, i64* @IF_THEN_ELSE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %51
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @SET_SRC(i32* %58)
  %60 = call i32 @XEXP(i32 %59, i32 2)
  %61 = call i64 @GET_CODE(i32 %60)
  %62 = load i64, i64* @LABEL_REF, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @SET_SRC(i32* %65)
  %67 = call i32 @XEXP(i32 %66, i32 2)
  %68 = call i32 @XEXP(i32 %67, i32 0)
  %69 = call i32 @mark_tablejump_edge(i32 %68)
  br label %70

70:                                               ; preds = %64, %57, %51, %46, %42
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ei_start(i32 %73)
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %114, %110, %70
  %76 = load i32, i32* %9, align 4
  %77 = call %struct.TYPE_7__* @ei_safe_edge(i32 %76)
  store %struct.TYPE_7__* %77, %struct.TYPE_7__** %10, align 8
  %78 = icmp ne %struct.TYPE_7__* %77, null
  br i1 %78, label %79, label %116

79:                                               ; preds = %75
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @FULL_STATE(i32 %82)
  %84 = load i32, i32* @BLOCK_USED_BY_TABLEJUMP, align 4
  %85 = sext i32 %84 to i64
  %86 = and i64 %83, %85
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %79
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @FULL_STATE(i32 %94)
  %96 = load i32, i32* @BLOCK_USED_BY_TABLEJUMP, align 4
  %97 = sext i32 %96 to i64
  %98 = xor i64 %97, -1
  %99 = and i64 %95, %98
  %100 = call i32 @SET_STATE(i32 %91, i64 %99)
  br label %114

101:                                              ; preds = %79
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @EDGE_ABNORMAL, align 4
  %106 = load i32, i32* @EDGE_EH, align 4
  %107 = or i32 %105, %106
  %108 = and i32 %104, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %101
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %112 = call i32 @remove_edge(%struct.TYPE_7__* %111)
  br label %75

113:                                              ; preds = %101
  br label %114

114:                                              ; preds = %113, %88
  %115 = call i32 @ei_next(i32* %9)
  br label %75

116:                                              ; preds = %75
  ret void
}

declare dso_local i32* @BB_END(%struct.TYPE_8__*) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @PATTERN(i32*) #1

declare dso_local i32 @XVEC(i32, i32) #1

declare dso_local i32 @GET_NUM_ELEM(i32) #1

declare dso_local i32 @mark_tablejump_edge(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @RTVEC_ELT(i32, i32) #1

declare dso_local i32* @single_set(i32*) #1

declare dso_local i64 @SET_DEST(i32*) #1

declare dso_local i32 @SET_SRC(i32*) #1

declare dso_local i32 @ei_start(i32) #1

declare dso_local %struct.TYPE_7__* @ei_safe_edge(i32) #1

declare dso_local i64 @FULL_STATE(i32) #1

declare dso_local i32 @SET_STATE(i32, i64) #1

declare dso_local i32 @remove_edge(%struct.TYPE_7__*) #1

declare dso_local i32 @ei_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
