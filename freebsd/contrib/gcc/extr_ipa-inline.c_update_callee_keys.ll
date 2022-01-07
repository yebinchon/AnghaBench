; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-inline.c_update_callee_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-inline.c_update_callee_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { %struct.cgraph_edge*, %struct.TYPE_2__ }
%struct.cgraph_edge = type { %struct.cgraph_node*, i64, %struct.cgraph_edge* }
%struct.TYPE_2__ = type { i32 }

@INT_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.cgraph_node*, i32)* @update_callee_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_callee_keys(i32 %0, %struct.cgraph_node* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cgraph_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cgraph_edge*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.cgraph_node* %1, %struct.cgraph_node** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @INT_MIN, align 4
  %9 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %10 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 8
  %12 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %13 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %12, i32 0, i32 0
  %14 = load %struct.cgraph_edge*, %struct.cgraph_edge** %13, align 8
  store %struct.cgraph_edge* %14, %struct.cgraph_edge** %7, align 8
  br label %15

15:                                               ; preds = %43, %3
  %16 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %17 = icmp ne %struct.cgraph_edge* %16, null
  br i1 %17, label %18, label %47

18:                                               ; preds = %15
  %19 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %20 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %26 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %25, i32 0, i32 0
  %27 = load %struct.cgraph_node*, %struct.cgraph_node** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @update_caller_keys(i32 %24, %struct.cgraph_node* %27, i32 %28)
  br label %42

30:                                               ; preds = %18
  %31 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %32 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %38 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %37, i32 0, i32 0
  %39 = load %struct.cgraph_node*, %struct.cgraph_node** %38, align 8
  %40 = load i32, i32* %6, align 4
  call void @update_callee_keys(i32 %36, %struct.cgraph_node* %39, i32 %40)
  br label %41

41:                                               ; preds = %35, %30
  br label %42

42:                                               ; preds = %41, %23
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %45 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %44, i32 0, i32 2
  %46 = load %struct.cgraph_edge*, %struct.cgraph_edge** %45, align 8
  store %struct.cgraph_edge* %46, %struct.cgraph_edge** %7, align 8
  br label %15

47:                                               ; preds = %15
  ret void
}

declare dso_local i32 @update_caller_keys(i32, %struct.cgraph_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
