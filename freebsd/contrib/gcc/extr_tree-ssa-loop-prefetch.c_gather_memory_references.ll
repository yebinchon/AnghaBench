; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-prefetch.c_gather_memory_references.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-prefetch.c_gather_memory_references.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ref_group = type { i32 }
%struct.loop = type { i32 }
%struct.TYPE_5__ = type { %struct.loop* }

@MODIFY_EXPR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mem_ref_group* (%struct.loop*)* @gather_memory_references to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mem_ref_group* @gather_memory_references(%struct.loop* %0) #0 {
  %2 = alloca %struct.loop*, align 8
  %3 = alloca %struct.TYPE_5__**, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mem_ref_group*, align 8
  store %struct.loop* %0, %struct.loop** %2, align 8
  %11 = load %struct.loop*, %struct.loop** %2, align 8
  %12 = call %struct.TYPE_5__** @get_loop_body_in_dom_order(%struct.loop* %11)
  store %struct.TYPE_5__** %12, %struct.TYPE_5__*** %3, align 8
  store %struct.mem_ref_group* null, %struct.mem_ref_group** %10, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %73, %1
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.loop*, %struct.loop** %2, align 8
  %16 = getelementptr inbounds %struct.loop, %struct.loop* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %76

19:                                               ; preds = %13
  %20 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %20, i64 %22
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %4, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.loop*, %struct.loop** %26, align 8
  %28 = load %struct.loop*, %struct.loop** %2, align 8
  %29 = icmp ne %struct.loop* %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %73

31:                                               ; preds = %19
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = call i32 @bsi_start(%struct.TYPE_5__* %32)
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %70, %31
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @bsi_end_p(i32 %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br i1 %38, label %39, label %72

39:                                               ; preds = %34
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @bsi_stmt(i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @TREE_CODE(i32 %42)
  %44 = load i64, i64* @MODIFY_EXPR, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %70

47:                                               ; preds = %39
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @TREE_OPERAND(i32 %48, i32 0)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @TREE_OPERAND(i32 %50, i32 1)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i64 @REFERENCE_CLASS_P(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %47
  %56 = load %struct.loop*, %struct.loop** %2, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @gather_memory_references_ref(%struct.loop* %56, %struct.mem_ref_group** %10, i32 %57, i32 0, i32 %58)
  br label %60

60:                                               ; preds = %55, %47
  %61 = load i32, i32* %8, align 4
  %62 = call i64 @REFERENCE_CLASS_P(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load %struct.loop*, %struct.loop** %2, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @gather_memory_references_ref(%struct.loop* %65, %struct.mem_ref_group** %10, i32 %66, i32 1, i32 %67)
  br label %69

69:                                               ; preds = %64, %60
  br label %70

70:                                               ; preds = %69, %46
  %71 = call i32 @bsi_next(i32* %6)
  br label %34

72:                                               ; preds = %34
  br label %73

73:                                               ; preds = %72, %30
  %74 = load i32, i32* %5, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %13

76:                                               ; preds = %13
  %77 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  %78 = call i32 @free(%struct.TYPE_5__** %77)
  %79 = load %struct.mem_ref_group*, %struct.mem_ref_group** %10, align 8
  ret %struct.mem_ref_group* %79
}

declare dso_local %struct.TYPE_5__** @get_loop_body_in_dom_order(%struct.loop*) #1

declare dso_local i32 @bsi_start(%struct.TYPE_5__*) #1

declare dso_local i32 @bsi_end_p(i32) #1

declare dso_local i32 @bsi_stmt(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i64 @REFERENCE_CLASS_P(i32) #1

declare dso_local i32 @gather_memory_references_ref(%struct.loop*, %struct.mem_ref_group**, i32, i32, i32) #1

declare dso_local i32 @bsi_next(i32*) #1

declare dso_local i32 @free(%struct.TYPE_5__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
