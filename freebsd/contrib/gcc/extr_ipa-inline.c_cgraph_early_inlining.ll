; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-inline.c_cgraph_early_inlining.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-inline.c_cgraph_early_inlining.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { %struct.TYPE_4__, %struct.cgraph_node*, i64, i64, i64, %struct.TYPE_3__, i64, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64, i32 }

@sorrycount = common dso_local global i64 0, align 8
@errorcount = common dso_local global i64 0, align 8
@cgraph_n_nodes = common dso_local global i32 0, align 4
@order = common dso_local global %struct.cgraph_node** null, align 8
@nnodes = common dso_local global i32 0, align 4
@dump_file = common dso_local global i32 0, align 4
@cgraph_nodes = common dso_local global %struct.cgraph_node* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @cgraph_early_inlining to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgraph_early_inlining() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.cgraph_node*, align 8
  %3 = alloca i32, align 4
  %4 = load i64, i64* @sorrycount, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %0
  %7 = load i64, i64* @errorcount, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6, %0
  store i32 0, i32* %1, align 4
  br label %111

10:                                               ; preds = %6
  %11 = load i32, i32* @cgraph_n_nodes, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 8, %12
  %14 = trunc i64 %13 to i32
  %15 = call %struct.cgraph_node** @ggc_alloc(i32 %14)
  store %struct.cgraph_node** %15, %struct.cgraph_node*** @order, align 8
  %16 = load %struct.cgraph_node**, %struct.cgraph_node*** @order, align 8
  %17 = call i32 @cgraph_postorder(%struct.cgraph_node** %16)
  store i32 %17, i32* @nnodes, align 4
  %18 = load i32, i32* @nnodes, align 4
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %55, %10
  %21 = load i32, i32* %3, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %58

23:                                               ; preds = %20
  %24 = load %struct.cgraph_node**, %struct.cgraph_node*** @order, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.cgraph_node*, %struct.cgraph_node** %24, i64 %26
  %28 = load %struct.cgraph_node*, %struct.cgraph_node** %27, align 8
  store %struct.cgraph_node* %28, %struct.cgraph_node** %2, align 8
  %29 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %30 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %29, i32 0, i32 6
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %23
  %34 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %35 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %40 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %38, %33
  %44 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %45 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @estimate_num_insns(i32 %46)
  %48 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %49 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %52 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i32 %47, i32* %53, align 8
  br label %54

54:                                               ; preds = %43, %38, %23
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %3, align 4
  br label %20

58:                                               ; preds = %20
  %59 = load i32, i32* @nnodes, align 4
  %60 = sub nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %103, %58
  %62 = load i32, i32* %3, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %106

64:                                               ; preds = %61
  %65 = load %struct.cgraph_node**, %struct.cgraph_node*** @order, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.cgraph_node*, %struct.cgraph_node** %65, i64 %67
  %69 = load %struct.cgraph_node*, %struct.cgraph_node** %68, align 8
  store %struct.cgraph_node* %69, %struct.cgraph_node** %2, align 8
  %70 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %71 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %70, i32 0, i32 6
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %102

74:                                               ; preds = %64
  %75 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %76 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %75, i32 0, i32 5
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %102

80:                                               ; preds = %74
  %81 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %82 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %87 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %85, %80
  %91 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %92 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %97 = call i64 @cgraph_decide_inlining_incrementally(%struct.cgraph_node* %96, i32 1)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = call i32 (...) @ggc_collect()
  br label %101

101:                                              ; preds = %99, %95
  br label %102

102:                                              ; preds = %101, %90, %85, %74, %64
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %3, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %3, align 4
  br label %61

106:                                              ; preds = %61
  %107 = load i32, i32* @dump_file, align 4
  %108 = call i32 @cgraph_remove_unreachable_nodes(i32 1, i32 %107)
  %109 = load %struct.cgraph_node**, %struct.cgraph_node*** @order, align 8
  %110 = call i32 @ggc_free(%struct.cgraph_node** %109)
  store %struct.cgraph_node** null, %struct.cgraph_node*** @order, align 8
  store i32 0, i32* @nnodes, align 4
  store i32 0, i32* %1, align 4
  br label %111

111:                                              ; preds = %106, %9
  %112 = load i32, i32* %1, align 4
  ret i32 %112
}

declare dso_local %struct.cgraph_node** @ggc_alloc(i32) #1

declare dso_local i32 @cgraph_postorder(%struct.cgraph_node**) #1

declare dso_local i32 @estimate_num_insns(i32) #1

declare dso_local i64 @cgraph_decide_inlining_incrementally(%struct.cgraph_node*, i32) #1

declare dso_local i32 @ggc_collect(...) #1

declare dso_local i32 @cgraph_remove_unreachable_nodes(i32, i32) #1

declare dso_local i32 @ggc_free(%struct.cgraph_node**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
