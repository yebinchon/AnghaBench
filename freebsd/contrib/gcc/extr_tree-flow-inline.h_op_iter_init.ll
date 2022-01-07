; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-flow-inline.h_op_iter_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-flow-inline.h_op_iter_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i64, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@SSA_OP_DEF = common dso_local global i32 0, align 4
@SSA_OP_USE = common dso_local global i32 0, align 4
@SSA_OP_VUSE = common dso_local global i32 0, align 4
@SSA_OP_VMAYDEF = common dso_local global i32 0, align 4
@SSA_OP_VMAYUSE = common dso_local global i32 0, align 4
@SSA_OP_VMUSTDEF = common dso_local global i32 0, align 4
@SSA_OP_VMUSTKILL = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32)* @op_iter_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @op_iter_init(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @SSA_OP_DEF, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = call i32* @DEF_OPS(i32 %12)
  br label %15

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %14, %11
  %16 = phi i32* [ %13, %11 ], [ null, %14 ]
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 10
  store i32* %16, i32** %18, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @SSA_OP_USE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load i32, i32* %5, align 4
  %25 = call i32* @USE_OPS(i32 %24)
  br label %27

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %26, %23
  %28 = phi i32* [ %25, %23 ], [ null, %26 ]
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 9
  store i32* %28, i32** %30, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @SSA_OP_VUSE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* %5, align 4
  %37 = call i32* @VUSE_OPS(i32 %36)
  br label %39

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38, %35
  %40 = phi i32* [ %37, %35 ], [ null, %38 ]
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 8
  store i32* %40, i32** %42, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @SSA_OP_VMAYDEF, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i32, i32* %5, align 4
  %49 = call i32* @MAYDEF_OPS(i32 %48)
  br label %51

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50, %47
  %52 = phi i32* [ %49, %47 ], [ null, %50 ]
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 7
  store i32* %52, i32** %54, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @SSA_OP_VMAYUSE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = load i32, i32* %5, align 4
  %61 = call i32* @MAYDEF_OPS(i32 %60)
  br label %63

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62, %59
  %64 = phi i32* [ %61, %59 ], [ null, %62 ]
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 6
  store i32* %64, i32** %66, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @SSA_OP_VMUSTDEF, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load i32, i32* %5, align 4
  %73 = call i32* @MUSTDEF_OPS(i32 %72)
  br label %75

74:                                               ; preds = %63
  br label %75

75:                                               ; preds = %74, %71
  %76 = phi i32* [ %73, %71 ], [ null, %74 ]
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 5
  store i32* %76, i32** %78, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @SSA_OP_VMUSTKILL, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %75
  %84 = load i32, i32* %5, align 4
  %85 = call i32* @MUSTDEF_OPS(i32 %84)
  br label %87

86:                                               ; preds = %75
  br label %87

87:                                               ; preds = %86, %83
  %88 = phi i32* [ %85, %83 ], [ null, %86 ]
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 4
  store i32* %88, i32** %90, align 8
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  store i32 0, i32* %92, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 3
  store i64 0, i64* %94, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  store i64 0, i64* %96, align 8
  %97 = load i32, i32* @NULL_TREE, align 4
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  ret void
}

declare dso_local i32* @DEF_OPS(i32) #1

declare dso_local i32* @USE_OPS(i32) #1

declare dso_local i32* @VUSE_OPS(i32) #1

declare dso_local i32* @MAYDEF_OPS(i32) #1

declare dso_local i32* @MUSTDEF_OPS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
