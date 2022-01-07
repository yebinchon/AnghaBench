; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraphunit.c_cgraph_mark_functions_to_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraphunit.c_cgraph_mark_functions_to_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { i32, %struct.TYPE_2__, i64, i64, %struct.cgraph_edge*, i32, %struct.cgraph_node* }
%struct.TYPE_2__ = type { i64 }
%struct.cgraph_edge = type { i64, %struct.cgraph_edge* }

@cgraph_nodes = common dso_local global %struct.cgraph_node* null, align 8
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cgraph_mark_functions_to_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgraph_mark_functions_to_output() #0 {
  %1 = alloca %struct.cgraph_node*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.cgraph_edge*, align 8
  %4 = load %struct.cgraph_node*, %struct.cgraph_node** @cgraph_nodes, align 8
  store %struct.cgraph_node* %4, %struct.cgraph_node** %1, align 8
  br label %5

5:                                                ; preds = %89, %0
  %6 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %7 = icmp ne %struct.cgraph_node* %6, null
  br i1 %7, label %8, label %93

8:                                                ; preds = %5
  %9 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %10 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %2, align 4
  %12 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %13 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @gcc_assert(i32 %17)
  %19 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %20 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %19, i32 0, i32 4
  %21 = load %struct.cgraph_edge*, %struct.cgraph_edge** %20, align 8
  store %struct.cgraph_edge* %21, %struct.cgraph_edge** %3, align 8
  br label %22

22:                                               ; preds = %32, %8
  %23 = load %struct.cgraph_edge*, %struct.cgraph_edge** %3, align 8
  %24 = icmp ne %struct.cgraph_edge* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = load %struct.cgraph_edge*, %struct.cgraph_edge** %3, align 8
  %27 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %36

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.cgraph_edge*, %struct.cgraph_edge** %3, align 8
  %34 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %33, i32 0, i32 1
  %35 = load %struct.cgraph_edge*, %struct.cgraph_edge** %34, align 8
  store %struct.cgraph_edge* %35, %struct.cgraph_edge** %3, align 8
  br label %22

36:                                               ; preds = %30, %22
  %37 = load i32, i32* %2, align 4
  %38 = call i64 @DECL_SAVED_TREE(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %70

40:                                               ; preds = %36
  %41 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %42 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %70, label %46

46:                                               ; preds = %40
  %47 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %48 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %46
  %52 = load %struct.cgraph_edge*, %struct.cgraph_edge** %3, align 8
  %53 = icmp ne %struct.cgraph_edge* %52, null
  br i1 %53, label %54, label %70

54:                                               ; preds = %51
  %55 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %56 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %54, %46
  %60 = load i32, i32* %2, align 4
  %61 = call i32 @TREE_ASM_WRITTEN(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* %2, align 4
  %65 = call i64 @DECL_EXTERNAL(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %69 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  br label %88

70:                                               ; preds = %63, %59, %54, %51, %40, %36
  %71 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %72 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %70
  %77 = load i32, i32* %2, align 4
  %78 = call i64 @DECL_SAVED_TREE(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i32, i32* %2, align 4
  %82 = call i64 @DECL_EXTERNAL(i32 %81)
  %83 = icmp ne i64 %82, 0
  br label %84

84:                                               ; preds = %80, %76, %70
  %85 = phi i1 [ true, %76 ], [ true, %70 ], [ %83, %80 ]
  %86 = zext i1 %85 to i32
  %87 = call i32 @gcc_assert(i32 %86)
  br label %88

88:                                               ; preds = %84, %67
  br label %89

89:                                               ; preds = %88
  %90 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %91 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %90, i32 0, i32 6
  %92 = load %struct.cgraph_node*, %struct.cgraph_node** %91, align 8
  store %struct.cgraph_node* %92, %struct.cgraph_node** %1, align 8
  br label %5

93:                                               ; preds = %5
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @DECL_SAVED_TREE(i32) #1

declare dso_local i32 @TREE_ASM_WRITTEN(i32) #1

declare dso_local i64 @DECL_EXTERNAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
