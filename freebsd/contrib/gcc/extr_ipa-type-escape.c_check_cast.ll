; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-type-escape.c_check_cast.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-type-escape.c_check_cast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FULL_ESCAPE = common dso_local global i32 0, align 4
@results_of_malloc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @check_cast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_cast(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i64 @TREE_TYPE(i64 %8)
  %10 = call i64 @get_canon_type(i64 %9, i32 0, i32 0)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @get_canon_type(i64 %11, i32 0, i32 0)
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load i64, i64* %3, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %3, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %15, %2
  br label %74

23:                                               ; preds = %18
  %24 = load i64, i64* %3, align 8
  %25 = call i64 @ipa_type_escape_star_count_of_interesting_type(i64 %24)
  %26 = icmp sge i64 %25, 0
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %6, align 4
  %28 = load i64, i64* %5, align 8
  %29 = call i64 @ipa_type_escape_star_count_of_interesting_type(i64 %28)
  %30 = icmp sge i64 %29, 0
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %66

34:                                               ; preds = %23
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = load i64, i64* %3, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @check_cast_type(i64 %38, i64 %39)
  switch i32 %40, label %49 [
    i32 129, label %41
    i32 128, label %41
    i32 131, label %41
    i32 130, label %42
  ]

41:                                               ; preds = %37, %37, %37
  br label %49

42:                                               ; preds = %37
  %43 = load i64, i64* %3, align 8
  %44 = load i32, i32* @FULL_ESCAPE, align 4
  %45 = call i32 @mark_type(i64 %43, i32 %44)
  %46 = load i64, i64* %5, align 8
  %47 = load i32, i32* @FULL_ESCAPE, align 4
  %48 = call i32 @mark_type(i64 %46, i32 %47)
  br label %49

49:                                               ; preds = %37, %42, %41
  br label %65

50:                                               ; preds = %34
  %51 = load i64, i64* %4, align 8
  %52 = call i64 @DECL_P(i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = load i32, i32* @results_of_malloc, align 4
  %56 = load i64, i64* %4, align 8
  %57 = call i32 @DECL_UID(i64 %56)
  %58 = call i32 @bitmap_bit_p(i32 %55, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %54
  %61 = load i64, i64* %3, align 8
  %62 = load i32, i32* @FULL_ESCAPE, align 4
  %63 = call i32 @mark_type(i64 %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %54, %50
  br label %65

65:                                               ; preds = %64, %49
  br label %74

66:                                               ; preds = %23
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i64, i64* %5, align 8
  %71 = load i32, i32* @FULL_ESCAPE, align 4
  %72 = call i32 @mark_type(i64 %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %66
  br label %74

74:                                               ; preds = %22, %73, %65
  ret void
}

declare dso_local i64 @get_canon_type(i64, i32, i32) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @ipa_type_escape_star_count_of_interesting_type(i64) #1

declare dso_local i32 @check_cast_type(i64, i64) #1

declare dso_local i32 @mark_type(i64, i32) #1

declare dso_local i64 @DECL_P(i64) #1

declare dso_local i32 @bitmap_bit_p(i32, i32) #1

declare dso_local i32 @DECL_UID(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
