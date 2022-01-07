; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraph.c_cgraph_master_clone.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraph.c_cgraph_master_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { %struct.cgraph_node*, i32 }

@AVAIL_NOT_AVAILABLE = common dso_local global i32 0, align 4
@AVAIL_OVERWRITABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cgraph_node* @cgraph_master_clone(%struct.cgraph_node* %0) #0 {
  %2 = alloca %struct.cgraph_node*, align 8
  %3 = alloca %struct.cgraph_node*, align 8
  %4 = alloca i32, align 4
  store %struct.cgraph_node* %0, %struct.cgraph_node** %3, align 8
  %5 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %6 = call i32 @cgraph_function_body_availability(%struct.cgraph_node* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @AVAIL_NOT_AVAILABLE, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @AVAIL_OVERWRITABLE, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %1
  store %struct.cgraph_node* null, %struct.cgraph_node** %2, align 8
  br label %31

15:                                               ; preds = %10
  %16 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %17 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %16, i32 0, i32 0
  %18 = load %struct.cgraph_node*, %struct.cgraph_node** %17, align 8
  %19 = icmp ne %struct.cgraph_node* %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %15
  %21 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %22 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.cgraph_node* @cgraph_node(i32 %23)
  %25 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %26 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %25, i32 0, i32 0
  store %struct.cgraph_node* %24, %struct.cgraph_node** %26, align 8
  br label %27

27:                                               ; preds = %20, %15
  %28 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %29 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %28, i32 0, i32 0
  %30 = load %struct.cgraph_node*, %struct.cgraph_node** %29, align 8
  store %struct.cgraph_node* %30, %struct.cgraph_node** %2, align 8
  br label %31

31:                                               ; preds = %27, %14
  %32 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  ret %struct.cgraph_node* %32
}

declare dso_local i32 @cgraph_function_body_availability(%struct.cgraph_node*) #1

declare dso_local %struct.cgraph_node* @cgraph_node(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
