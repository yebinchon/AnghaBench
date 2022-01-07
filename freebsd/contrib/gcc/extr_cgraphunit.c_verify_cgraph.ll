; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraphunit.c_verify_cgraph.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraphunit.c_verify_cgraph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { %struct.cgraph_node* }

@sorrycount = common dso_local global i64 0, align 8
@errorcount = common dso_local global i64 0, align 8
@cgraph_nodes = common dso_local global %struct.cgraph_node* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @verify_cgraph() #0 {
  %1 = alloca %struct.cgraph_node*, align 8
  %2 = load i64, i64* @sorrycount, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = load i64, i64* @errorcount, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4, %0
  br label %20

8:                                                ; preds = %4
  %9 = load %struct.cgraph_node*, %struct.cgraph_node** @cgraph_nodes, align 8
  store %struct.cgraph_node* %9, %struct.cgraph_node** %1, align 8
  br label %10

10:                                               ; preds = %16, %8
  %11 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %12 = icmp ne %struct.cgraph_node* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %15 = call i32 @verify_cgraph_node(%struct.cgraph_node* %14)
  br label %16

16:                                               ; preds = %13
  %17 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %18 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %17, i32 0, i32 0
  %19 = load %struct.cgraph_node*, %struct.cgraph_node** %18, align 8
  store %struct.cgraph_node* %19, %struct.cgraph_node** %1, align 8
  br label %10

20:                                               ; preds = %7, %10
  ret void
}

declare dso_local i32 @verify_cgraph_node(%struct.cgraph_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
