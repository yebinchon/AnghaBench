; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-type-escape.c_close_type_exposed_parameter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-type-escape.c_close_type_exposed_parameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@been_there_done_that = common dso_local global i32 0, align 4
@FIELD_DECL = common dso_local global i64 0, align 8
@EXPOSED_PARAMETER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @close_type_exposed_parameter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_type_exposed_parameter(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @get_canon_type(i64 %6, i32 0, i32 0)
  store i64 %7, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %56

11:                                               ; preds = %1
  %12 = load i64, i64* %2, align 8
  %13 = call i32 @TYPE_UID(i64 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i64, i64* %2, align 8
  %15 = call i32 @POINTER_TYPE_P(i64 %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @gcc_assert(i32 %18)
  %20 = load i32, i32* @been_there_done_that, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @bitmap_bit_p(i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %11
  br label %56

25:                                               ; preds = %11
  %26 = load i32, i32* @been_there_done_that, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @bitmap_set_bit(i32 %26, i32 %27)
  %29 = load i64, i64* %2, align 8
  %30 = call i64 @TYPE_FIELDS(i64 %29)
  store i64 %30, i64* %3, align 8
  br label %31

31:                                               ; preds = %53, %25
  %32 = load i64, i64* %3, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %31
  %35 = load i64, i64* %3, align 8
  %36 = call i64 @TREE_CODE(i64 %35)
  %37 = load i64, i64* @FIELD_DECL, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %53

40:                                               ; preds = %34
  %41 = load i64, i64* %3, align 8
  %42 = call i64 @TREE_TYPE(i64 %41)
  %43 = call i64 @get_canon_type(i64 %42, i32 0, i32 0)
  store i64 %43, i64* %5, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load i32, i32* @EXPOSED_PARAMETER, align 4
  %46 = call i32 @mark_interesting_type(i64 %44, i32 %45)
  %47 = load i64, i64* %5, align 8
  %48 = call i64 @ipa_type_escape_star_count_of_interesting_type(i64 %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = load i64, i64* %5, align 8
  call void @close_type_exposed_parameter(i64 %51)
  br label %52

52:                                               ; preds = %50, %40
  br label %53

53:                                               ; preds = %52, %39
  %54 = load i64, i64* %3, align 8
  %55 = call i64 @TREE_CHAIN(i64 %54)
  store i64 %55, i64* %3, align 8
  br label %31

56:                                               ; preds = %10, %24, %31
  ret void
}

declare dso_local i64 @get_canon_type(i64, i32, i32) #1

declare dso_local i32 @TYPE_UID(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @POINTER_TYPE_P(i64) #1

declare dso_local i64 @bitmap_bit_p(i32, i32) #1

declare dso_local i32 @bitmap_set_bit(i32, i32) #1

declare dso_local i64 @TYPE_FIELDS(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @mark_interesting_type(i64, i32) #1

declare dso_local i64 @ipa_type_escape_star_count_of_interesting_type(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
