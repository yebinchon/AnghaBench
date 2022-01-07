; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_set_designator.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_set_designator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@constructor_type = common dso_local global i64 0, align 8
@designator_erroneous = common dso_local global i64 0, align 8
@designator_depth = common dso_local global i32 0, align 4
@constructor_range_stack = common dso_local global i32 0, align 4
@constructor_stack = common dso_local global %struct.TYPE_2__* null, align 8
@constructor_designated = common dso_local global i32 0, align 4
@constructor_fields = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"array index in non-array initializer\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"field name not in record or union initializer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @set_designator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_designator(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i64, i64* @constructor_type, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %74

9:                                                ; preds = %1
  %10 = load i64, i64* @designator_erroneous, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %74

13:                                               ; preds = %9
  %14 = load i32, i32* @designator_depth, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* @constructor_range_stack, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @gcc_assert(i32 %20)
  br label %22

22:                                               ; preds = %27, %16
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @constructor_stack, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = call i32 @pop_init_level(i32 1)
  %29 = call i32 @process_init_element(i32 %28)
  br label %22

30:                                               ; preds = %22
  store i32 1, i32* @constructor_designated, align 4
  store i32 0, i32* %2, align 4
  br label %74

31:                                               ; preds = %13
  %32 = load i64, i64* @constructor_type, align 8
  %33 = call i32 @TREE_CODE(i64 %32)
  switch i32 %33, label %48 [
    i32 129, label %34
    i32 128, label %34
    i32 130, label %44
  ]

34:                                               ; preds = %31, %31
  %35 = load i64, i64* @constructor_fields, align 8
  %36 = call i64 @TREE_TYPE(i64 %35)
  store i64 %36, i64* %4, align 8
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* @error_mark_node, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i64, i64* %4, align 8
  %42 = call i64 @TYPE_MAIN_VARIANT(i64 %41)
  store i64 %42, i64* %4, align 8
  br label %43

43:                                               ; preds = %40, %34
  br label %50

44:                                               ; preds = %31
  %45 = load i64, i64* @constructor_type, align 8
  %46 = call i64 @TREE_TYPE(i64 %45)
  %47 = call i64 @TYPE_MAIN_VARIANT(i64 %46)
  store i64 %47, i64* %4, align 8
  br label %50

48:                                               ; preds = %31
  %49 = call i32 (...) @gcc_unreachable()
  br label %50

50:                                               ; preds = %48, %44, %43
  %51 = load i64, i64* %4, align 8
  %52 = call i32 @TREE_CODE(i64 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %3, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 130
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = call i32 @error_init(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %74

60:                                               ; preds = %55, %50
  %61 = load i32, i32* %3, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 129
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 128
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = call i32 @error_init(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %74

71:                                               ; preds = %66, %63, %60
  br label %72

72:                                               ; preds = %71
  store i32 1, i32* @constructor_designated, align 4
  %73 = call i32 @push_init_level(i32 2)
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %72, %69, %58, %30, %12, %8
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @process_init_element(i32) #1

declare dso_local i32 @pop_init_level(i32) #1

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TYPE_MAIN_VARIANT(i64) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @error_init(i8*) #1

declare dso_local i32 @push_init_level(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
