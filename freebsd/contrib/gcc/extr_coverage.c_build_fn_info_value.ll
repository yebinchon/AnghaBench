; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_coverage.c_build_fn_info_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_coverage.c_build_fn_info_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.function_list = type { i32*, i32, i32 }

@NULL_TREE = common dso_local global i32 0, align 4
@GCOV_COUNTERS = common dso_local global i32 0, align 4
@prg_ctr_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.function_list*, i32)* @build_fn_info_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_fn_info_value(%struct.function_list* %0, i32 %1) #0 {
  %3 = alloca %struct.function_list*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.function_list* %0, %struct.function_list** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @NULL_TREE, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @TYPE_FIELDS(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @NULL_TREE, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 (...) @get_gcov_unsigned_t()
  %16 = load %struct.function_list*, %struct.function_list** %3, align 8
  %17 = getelementptr inbounds %struct.function_list, %struct.function_list* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @build_int_cstu(i32 %15, i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @tree_cons(i32 %14, i32 %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @TREE_CHAIN(i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 (...) @get_gcov_unsigned_t()
  %26 = load %struct.function_list*, %struct.function_list** %3, align 8
  %27 = getelementptr inbounds %struct.function_list, %struct.function_list* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @build_int_cstu(i32 %25, i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @tree_cons(i32 %24, i32 %29, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @TREE_CHAIN(i32 %32)
  store i32 %33, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %59, %2
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @GCOV_COUNTERS, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %62

38:                                               ; preds = %34
  %39 = load i32, i32* @prg_ctr_mask, align 4
  %40 = load i32, i32* %7, align 4
  %41 = shl i32 1, %40
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %38
  %45 = call i32 (...) @get_gcov_unsigned_t()
  %46 = load %struct.function_list*, %struct.function_list** %3, align 8
  %47 = getelementptr inbounds %struct.function_list, %struct.function_list* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @build_int_cstu(i32 %45, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* @NULL_TREE, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @tree_cons(i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %44, %38
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %7, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %34

62:                                               ; preds = %34
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @TREE_TYPE(i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @nreverse(i32 %65)
  %67 = call i32 @build_constructor_from_list(i32 %64, i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @tree_cons(i32 %68, i32 %69, i32 %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @nreverse(i32 %73)
  %75 = call i32 @build_constructor_from_list(i32 %72, i32 %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @TYPE_FIELDS(i32) #1

declare dso_local i32 @tree_cons(i32, i32, i32) #1

declare dso_local i32 @build_int_cstu(i32, i32) #1

declare dso_local i32 @get_gcov_unsigned_t(...) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i32 @build_constructor_from_list(i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @nreverse(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
