; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_perform_direct_initialization_if_possible.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_perform_direct_initialization_if_possible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@error_mark_node = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@complete_ctor_identifier = common dso_local global i32 0, align 4
@LOOKUP_NORMAL = common dso_local global i32 0, align 4
@conversion_obstack = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @perform_direct_initialization_if_possible(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i8*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @error_mark_node, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = call i64 @error_operand_p(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13, %3
  %18 = load i64, i64* @error_mark_node, align 8
  store i64 %18, i64* %4, align 8
  br label %63

19:                                               ; preds = %13
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @CLASS_TYPE_P(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load i64, i64* @NULL_TREE, align 8
  %25 = load i32, i32* @complete_ctor_identifier, align 4
  %26 = load i64, i64* @NULL_TREE, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @build_tree_list(i64 %26, i64 %27)
  %29 = load i64, i64* %5, align 8
  %30 = load i32, i32* @LOOKUP_NORMAL, align 4
  %31 = call i64 @build_special_member_call(i64 %24, i32 %25, i32 %28, i64 %29, i32 %30)
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i64 @build_cplus_new(i64 %32, i64 %33)
  store i64 %34, i64* %4, align 8
  br label %63

35:                                               ; preds = %19
  %36 = call i8* @conversion_obstack_alloc(i32 0)
  store i8* %36, i8** %9, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @TREE_TYPE(i64 %38)
  %40 = load i64, i64* %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @LOOKUP_NORMAL, align 4
  %43 = call %struct.TYPE_4__* @implicit_conversion(i64 %37, i32 %39, i64 %40, i32 %41, i32 %42)
  store %struct.TYPE_4__* %43, %struct.TYPE_4__** %8, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %45 = icmp ne %struct.TYPE_4__* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %35
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46, %35
  %52 = load i64, i64* @NULL_TREE, align 8
  store i64 %52, i64* %6, align 8
  br label %59

53:                                               ; preds = %46
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* @NULL_TREE, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i64 @convert_like_real(%struct.TYPE_4__* %54, i64 %55, i64 %56, i32 0, i32 0, i32 0, i32 %57)
  store i64 %58, i64* %6, align 8
  br label %59

59:                                               ; preds = %53, %51
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 @obstack_free(i32* @conversion_obstack, i8* %60)
  %62 = load i64, i64* %6, align 8
  store i64 %62, i64* %4, align 8
  br label %63

63:                                               ; preds = %59, %23, %17
  %64 = load i64, i64* %4, align 8
  ret i64 %64
}

declare dso_local i64 @error_operand_p(i64) #1

declare dso_local i64 @CLASS_TYPE_P(i64) #1

declare dso_local i64 @build_special_member_call(i64, i32, i32, i64, i32) #1

declare dso_local i32 @build_tree_list(i64, i64) #1

declare dso_local i64 @build_cplus_new(i64, i64) #1

declare dso_local i8* @conversion_obstack_alloc(i32) #1

declare dso_local %struct.TYPE_4__* @implicit_conversion(i64, i32, i64, i32, i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @convert_like_real(%struct.TYPE_4__*, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @obstack_free(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
