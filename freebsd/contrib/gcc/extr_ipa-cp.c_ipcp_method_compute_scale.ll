; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-cp.c_ipcp_method_compute_scale.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-cp.c_ipcp_method_compute_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { i32, %struct.cgraph_edge* }
%struct.cgraph_edge = type { i64, %struct.cgraph_edge* }

@REG_BR_PROB_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgraph_node*)* @ipcp_method_compute_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipcp_method_compute_scale(%struct.cgraph_node* %0) #0 {
  %2 = alloca %struct.cgraph_node*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cgraph_edge*, align 8
  store %struct.cgraph_node* %0, %struct.cgraph_node** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %6 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %5, i32 0, i32 1
  %7 = load %struct.cgraph_edge*, %struct.cgraph_edge** %6, align 8
  store %struct.cgraph_edge* %7, %struct.cgraph_edge** %4, align 8
  br label %8

8:                                                ; preds = %19, %1
  %9 = load %struct.cgraph_edge*, %struct.cgraph_edge** %4, align 8
  %10 = icmp ne %struct.cgraph_edge* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %8
  %12 = load %struct.cgraph_edge*, %struct.cgraph_edge** %4, align 8
  %13 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %16, %14
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %11
  %20 = load %struct.cgraph_edge*, %struct.cgraph_edge** %4, align 8
  %21 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %20, i32 0, i32 1
  %22 = load %struct.cgraph_edge*, %struct.cgraph_edge** %21, align 8
  store %struct.cgraph_edge* %22, %struct.cgraph_edge** %4, align 8
  br label %8

23:                                               ; preds = %8
  %24 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %25 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %30 = call i32 @ipcp_method_set_scale(%struct.cgraph_node* %29, i32 0)
  br label %41

31:                                               ; preds = %23
  %32 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @REG_BR_PROB_BASE, align 4
  %35 = mul nsw i32 %33, %34
  %36 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %37 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sdiv i32 %35, %38
  %40 = call i32 @ipcp_method_set_scale(%struct.cgraph_node* %32, i32 %39)
  br label %41

41:                                               ; preds = %31, %28
  ret void
}

declare dso_local i32 @ipcp_method_set_scale(%struct.cgraph_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
