; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-prop.c_ipa_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-prop.c_ipa_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { %struct.cgraph_edge*, i32*, %struct.cgraph_node* }
%struct.cgraph_edge = type { i64, %struct.cgraph_edge* }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.TYPE_4__ = type { i64 }

@cgraph_nodes = common dso_local global %struct.cgraph_node* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipa_free() #0 {
  %1 = alloca %struct.cgraph_node*, align 8
  %2 = alloca %struct.cgraph_edge*, align 8
  %3 = load %struct.cgraph_node*, %struct.cgraph_node** @cgraph_nodes, align 8
  store %struct.cgraph_node* %3, %struct.cgraph_node** %1, align 8
  br label %4

4:                                                ; preds = %80, %0
  %5 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %6 = icmp ne %struct.cgraph_node* %5, null
  br i1 %6, label %7, label %84

7:                                                ; preds = %4
  %8 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %9 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  br label %80

13:                                               ; preds = %7
  %14 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %15 = call %struct.TYPE_3__* @IPA_NODE_REF(%struct.cgraph_node* %14)
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %21 = call %struct.TYPE_3__* @IPA_NODE_REF(%struct.cgraph_node* %20)
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @free(i64 %23)
  br label %25

25:                                               ; preds = %19, %13
  %26 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %27 = call %struct.TYPE_3__* @IPA_NODE_REF(%struct.cgraph_node* %26)
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %33 = call %struct.TYPE_3__* @IPA_NODE_REF(%struct.cgraph_node* %32)
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @free(i64 %35)
  br label %37

37:                                               ; preds = %31, %25
  %38 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %39 = call %struct.TYPE_3__* @IPA_NODE_REF(%struct.cgraph_node* %38)
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %45 = call %struct.TYPE_3__* @IPA_NODE_REF(%struct.cgraph_node* %44)
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @free(i64 %47)
  br label %49

49:                                               ; preds = %43, %37
  %50 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %51 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %50, i32 0, i32 0
  %52 = load %struct.cgraph_edge*, %struct.cgraph_edge** %51, align 8
  store %struct.cgraph_edge* %52, %struct.cgraph_edge** %2, align 8
  br label %53

53:                                               ; preds = %75, %49
  %54 = load %struct.cgraph_edge*, %struct.cgraph_edge** %2, align 8
  %55 = icmp ne %struct.cgraph_edge* %54, null
  br i1 %55, label %56, label %79

56:                                               ; preds = %53
  %57 = load %struct.cgraph_edge*, %struct.cgraph_edge** %2, align 8
  %58 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %56
  %62 = load %struct.cgraph_edge*, %struct.cgraph_edge** %2, align 8
  %63 = call %struct.TYPE_4__* @IPA_EDGE_REF(%struct.cgraph_edge* %62)
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load %struct.cgraph_edge*, %struct.cgraph_edge** %2, align 8
  %69 = call %struct.TYPE_4__* @IPA_EDGE_REF(%struct.cgraph_edge* %68)
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @free(i64 %71)
  br label %73

73:                                               ; preds = %67, %61
  br label %74

74:                                               ; preds = %73, %56
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.cgraph_edge*, %struct.cgraph_edge** %2, align 8
  %77 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %76, i32 0, i32 1
  %78 = load %struct.cgraph_edge*, %struct.cgraph_edge** %77, align 8
  store %struct.cgraph_edge* %78, %struct.cgraph_edge** %2, align 8
  br label %53

79:                                               ; preds = %53
  br label %80

80:                                               ; preds = %79, %12
  %81 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %82 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %81, i32 0, i32 2
  %83 = load %struct.cgraph_node*, %struct.cgraph_node** %82, align 8
  store %struct.cgraph_node* %83, %struct.cgraph_node** %1, align 8
  br label %4

84:                                               ; preds = %4
  ret void
}

declare dso_local %struct.TYPE_3__* @IPA_NODE_REF(%struct.cgraph_node*) #1

declare dso_local i32 @free(i64) #1

declare dso_local %struct.TYPE_4__* @IPA_EDGE_REF(%struct.cgraph_edge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
