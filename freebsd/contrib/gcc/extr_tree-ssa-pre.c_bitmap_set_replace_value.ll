; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-pre.c_bitmap_set_replace_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-pre.c_bitmap_set_replace_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_8__* }

@SSA_NAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32, i32)* @bitmap_set_replace_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bitmap_set_replace_value(%struct.TYPE_9__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @is_gimple_min_invariant(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %66

13:                                               ; preds = %3
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @bitmap_set_contains_value(%struct.TYPE_9__* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %66

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.TYPE_7__* @VALUE_HANDLE_EXPR_SET(i32 %20)
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %7, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %8, align 8
  br label %25

25:                                               ; preds = %62, %19
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %27 = icmp ne %struct.TYPE_8__* %26, null
  br i1 %27, label %28, label %66

28:                                               ; preds = %25
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @TREE_CODE(i32 %31)
  %33 = load i64, i64* @SSA_NAME, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %61

35:                                               ; preds = %28
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @SSA_NAME_VERSION(i32 %41)
  %43 = call i64 @bitmap_bit_p(i32 %38, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %35
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @SSA_NAME_VERSION(i32 %51)
  %53 = call i32 @bitmap_clear_bit(i32 %48, i32 %52)
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @SSA_NAME_VERSION(i32 %57)
  %59 = call i32 @bitmap_set_bit(i32 %56, i32 %58)
  br label %66

60:                                               ; preds = %35
  br label %61

61:                                               ; preds = %60, %28
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  store %struct.TYPE_8__* %65, %struct.TYPE_8__** %8, align 8
  br label %25

66:                                               ; preds = %12, %18, %45, %25
  ret void
}

declare dso_local i64 @is_gimple_min_invariant(i32) #1

declare dso_local i32 @bitmap_set_contains_value(%struct.TYPE_9__*, i32) #1

declare dso_local %struct.TYPE_7__* @VALUE_HANDLE_EXPR_SET(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @bitmap_bit_p(i32, i32) #1

declare dso_local i32 @SSA_NAME_VERSION(i32) #1

declare dso_local i32 @bitmap_clear_bit(i32, i32) #1

declare dso_local i32 @bitmap_set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
