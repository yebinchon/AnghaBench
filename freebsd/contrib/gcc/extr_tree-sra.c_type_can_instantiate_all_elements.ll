; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-sra.c_type_can_instantiate_all_elements.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-sra.c_type_can_instantiate_all_elements.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sra_type_inst_cache = common dso_local global i32 0, align 4
@FIELD_DECL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @type_can_instantiate_all_elements to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @type_can_instantiate_all_elements(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @is_sra_scalar_type(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %74

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @sra_type_can_be_decomposed_p(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %74

15:                                               ; preds = %10
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @TREE_CODE(i32 %16)
  switch i32 %17, label %72 [
    i32 128, label %18
    i32 130, label %67
    i32 129, label %71
  ]

18:                                               ; preds = %15
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @TYPE_MAIN_VARIANT(i32 %19)
  %21 = call i32 @TYPE_UID(i32 %20)
  %22 = mul nsw i32 %21, 2
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* @sra_type_inst_cache, align 4
  %24 = load i32, i32* %4, align 4
  %25 = add i32 %24, 0
  %26 = call i32 @bitmap_bit_p(i32 %23, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %74

29:                                               ; preds = %18
  %30 = load i32, i32* @sra_type_inst_cache, align 4
  %31 = load i32, i32* %4, align 4
  %32 = add i32 %31, 1
  %33 = call i32 @bitmap_bit_p(i32 %30, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %74

36:                                               ; preds = %29
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @TYPE_FIELDS(i32 %37)
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %59, %36
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %62

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @TREE_CODE(i32 %43)
  %45 = load i32, i32* @FIELD_DECL, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %42
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @TREE_TYPE(i32 %48)
  %50 = call i32 @type_can_instantiate_all_elements(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @sra_type_inst_cache, align 4
  %54 = load i32, i32* %4, align 4
  %55 = add i32 %54, 1
  %56 = call i32 @bitmap_set_bit(i32 %53, i32 %55)
  store i32 0, i32* %2, align 4
  br label %74

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57, %42
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @TREE_CHAIN(i32 %60)
  store i32 %61, i32* %5, align 4
  br label %39

62:                                               ; preds = %39
  %63 = load i32, i32* @sra_type_inst_cache, align 4
  %64 = load i32, i32* %4, align 4
  %65 = add i32 %64, 0
  %66 = call i32 @bitmap_set_bit(i32 %63, i32 %65)
  store i32 1, i32* %2, align 4
  br label %74

67:                                               ; preds = %15
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @TREE_TYPE(i32 %68)
  %70 = call i32 @type_can_instantiate_all_elements(i32 %69)
  store i32 %70, i32* %2, align 4
  br label %74

71:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %74

72:                                               ; preds = %15
  %73 = call i32 (...) @gcc_unreachable()
  br label %74

74:                                               ; preds = %9, %14, %28, %35, %52, %62, %67, %71, %72
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i64 @is_sra_scalar_type(i32) #1

declare dso_local i32 @sra_type_can_be_decomposed_p(i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TYPE_UID(i32) #1

declare dso_local i32 @TYPE_MAIN_VARIANT(i32) #1

declare dso_local i32 @bitmap_bit_p(i32, i32) #1

declare dso_local i32 @TYPE_FIELDS(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @bitmap_set_bit(i32, i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
