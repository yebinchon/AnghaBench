; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraph.c_cgraph_function_body_availability.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraph.c_cgraph_function_body_availability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i32)* }
%struct.cgraph_node = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i64 }

@cgraph_function_flags_ready = common dso_local global i32 0, align 4
@AVAIL_NOT_AVAILABLE = common dso_local global i32 0, align 4
@AVAIL_LOCAL = common dso_local global i32 0, align 4
@AVAIL_AVAILABLE = common dso_local global i32 0, align 4
@targetm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@AVAIL_OVERWRITABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cgraph_function_body_availability(%struct.cgraph_node* %0) #0 {
  %2 = alloca %struct.cgraph_node*, align 8
  %3 = alloca i32, align 4
  store %struct.cgraph_node* %0, %struct.cgraph_node** %2, align 8
  %4 = load i32, i32* @cgraph_function_flags_ready, align 4
  %5 = call i32 @gcc_assert(i32 %4)
  %6 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %7 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @AVAIL_NOT_AVAILABLE, align 4
  store i32 %11, i32* %3, align 4
  br label %54

12:                                               ; preds = %1
  %13 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %14 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* @AVAIL_LOCAL, align 4
  store i32 %19, i32* %3, align 4
  br label %53

20:                                               ; preds = %12
  %21 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %22 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @AVAIL_AVAILABLE, align 4
  store i32 %27, i32* %3, align 4
  br label %52

28:                                               ; preds = %20
  %29 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 0), align 8
  %30 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %31 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 %29(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %28
  %36 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %37 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @DECL_COMDAT(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %35
  %42 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %43 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @DECL_EXTERNAL(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @AVAIL_OVERWRITABLE, align 4
  store i32 %48, i32* %3, align 4
  br label %51

49:                                               ; preds = %41, %35, %28
  %50 = load i32, i32* @AVAIL_AVAILABLE, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %47
  br label %52

52:                                               ; preds = %51, %26
  br label %53

53:                                               ; preds = %52, %18
  br label %54

54:                                               ; preds = %53, %10
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @DECL_COMDAT(i32) #1

declare dso_local i32 @DECL_EXTERNAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
