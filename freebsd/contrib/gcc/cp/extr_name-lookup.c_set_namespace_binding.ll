; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_set_namespace_binding.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_set_namespace_binding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@TV_NAME_LOOKUP = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i64 0, align 8
@global_namespace = common dso_local global i64 0, align 8
@OVERLOAD = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_namespace_binding(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* @TV_NAME_LOOKUP, align 4
  %9 = call i32 @timevar_push(i32 %8)
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @NULL_TREE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i64, i64* @global_namespace, align 8
  store i64 %14, i64* %5, align 8
  br label %15

15:                                               ; preds = %13, %3
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @NAMESPACE_LEVEL(i64 %16)
  %18 = load i64, i64* %4, align 8
  %19 = call %struct.TYPE_4__* @binding_for_name(i32 %17, i64 %18)
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %7, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %15
  %25 = load i64, i64* %6, align 8
  %26 = call i64 @TREE_CODE(i64 %25)
  %27 = load i64, i64* @OVERLOAD, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @error_mark_node, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29, %24, %15
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %41

37:                                               ; preds = %29
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @supplement_binding(%struct.TYPE_4__* %38, i64 %39)
  br label %41

41:                                               ; preds = %37, %33
  %42 = load i32, i32* @TV_NAME_LOOKUP, align 4
  %43 = call i32 @timevar_pop(i32 %42)
  ret void
}

declare dso_local i32 @timevar_push(i32) #1

declare dso_local %struct.TYPE_4__* @binding_for_name(i32, i64) #1

declare dso_local i32 @NAMESPACE_LEVEL(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @supplement_binding(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @timevar_pop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
