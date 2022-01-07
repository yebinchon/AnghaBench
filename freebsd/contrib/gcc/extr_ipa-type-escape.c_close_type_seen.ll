; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-type-escape.c_close_type_seen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-type-escape.c_close_type_seen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@been_there_done_that = common dso_local global i32 0, align 4
@FIELD_DECL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @close_type_seen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_type_seen(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %11 = load i64, i64* %2, align 8
  %12 = call i64 @get_canon_type(i64 %11, i32 1, i32 1)
  store i64 %12, i64* %2, align 8
  %13 = load i64, i64* %2, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %81

16:                                               ; preds = %1
  %17 = load i64, i64* %2, align 8
  %18 = call i32 @TYPE_UID(i64 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @been_there_done_that, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @bitmap_bit_p(i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %81

24:                                               ; preds = %16
  %25 = load i32, i32* @been_there_done_that, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @bitmap_set_bit(i32 %25, i32 %26)
  %28 = load i64, i64* %2, align 8
  %29 = call i64 @TYPE_BINFO(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %24
  %32 = load i64, i64* %2, align 8
  %33 = call i64 @TYPE_BINFO(i64 %32)
  store i64 %33, i64* %6, align 8
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %52, %31
  %35 = load i64, i64* %6, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load i64, i64* %7, align 8
  %38 = call i64 @BINFO_BASE_ITERATE(i64 %35, i32 %36, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %34
  %41 = load i64, i64* %7, align 8
  %42 = call i64 @BINFO_TYPE(i64 %41)
  store i64 %42, i64* %8, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i64 @TYPE_MAIN_VARIANT(i64 %43)
  %45 = call i32 @TYPE_UID(i64 %44)
  %46 = call i32 @subtype_map_for_uid(i32 %45, i32 1)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @bitmap_set_bit(i32 %47, i32 %48)
  %50 = load i64, i64* %8, align 8
  %51 = call i64 @get_canon_type(i64 %50, i32 1, i32 1)
  call void @close_type_seen(i64 %51)
  br label %52

52:                                               ; preds = %40
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %34

55:                                               ; preds = %34
  br label %56

56:                                               ; preds = %55, %24
  %57 = load i64, i64* %2, align 8
  %58 = call i64 @TYPE_FIELDS(i64 %57)
  store i64 %58, i64* %3, align 8
  br label %59

59:                                               ; preds = %78, %56
  %60 = load i64, i64* %3, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %81

62:                                               ; preds = %59
  %63 = load i64, i64* %3, align 8
  %64 = call i64 @TREE_CODE(i64 %63)
  %65 = load i64, i64* @FIELD_DECL, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %78

68:                                               ; preds = %62
  %69 = load i64, i64* %3, align 8
  %70 = call i64 @TREE_TYPE(i64 %69)
  store i64 %70, i64* %10, align 8
  %71 = load i64, i64* %10, align 8
  %72 = call i64 @ipa_type_escape_star_count_of_interesting_or_array_type(i64 %71)
  %73 = icmp sge i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i64, i64* %10, align 8
  %76 = call i64 @get_canon_type(i64 %75, i32 1, i32 1)
  call void @close_type_seen(i64 %76)
  br label %77

77:                                               ; preds = %74, %68
  br label %78

78:                                               ; preds = %77, %67
  %79 = load i64, i64* %3, align 8
  %80 = call i64 @TREE_CHAIN(i64 %79)
  store i64 %80, i64* %3, align 8
  br label %59

81:                                               ; preds = %15, %23, %59
  ret void
}

declare dso_local i64 @get_canon_type(i64, i32, i32) #1

declare dso_local i32 @TYPE_UID(i64) #1

declare dso_local i64 @bitmap_bit_p(i32, i32) #1

declare dso_local i32 @bitmap_set_bit(i32, i32) #1

declare dso_local i64 @TYPE_BINFO(i64) #1

declare dso_local i64 @BINFO_BASE_ITERATE(i64, i32, i64) #1

declare dso_local i64 @BINFO_TYPE(i64) #1

declare dso_local i32 @subtype_map_for_uid(i32, i32) #1

declare dso_local i64 @TYPE_MAIN_VARIANT(i64) #1

declare dso_local i64 @TYPE_FIELDS(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @ipa_type_escape_star_count_of_interesting_or_array_type(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
