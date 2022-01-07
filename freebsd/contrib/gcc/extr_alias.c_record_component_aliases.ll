; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_alias.c_record_component_aliases.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_alias.c_record_component_aliases.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIELD_DECL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @record_component_aliases(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i64 @get_alias_set(i32 %8)
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %83

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @TREE_CODE(i32 %14)
  switch i32 %15, label %82 [
    i32 132, label %16
    i32 129, label %27
    i32 128, label %27
    i32 130, label %27
    i32 131, label %76
  ]

16:                                               ; preds = %13
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @TYPE_NONALIASED_COMPONENT(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = load i64, i64* %3, align 8
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @TREE_TYPE(i32 %22)
  %24 = call i64 @get_alias_set(i32 %23)
  %25 = call i32 @record_alias_subset(i64 %21, i64 %24)
  br label %26

26:                                               ; preds = %20, %16
  br label %83

27:                                               ; preds = %13, %13, %13
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @TYPE_BINFO(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %27
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @TYPE_BINFO(i32 %32)
  store i32 %33, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %46, %31
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @BINFO_BASE_ITERATE(i32 %35, i32 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load i64, i64* %3, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @BINFO_TYPE(i32 %42)
  %44 = call i64 @get_alias_set(i32 %43)
  %45 = call i32 @record_alias_subset(i64 %41, i64 %44)
  br label %46

46:                                               ; preds = %40
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %34

49:                                               ; preds = %34
  br label %50

50:                                               ; preds = %49, %27
  %51 = load i32, i32* %2, align 4
  %52 = call i32 @TYPE_FIELDS(i32 %51)
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %72, %50
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %53
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @TREE_CODE(i32 %57)
  %59 = load i32, i32* @FIELD_DECL, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @DECL_NONADDRESSABLE_P(i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %61
  %66 = load i64, i64* %3, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @TREE_TYPE(i32 %67)
  %69 = call i64 @get_alias_set(i32 %68)
  %70 = call i32 @record_alias_subset(i64 %66, i64 %69)
  br label %71

71:                                               ; preds = %65, %61, %56
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @TREE_CHAIN(i32 %73)
  store i32 %74, i32* %4, align 4
  br label %53

75:                                               ; preds = %53
  br label %83

76:                                               ; preds = %13
  %77 = load i64, i64* %3, align 8
  %78 = load i32, i32* %2, align 4
  %79 = call i32 @TREE_TYPE(i32 %78)
  %80 = call i64 @get_alias_set(i32 %79)
  %81 = call i32 @record_alias_subset(i64 %77, i64 %80)
  br label %83

82:                                               ; preds = %13
  br label %83

83:                                               ; preds = %12, %82, %76, %75, %26
  ret void
}

declare dso_local i64 @get_alias_set(i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TYPE_NONALIASED_COMPONENT(i32) #1

declare dso_local i32 @record_alias_subset(i64, i64) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @TYPE_BINFO(i32) #1

declare dso_local i32 @BINFO_BASE_ITERATE(i32, i32, i32) #1

declare dso_local i32 @BINFO_TYPE(i32) #1

declare dso_local i32 @TYPE_FIELDS(i32) #1

declare dso_local i32 @DECL_NONADDRESSABLE_P(i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
