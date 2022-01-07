; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-phiopt.c_replace_phi_edge_with_variable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-phiopt.c_replace_phi_edge_with_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__*, i64, i8* }

@EDGE_FALLTHRU = common dso_local global i32 0, align 4
@EDGE_TRUE_VALUE = common dso_local global i32 0, align 4
@EDGE_FALSE_VALUE = common dso_local global i32 0, align 4
@REG_BR_PROB_BASE = common dso_local global i8* null, align 8
@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"COND_EXPR in block %d and PHI in block %d converted to straightline code.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_10__*, i32, i32)* @replace_phi_edge_with_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @replace_phi_edge_with_variable(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.TYPE_11__* @bb_for_stmt(i32 %12)
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @PHI_ARG_DEF_PTR(i32 %14, i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @SET_USE(i32 %18, i32 %19)
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %22 = call %struct.TYPE_12__* @EDGE_SUCC(%struct.TYPE_11__* %21, i32 0)
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %26 = icmp eq %struct.TYPE_11__* %24, %25
  br i1 %26, label %27, label %60

27:                                               ; preds = %4
  %28 = load i32, i32* @EDGE_FALLTHRU, align 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %30 = call %struct.TYPE_12__* @EDGE_SUCC(%struct.TYPE_11__* %29, i32 0)
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %28
  store i32 %33, i32* %31, align 8
  %34 = load i32, i32* @EDGE_TRUE_VALUE, align 4
  %35 = load i32, i32* @EDGE_FALSE_VALUE, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %39 = call %struct.TYPE_12__* @EDGE_SUCC(%struct.TYPE_11__* %38, i32 0)
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, %37
  store i32 %42, i32* %40, align 8
  %43 = load i8*, i8** @REG_BR_PROB_BASE, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %45 = call %struct.TYPE_12__* @EDGE_SUCC(%struct.TYPE_11__* %44, i32 0)
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 3
  store i8* %43, i8** %46, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %48 = call %struct.TYPE_12__* @EDGE_SUCC(%struct.TYPE_11__* %47, i32 1)
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %52 = call %struct.TYPE_12__* @EDGE_SUCC(%struct.TYPE_11__* %51, i32 0)
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, %50
  store i64 %55, i64* %53, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %57 = call %struct.TYPE_12__* @EDGE_SUCC(%struct.TYPE_11__* %56, i32 1)
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  store %struct.TYPE_11__* %59, %struct.TYPE_11__** %10, align 8
  br label %93

60:                                               ; preds = %4
  %61 = load i32, i32* @EDGE_FALLTHRU, align 4
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %63 = call %struct.TYPE_12__* @EDGE_SUCC(%struct.TYPE_11__* %62, i32 1)
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %61
  store i32 %66, i32* %64, align 8
  %67 = load i32, i32* @EDGE_TRUE_VALUE, align 4
  %68 = load i32, i32* @EDGE_FALSE_VALUE, align 4
  %69 = or i32 %67, %68
  %70 = xor i32 %69, -1
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %72 = call %struct.TYPE_12__* @EDGE_SUCC(%struct.TYPE_11__* %71, i32 1)
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, %70
  store i32 %75, i32* %73, align 8
  %76 = load i8*, i8** @REG_BR_PROB_BASE, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %78 = call %struct.TYPE_12__* @EDGE_SUCC(%struct.TYPE_11__* %77, i32 1)
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 3
  store i8* %76, i8** %79, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %81 = call %struct.TYPE_12__* @EDGE_SUCC(%struct.TYPE_11__* %80, i32 0)
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %85 = call %struct.TYPE_12__* @EDGE_SUCC(%struct.TYPE_11__* %84, i32 1)
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, %83
  store i64 %88, i64* %86, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %90 = call %struct.TYPE_12__* @EDGE_SUCC(%struct.TYPE_11__* %89, i32 0)
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  store %struct.TYPE_11__* %92, %struct.TYPE_11__** %10, align 8
  br label %93

93:                                               ; preds = %60, %27
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %95 = call i32 @delete_basic_block(%struct.TYPE_11__* %94)
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %97 = call i32 @bsi_last(%struct.TYPE_11__* %96)
  store i32 %97, i32* %11, align 4
  %98 = call i32 @bsi_remove(i32* %11, i32 1)
  %99 = load i64, i64* @dump_file, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %115

101:                                              ; preds = %93
  %102 = load i32, i32* @dump_flags, align 4
  %103 = load i32, i32* @TDF_DETAILS, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %101
  %107 = load i64, i64* @dump_file, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @fprintf(i64 %107, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %110, i32 %113)
  br label %115

115:                                              ; preds = %106, %101, %93
  ret void
}

declare dso_local %struct.TYPE_11__* @bb_for_stmt(i32) #1

declare dso_local i32 @SET_USE(i32, i32) #1

declare dso_local i32 @PHI_ARG_DEF_PTR(i32, i32) #1

declare dso_local %struct.TYPE_12__* @EDGE_SUCC(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @delete_basic_block(%struct.TYPE_11__*) #1

declare dso_local i32 @bsi_last(%struct.TYPE_11__*) #1

declare dso_local i32 @bsi_remove(i32*, i32) #1

declare dso_local i32 @fprintf(i64, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
