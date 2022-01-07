; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_find_rr_leaf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_find_rr_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_node = type { %struct.rt6_info* }
%struct.rt6_info = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.rt6_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rt6_info* (%struct.fib6_node*, %struct.rt6_info*, i64, i32, i32, i32*)* @find_rr_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rt6_info* @find_rr_leaf(%struct.fib6_node* %0, %struct.rt6_info* %1, i64 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.fib6_node*, align 8
  %8 = alloca %struct.rt6_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.rt6_info*, align 8
  %14 = alloca %struct.rt6_info*, align 8
  %15 = alloca i32, align 4
  store %struct.fib6_node* %0, %struct.fib6_node** %7, align 8
  store %struct.rt6_info* %1, %struct.rt6_info** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  store i32 -1, i32* %15, align 4
  store %struct.rt6_info* null, %struct.rt6_info** %14, align 8
  %16 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  store %struct.rt6_info* %16, %struct.rt6_info** %13, align 8
  br label %17

17:                                               ; preds = %35, %6
  %18 = load %struct.rt6_info*, %struct.rt6_info** %13, align 8
  %19 = icmp ne %struct.rt6_info* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load %struct.rt6_info*, %struct.rt6_info** %13, align 8
  %22 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp eq i64 %23, %24
  br label %26

26:                                               ; preds = %20, %17
  %27 = phi i1 [ false, %17 ], [ %25, %20 ]
  br i1 %27, label %28, label %41

28:                                               ; preds = %26
  %29 = load %struct.rt6_info*, %struct.rt6_info** %13, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.rt6_info*, %struct.rt6_info** %14, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = call %struct.rt6_info* @find_match(%struct.rt6_info* %29, i32 %30, i32 %31, i32* %15, %struct.rt6_info* %32, i32* %33)
  store %struct.rt6_info* %34, %struct.rt6_info** %14, align 8
  br label %35

35:                                               ; preds = %28
  %36 = load %struct.rt6_info*, %struct.rt6_info** %13, align 8
  %37 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.rt6_info*, %struct.rt6_info** %39, align 8
  store %struct.rt6_info* %40, %struct.rt6_info** %13, align 8
  br label %17

41:                                               ; preds = %26
  %42 = load %struct.fib6_node*, %struct.fib6_node** %7, align 8
  %43 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %42, i32 0, i32 0
  %44 = load %struct.rt6_info*, %struct.rt6_info** %43, align 8
  store %struct.rt6_info* %44, %struct.rt6_info** %13, align 8
  br label %45

45:                                               ; preds = %67, %41
  %46 = load %struct.rt6_info*, %struct.rt6_info** %13, align 8
  %47 = icmp ne %struct.rt6_info* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = load %struct.rt6_info*, %struct.rt6_info** %13, align 8
  %50 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %51 = icmp ne %struct.rt6_info* %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load %struct.rt6_info*, %struct.rt6_info** %13, align 8
  %54 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %9, align 8
  %57 = icmp eq i64 %55, %56
  br label %58

58:                                               ; preds = %52, %48, %45
  %59 = phi i1 [ false, %48 ], [ false, %45 ], [ %57, %52 ]
  br i1 %59, label %60, label %73

60:                                               ; preds = %58
  %61 = load %struct.rt6_info*, %struct.rt6_info** %13, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.rt6_info*, %struct.rt6_info** %14, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = call %struct.rt6_info* @find_match(%struct.rt6_info* %61, i32 %62, i32 %63, i32* %15, %struct.rt6_info* %64, i32* %65)
  store %struct.rt6_info* %66, %struct.rt6_info** %14, align 8
  br label %67

67:                                               ; preds = %60
  %68 = load %struct.rt6_info*, %struct.rt6_info** %13, align 8
  %69 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load %struct.rt6_info*, %struct.rt6_info** %71, align 8
  store %struct.rt6_info* %72, %struct.rt6_info** %13, align 8
  br label %45

73:                                               ; preds = %58
  %74 = load %struct.rt6_info*, %struct.rt6_info** %14, align 8
  ret %struct.rt6_info* %74
}

declare dso_local %struct.rt6_info* @find_match(%struct.rt6_info*, i32, i32, i32*, %struct.rt6_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
