; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_tree.c_maybe_dummy_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_tree.c_maybe_dummy_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_class_type = common dso_local global i64 0, align 8
@ba_unique = common dso_local global i32 0, align 4
@ba_quiet = common dso_local global i32 0, align 4
@current_class_ref = common dso_local global i64 0, align 8
@cur_block = common dso_local global i64 0, align 8
@this_identifier = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @maybe_dummy_object(i64 %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64* %1, i64** %4, align 8
  %9 = load i64, i64* @current_class_type, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load i64, i64* @current_class_type, align 8
  %13 = load i64, i64* %3, align 8
  %14 = load i32, i32* @ba_unique, align 4
  %15 = load i32, i32* @ba_quiet, align 4
  %16 = or i32 %14, %15
  %17 = call i64 @lookup_base(i64 %12, i64 %13, i32 %16, i32* null)
  store i64 %17, i64* %7, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load i64, i64* @current_class_type, align 8
  store i64 %20, i64* %6, align 8
  br label %25

21:                                               ; preds = %11, %2
  %22 = load i64, i64* %3, align 8
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %3, align 8
  %24 = call i64 @TYPE_BINFO(i64 %23)
  store i64 %24, i64* %7, align 8
  br label %25

25:                                               ; preds = %21, %19
  %26 = load i64*, i64** %4, align 8
  %27 = icmp ne i64* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i64, i64* %7, align 8
  %30 = load i64*, i64** %4, align 8
  store i64 %29, i64* %30, align 8
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i64, i64* @current_class_ref, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %31
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @current_class_type, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = load i64, i64* @current_class_ref, align 8
  %40 = call i32 @TREE_TYPE(i64 %39)
  %41 = call i32 @TYPE_MAIN_VARIANT(i32 %40)
  %42 = load i64, i64* @current_class_type, align 8
  %43 = call i64 @same_type_p(i32 %41, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i64, i64* @current_class_ref, align 8
  store i64 %46, i64* %5, align 8
  br label %67

47:                                               ; preds = %38, %34, %31
  %48 = load i64, i64* @cur_block, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %47
  %51 = load i32, i32* @this_identifier, align 4
  %52 = call i64 @lookup_name(i32 %51)
  store i64 %52, i64* %8, align 8
  %53 = load i64, i64* @current_class_ref, align 8
  %54 = icmp ne i64 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = sext i32 %56 to i64
  %58 = call i32 @gcc_assert(i64 %57)
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @gcc_assert(i64 %59)
  %61 = load i64, i64* %8, align 8
  %62 = call i64 @build_x_arrow(i64 %61)
  store i64 %62, i64* %5, align 8
  br label %66

63:                                               ; preds = %47
  %64 = load i64, i64* %6, align 8
  %65 = call i64 @build_dummy_object(i64 %64)
  store i64 %65, i64* %5, align 8
  br label %66

66:                                               ; preds = %63, %50
  br label %67

67:                                               ; preds = %66, %45
  %68 = load i64, i64* %5, align 8
  ret i64 %68
}

declare dso_local i64 @lookup_base(i64, i64, i32, i32*) #1

declare dso_local i64 @TYPE_BINFO(i64) #1

declare dso_local i64 @same_type_p(i32, i64) #1

declare dso_local i32 @TYPE_MAIN_VARIANT(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @lookup_name(i32) #1

declare dso_local i32 @gcc_assert(i64) #1

declare dso_local i64 @build_x_arrow(i64) #1

declare dso_local i64 @build_dummy_object(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
