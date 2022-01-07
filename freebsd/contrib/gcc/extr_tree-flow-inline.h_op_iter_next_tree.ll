; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-flow-inline.h_op_iter_next_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-flow-inline.h_op_iter_next_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_15__*, %struct.TYPE_13__*, %struct.TYPE_17__*, %struct.TYPE_14__*, %struct.TYPE_16__*, %struct.TYPE_11__*, %struct.TYPE_12__* }
%struct.TYPE_15__ = type { %struct.TYPE_15__* }
%struct.TYPE_13__ = type { %struct.TYPE_13__* }
%struct.TYPE_17__ = type { %struct.TYPE_17__* }
%struct.TYPE_14__ = type { %struct.TYPE_14__* }
%struct.TYPE_16__ = type { %struct.TYPE_16__* }
%struct.TYPE_11__ = type { %struct.TYPE_11__* }
%struct.TYPE_12__ = type { %struct.TYPE_12__* }

@NULL_TREE = common dso_local global i32 0, align 4
@ssa_op_iter_tree = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @op_iter_next_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @op_iter_next_tree(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %8 = icmp ne %struct.TYPE_12__* %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %13 = call i32 @USE_OP(%struct.TYPE_12__* %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 8
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %20, align 8
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %134

22:                                               ; preds = %1
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 7
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = icmp ne %struct.TYPE_11__* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %22
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 7
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = call i32 @VUSE_OP(%struct.TYPE_11__* %30)
  store i32 %31, i32* %4, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 7
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 7
  store %struct.TYPE_11__* %36, %struct.TYPE_11__** %38, align 8
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %134

40:                                               ; preds = %22
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 6
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %44 = icmp ne %struct.TYPE_16__* %43, null
  br i1 %44, label %45, label %58

45:                                               ; preds = %40
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 6
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %47, align 8
  %49 = call i32 @MAYDEF_OP(%struct.TYPE_16__* %48)
  store i32 %49, i32* %4, align 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 6
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %53, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 6
  store %struct.TYPE_16__* %54, %struct.TYPE_16__** %56, align 8
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %134

58:                                               ; preds = %40
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 5
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  %62 = icmp ne %struct.TYPE_14__* %61, null
  br i1 %62, label %63, label %76

63:                                               ; preds = %58
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 5
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  %67 = call i32 @MUSTDEF_KILL(%struct.TYPE_14__* %66)
  store i32 %67, i32* %4, align 4
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 5
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %71, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 5
  store %struct.TYPE_14__* %72, %struct.TYPE_14__** %74, align 8
  %75 = load i32, i32* %4, align 4
  store i32 %75, i32* %2, align 4
  br label %134

76:                                               ; preds = %58
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 4
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %78, align 8
  %80 = icmp ne %struct.TYPE_17__* %79, null
  br i1 %80, label %81, label %94

81:                                               ; preds = %76
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 4
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %83, align 8
  %85 = call i32 @DEF_OP(%struct.TYPE_17__* %84)
  store i32 %85, i32* %4, align 4
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 4
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %89, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 4
  store %struct.TYPE_17__* %90, %struct.TYPE_17__** %92, align 8
  %93 = load i32, i32* %4, align 4
  store i32 %93, i32* %2, align 4
  br label %134

94:                                               ; preds = %76
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 3
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %96, align 8
  %98 = icmp ne %struct.TYPE_13__* %97, null
  br i1 %98, label %99, label %112

99:                                               ; preds = %94
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %101, align 8
  %103 = call i32 @MUSTDEF_RESULT(%struct.TYPE_13__* %102)
  store i32 %103, i32* %4, align 4
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 3
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %107, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 3
  store %struct.TYPE_13__* %108, %struct.TYPE_13__** %110, align 8
  %111 = load i32, i32* %4, align 4
  store i32 %111, i32* %2, align 4
  br label %134

112:                                              ; preds = %94
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %114, align 8
  %116 = icmp ne %struct.TYPE_15__* %115, null
  br i1 %116, label %117, label %130

117:                                              ; preds = %112
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %119, align 8
  %121 = call i32 @MAYDEF_RESULT(%struct.TYPE_15__* %120)
  store i32 %121, i32* %4, align 4
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 2
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %125, align 8
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 2
  store %struct.TYPE_15__* %126, %struct.TYPE_15__** %128, align 8
  %129 = load i32, i32* %4, align 4
  store i32 %129, i32* %2, align 4
  br label %134

130:                                              ; preds = %112
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 1
  store i32 1, i32* %132, align 8
  %133 = load i32, i32* @NULL_TREE, align 4
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %130, %117, %99, %81, %63, %45, %27, %9
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i32 @USE_OP(%struct.TYPE_12__*) #1

declare dso_local i32 @VUSE_OP(%struct.TYPE_11__*) #1

declare dso_local i32 @MAYDEF_OP(%struct.TYPE_16__*) #1

declare dso_local i32 @MUSTDEF_KILL(%struct.TYPE_14__*) #1

declare dso_local i32 @DEF_OP(%struct.TYPE_17__*) #1

declare dso_local i32 @MUSTDEF_RESULT(%struct.TYPE_13__*) #1

declare dso_local i32 @MAYDEF_RESULT(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
