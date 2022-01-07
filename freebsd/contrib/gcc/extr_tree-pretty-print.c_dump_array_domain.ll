; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-pretty-print.c_dump_array_domain.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-pretty-print.c_dump_array_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32, i32)* @dump_array_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_array_domain(i32* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @pp_character(i32* %11, i8 signext 91)
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %61

15:                                               ; preds = %4
  %16 = load i64, i64* %6, align 8
  %17 = call i64 @TYPE_MIN_VALUE(i64 %16)
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i64 @TYPE_MAX_VALUE(i64 %18)
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %15
  %23 = load i64, i64* %10, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %22
  %26 = load i64, i64* %9, align 8
  %27 = call i64 @integer_zerop(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  %30 = load i64, i64* %10, align 8
  %31 = call i64 @host_integerp(i64 %30, i32 0)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i32*, i32** %5, align 8
  %35 = load i64, i64* %10, align 8
  %36 = call i64 @TREE_INT_CST_LOW(i64 %35)
  %37 = add nsw i64 %36, 1
  %38 = call i32 @pp_wide_integer(i32* %34, i64 %37)
  br label %60

39:                                               ; preds = %29, %25, %22, %15
  %40 = load i64, i64* %9, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i32*, i32** %5, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @dump_generic_node(i32* %43, i64 %44, i32 %45, i32 %46, i32 0)
  br label %48

48:                                               ; preds = %42, %39
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @pp_character(i32* %49, i8 signext 58)
  %51 = load i64, i64* %10, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load i32*, i32** %5, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @dump_generic_node(i32* %54, i64 %55, i32 %56, i32 %57, i32 0)
  br label %59

59:                                               ; preds = %53, %48
  br label %60

60:                                               ; preds = %59, %33
  br label %64

61:                                               ; preds = %4
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @pp_string(i32* %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %60
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @pp_character(i32* %65, i8 signext 93)
  ret void
}

declare dso_local i32 @pp_character(i32*, i8 signext) #1

declare dso_local i64 @TYPE_MIN_VALUE(i64) #1

declare dso_local i64 @TYPE_MAX_VALUE(i64) #1

declare dso_local i64 @integer_zerop(i64) #1

declare dso_local i64 @host_integerp(i64, i32) #1

declare dso_local i32 @pp_wide_integer(i32*, i64) #1

declare dso_local i64 @TREE_INT_CST_LOW(i64) #1

declare dso_local i32 @dump_generic_node(i32*, i64, i32, i32, i32) #1

declare dso_local i32 @pp_string(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
