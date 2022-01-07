; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_c_common_signed_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_c_common_signed_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@unsigned_char_type_node = common dso_local global i64 0, align 8
@char_type_node = common dso_local global i64 0, align 8
@signed_char_type_node = common dso_local global i64 0, align 8
@unsigned_type_node = common dso_local global i64 0, align 8
@integer_type_node = common dso_local global i64 0, align 8
@short_unsigned_type_node = common dso_local global i64 0, align 8
@short_integer_type_node = common dso_local global i64 0, align 8
@long_unsigned_type_node = common dso_local global i64 0, align 8
@long_integer_type_node = common dso_local global i64 0, align 8
@long_long_unsigned_type_node = common dso_local global i64 0, align 8
@long_long_integer_type_node = common dso_local global i64 0, align 8
@widest_unsigned_literal_type_node = common dso_local global i64 0, align 8
@widest_integer_literal_type_node = common dso_local global i64 0, align 8
@unsigned_intDI_type_node = common dso_local global i64 0, align 8
@intDI_type_node = common dso_local global i64 0, align 8
@unsigned_intSI_type_node = common dso_local global i64 0, align 8
@intSI_type_node = common dso_local global i64 0, align 8
@unsigned_intHI_type_node = common dso_local global i64 0, align 8
@intHI_type_node = common dso_local global i64 0, align 8
@unsigned_intQI_type_node = common dso_local global i64 0, align 8
@intQI_type_node = common dso_local global i64 0, align 8
@intTI_type_node = common dso_local global i64 0, align 8
@unsigned_intTI_type_node = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @c_common_signed_type(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i64 @TYPE_MAIN_VARIANT(i64 %5)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @unsigned_char_type_node, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @char_type_node, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %1
  %15 = load i64, i64* @signed_char_type_node, align 8
  store i64 %15, i64* %2, align 8
  br label %73

16:                                               ; preds = %10
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @unsigned_type_node, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i64, i64* @integer_type_node, align 8
  store i64 %21, i64* %2, align 8
  br label %73

22:                                               ; preds = %16
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @short_unsigned_type_node, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i64, i64* @short_integer_type_node, align 8
  store i64 %27, i64* %2, align 8
  br label %73

28:                                               ; preds = %22
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* @long_unsigned_type_node, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i64, i64* @long_integer_type_node, align 8
  store i64 %33, i64* %2, align 8
  br label %73

34:                                               ; preds = %28
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* @long_long_unsigned_type_node, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i64, i64* @long_long_integer_type_node, align 8
  store i64 %39, i64* %2, align 8
  br label %73

40:                                               ; preds = %34
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* @widest_unsigned_literal_type_node, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i64, i64* @widest_integer_literal_type_node, align 8
  store i64 %45, i64* %2, align 8
  br label %73

46:                                               ; preds = %40
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* @unsigned_intDI_type_node, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i64, i64* @intDI_type_node, align 8
  store i64 %51, i64* %2, align 8
  br label %73

52:                                               ; preds = %46
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* @unsigned_intSI_type_node, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i64, i64* @intSI_type_node, align 8
  store i64 %57, i64* %2, align 8
  br label %73

58:                                               ; preds = %52
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* @unsigned_intHI_type_node, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i64, i64* @intHI_type_node, align 8
  store i64 %63, i64* %2, align 8
  br label %73

64:                                               ; preds = %58
  %65 = load i64, i64* %4, align 8
  %66 = load i64, i64* @unsigned_intQI_type_node, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i64, i64* @intQI_type_node, align 8
  store i64 %69, i64* %2, align 8
  br label %73

70:                                               ; preds = %64
  %71 = load i64, i64* %3, align 8
  %72 = call i64 @c_common_signed_or_unsigned_type(i32 0, i64 %71)
  store i64 %72, i64* %2, align 8
  br label %73

73:                                               ; preds = %70, %68, %62, %56, %50, %44, %38, %32, %26, %20, %14
  %74 = load i64, i64* %2, align 8
  ret i64 %74
}

declare dso_local i64 @TYPE_MAIN_VARIANT(i64) #1

declare dso_local i64 @c_common_signed_or_unsigned_type(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
