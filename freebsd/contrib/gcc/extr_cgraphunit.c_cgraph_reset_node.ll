; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraphunit.c_cgraph_reset_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraphunit.c_cgraph_reset_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { i32, i64, %struct.cgraph_node*, %struct.TYPE_2__, %struct.cgraph_node*, %struct.TYPE_2__, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, %struct.cgraph_node* }

@flag_unit_at_a_time = common dso_local global i32 0, align 4
@cgraph_nodes = common dso_local global %struct.cgraph_node* null, align 8
@cgraph_nodes_queue = common dso_local global %struct.cgraph_node* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgraph_node*)* @cgraph_reset_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgraph_reset_node(%struct.cgraph_node* %0) #0 {
  %2 = alloca %struct.cgraph_node*, align 8
  %3 = alloca %struct.cgraph_node*, align 8
  %4 = alloca %struct.cgraph_node*, align 8
  %5 = alloca %struct.cgraph_node*, align 8
  store %struct.cgraph_node* %0, %struct.cgraph_node** %2, align 8
  %6 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %7 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @gcc_assert(i32 %11)
  %13 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %14 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %13, i32 0, i32 5
  %15 = call i32 @memset(%struct.TYPE_2__* %14, i32 0, i32 16)
  %16 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %17 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %16, i32 0, i32 3
  %18 = call i32 @memset(%struct.TYPE_2__* %17, i32 0, i32 16)
  %19 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %20 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %19, i32 0, i32 6
  %21 = call i32 @memset(%struct.TYPE_2__* %20, i32 0, i32 16)
  %22 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %23 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %25 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %28 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i32 0, i32* %29, align 4
  %30 = load i32, i32* @flag_unit_at_a_time, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %54, label %32

32:                                               ; preds = %1
  %33 = load %struct.cgraph_node*, %struct.cgraph_node** @cgraph_nodes, align 8
  store %struct.cgraph_node* %33, %struct.cgraph_node** %3, align 8
  br label %34

34:                                               ; preds = %51, %32
  %35 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %36 = icmp ne %struct.cgraph_node* %35, null
  br i1 %36, label %37, label %53

37:                                               ; preds = %34
  %38 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %39 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %38, i32 0, i32 4
  %40 = load %struct.cgraph_node*, %struct.cgraph_node** %39, align 8
  store %struct.cgraph_node* %40, %struct.cgraph_node** %4, align 8
  %41 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %42 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load %struct.cgraph_node*, %struct.cgraph_node** %43, align 8
  %45 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %46 = icmp eq %struct.cgraph_node* %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %49 = call i32 @cgraph_remove_node(%struct.cgraph_node* %48)
  br label %50

50:                                               ; preds = %47, %37
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.cgraph_node*, %struct.cgraph_node** %4, align 8
  store %struct.cgraph_node* %52, %struct.cgraph_node** %3, align 8
  br label %34

53:                                               ; preds = %34
  br label %54

54:                                               ; preds = %53, %1
  %55 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %56 = call i32 @cgraph_node_remove_callees(%struct.cgraph_node* %55)
  %57 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %58 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %86

61:                                               ; preds = %54
  %62 = load i32, i32* @flag_unit_at_a_time, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %86, label %64

64:                                               ; preds = %61
  %65 = load %struct.cgraph_node*, %struct.cgraph_node** @cgraph_nodes_queue, align 8
  store %struct.cgraph_node* %65, %struct.cgraph_node** %5, align 8
  br label %66

66:                                               ; preds = %75, %64
  %67 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %68 = icmp ne %struct.cgraph_node* %67, null
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %71 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %72 = icmp eq %struct.cgraph_node* %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %79

74:                                               ; preds = %69
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %77 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %76, i32 0, i32 2
  %78 = load %struct.cgraph_node*, %struct.cgraph_node** %77, align 8
  store %struct.cgraph_node* %78, %struct.cgraph_node** %5, align 8
  br label %66

79:                                               ; preds = %73, %66
  %80 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %81 = icmp ne %struct.cgraph_node* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %84 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %83, i32 0, i32 1
  store i64 0, i64* %84, align 8
  br label %85

85:                                               ; preds = %82, %79
  br label %86

86:                                               ; preds = %85, %61, %54
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @cgraph_remove_node(%struct.cgraph_node*) #1

declare dso_local i32 @cgraph_node_remove_callees(%struct.cgraph_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
