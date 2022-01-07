; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_loop_closed_phi_def.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_loop_closed_phi_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@NULL_TREE = common dso_local global i64 0, align 8
@SSA_NAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @loop_closed_phi_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @loop_closed_phi_def(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.loop*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @NULL_TREE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @TREE_CODE(i64 %11)
  %13 = load i64, i64* @SSA_NAME, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %10, %1
  %16 = load i64, i64* @NULL_TREE, align 8
  store i64 %16, i64* %2, align 8
  br label %51

17:                                               ; preds = %10
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @SSA_NAME_DEF_STMT(i64 %18)
  %20 = call %struct.loop* @loop_containing_stmt(i32 %19)
  store %struct.loop* %20, %struct.loop** %4, align 8
  %21 = load %struct.loop*, %struct.loop** %4, align 8
  %22 = getelementptr inbounds %struct.loop, %struct.loop* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %5, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %17
  %27 = load i64, i64* @NULL_TREE, align 8
  store i64 %27, i64* %2, align 8
  br label %51

28:                                               ; preds = %17
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @phi_nodes(i32 %31)
  store i64 %32, i64* %6, align 8
  br label %33

33:                                               ; preds = %46, %28
  %34 = load i64, i64* %6, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = call i64 @PHI_ARG_DEF_FROM_EDGE(i64 %37, %struct.TYPE_3__* %38)
  %40 = load i64, i64* %3, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i64, i64* %6, align 8
  %44 = call i64 @PHI_RESULT(i64 %43)
  store i64 %44, i64* %2, align 8
  br label %51

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %6, align 8
  %48 = call i64 @PHI_CHAIN(i64 %47)
  store i64 %48, i64* %6, align 8
  br label %33

49:                                               ; preds = %33
  %50 = load i64, i64* @NULL_TREE, align 8
  store i64 %50, i64* %2, align 8
  br label %51

51:                                               ; preds = %49, %42, %26, %15
  %52 = load i64, i64* %2, align 8
  ret i64 %52
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local %struct.loop* @loop_containing_stmt(i32) #1

declare dso_local i32 @SSA_NAME_DEF_STMT(i64) #1

declare dso_local i64 @phi_nodes(i32) #1

declare dso_local i64 @PHI_ARG_DEF_FROM_EDGE(i64, %struct.TYPE_3__*) #1

declare dso_local i64 @PHI_RESULT(i64) #1

declare dso_local i64 @PHI_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
