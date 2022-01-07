; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-if-conv.c_process_phi_nodes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-if-conv.c_process_phi_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.loop = type { i32, %struct.TYPE_8__* }

@ifc_bbs = common dso_local global %struct.TYPE_8__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.loop*)* @process_phi_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_phi_nodes(%struct.loop* %0) #0 {
  %2 = alloca %struct.loop*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i64, align 8
  store %struct.loop* %0, %struct.loop** %2, align 8
  %11 = load %struct.loop*, %struct.loop** %2, align 8
  %12 = getelementptr inbounds %struct.loop, %struct.loop* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %14

14:                                               ; preds = %58, %1
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %61

18:                                               ; preds = %14
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %9, align 8
  %19 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @ifc_bbs, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %19, i64 %21
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %3, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = load %struct.loop*, %struct.loop** %2, align 8
  %26 = getelementptr inbounds %struct.loop, %struct.loop* %25, i32 0, i32 1
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = icmp eq %struct.TYPE_8__* %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %58

30:                                               ; preds = %18
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = call i64 @phi_nodes(%struct.TYPE_8__* %31)
  store i64 %32, i64* %6, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = call i32 @bsi_after_labels(%struct.TYPE_8__* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i64, i64* %6, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load %struct.loop*, %struct.loop** %2, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = call %struct.TYPE_8__* @find_phi_replacement_condition(%struct.loop* %38, %struct.TYPE_8__* %39, i64* %7, i32* %8)
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %9, align 8
  br label %41

41:                                               ; preds = %37, %30
  br label %42

42:                                               ; preds = %45, %41
  %43 = load i64, i64* %6, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load i64, i64* %6, align 8
  %47 = call i64 @PHI_CHAIN(i64 %46)
  store i64 %47, i64* %10, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %51 = call i32 @replace_phi_with_cond_modify_expr(i64 %48, i64 %49, %struct.TYPE_8__* %50, i32* %8)
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @release_phi_node(i64 %52)
  %54 = load i64, i64* %10, align 8
  store i64 %54, i64* %6, align 8
  br label %42

55:                                               ; preds = %42
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  store i32* null, i32** %57, align 8
  br label %58

58:                                               ; preds = %55, %29
  %59 = load i32, i32* %5, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %14

61:                                               ; preds = %14
  ret void
}

declare dso_local i64 @phi_nodes(%struct.TYPE_8__*) #1

declare dso_local i32 @bsi_after_labels(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @find_phi_replacement_condition(%struct.loop*, %struct.TYPE_8__*, i64*, i32*) #1

declare dso_local i64 @PHI_CHAIN(i64) #1

declare dso_local i32 @replace_phi_with_cond_modify_expr(i64, i64, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @release_phi_node(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
