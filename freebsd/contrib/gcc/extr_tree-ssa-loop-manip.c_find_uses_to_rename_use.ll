; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-manip.c_find_uses_to_rename_use.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-manip.c_find_uses_to_rename_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.loop* }
%struct.loop = type { i32 }

@SSA_NAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i64*, i64)* @find_uses_to_rename_use to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_uses_to_rename_use(%struct.TYPE_4__* %0, i32 %1, i64* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.loop*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @TREE_CODE(i32 %12)
  %14 = load i64, i64* @SSA_NAME, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %66

17:                                               ; preds = %4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @is_gimple_reg(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  br label %66

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @SSA_NAME_VERSION(i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @SSA_NAME_DEF_STMT(i32 %25)
  %27 = call %struct.TYPE_4__* @bb_for_stmt(i32 %26)
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %10, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %29 = icmp ne %struct.TYPE_4__* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  br label %66

31:                                               ; preds = %22
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load %struct.loop*, %struct.loop** %33, align 8
  store %struct.loop* %34, %struct.loop** %11, align 8
  %35 = load %struct.loop*, %struct.loop** %11, align 8
  %36 = getelementptr inbounds %struct.loop, %struct.loop* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  br label %66

40:                                               ; preds = %31
  %41 = load i64*, i64** %7, align 8
  %42 = load i32, i32* %9, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %40
  %48 = call i64 @BITMAP_ALLOC(i32* null)
  %49 = load i64*, i64** %7, align 8
  %50 = load i32, i32* %9, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  store i64 %48, i64* %52, align 8
  br label %53

53:                                               ; preds = %47, %40
  %54 = load i64*, i64** %7, align 8
  %55 = load i32, i32* %9, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @bitmap_set_bit(i64 %58, i32 %61)
  %63 = load i64, i64* %8, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @bitmap_set_bit(i64 %63, i32 %64)
  br label %66

66:                                               ; preds = %53, %39, %30, %21, %16
  ret void
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @is_gimple_reg(i32) #1

declare dso_local i32 @SSA_NAME_VERSION(i32) #1

declare dso_local %struct.TYPE_4__* @bb_for_stmt(i32) #1

declare dso_local i32 @SSA_NAME_DEF_STMT(i32) #1

declare dso_local i64 @BITMAP_ALLOC(i32*) #1

declare dso_local i32 @bitmap_set_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
