; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bcast.h_tipc_nmap_diff.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bcast.h_tipc_nmap_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_node_map = type { i32*, i32 }

@WSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tipc_node_map*, %struct.tipc_node_map*, %struct.tipc_node_map*)* @tipc_nmap_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tipc_nmap_diff(%struct.tipc_node_map* %0, %struct.tipc_node_map* %1, %struct.tipc_node_map* %2) #0 {
  %4 = alloca %struct.tipc_node_map*, align 8
  %5 = alloca %struct.tipc_node_map*, align 8
  %6 = alloca %struct.tipc_node_map*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tipc_node_map* %0, %struct.tipc_node_map** %4, align 8
  store %struct.tipc_node_map* %1, %struct.tipc_node_map** %5, align 8
  store %struct.tipc_node_map* %2, %struct.tipc_node_map** %6, align 8
  %11 = load %struct.tipc_node_map*, %struct.tipc_node_map** %4, align 8
  %12 = getelementptr inbounds %struct.tipc_node_map, %struct.tipc_node_map* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @ARRAY_SIZE(i32* %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.tipc_node_map*, %struct.tipc_node_map** %6, align 8
  %16 = call i32 @memset(%struct.tipc_node_map* %15, i32 0, i32 16)
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %76, %3
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %79

21:                                               ; preds = %17
  %22 = load %struct.tipc_node_map*, %struct.tipc_node_map** %4, align 8
  %23 = getelementptr inbounds %struct.tipc_node_map, %struct.tipc_node_map* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.tipc_node_map*, %struct.tipc_node_map** %4, align 8
  %30 = getelementptr inbounds %struct.tipc_node_map, %struct.tipc_node_map* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.tipc_node_map*, %struct.tipc_node_map** %5, align 8
  %37 = getelementptr inbounds %struct.tipc_node_map, %struct.tipc_node_map* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %35, %42
  %44 = xor i32 %28, %43
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.tipc_node_map*, %struct.tipc_node_map** %6, align 8
  %47 = getelementptr inbounds %struct.tipc_node_map, %struct.tipc_node_map* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %45, i32* %51, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %75

54:                                               ; preds = %21
  store i32 0, i32* %9, align 4
  br label %55

55:                                               ; preds = %71, %54
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @WSIZE, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %55
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %9, align 4
  %62 = shl i32 1, %61
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load %struct.tipc_node_map*, %struct.tipc_node_map** %6, align 8
  %67 = getelementptr inbounds %struct.tipc_node_map, %struct.tipc_node_map* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %65, %59
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %55

74:                                               ; preds = %55
  br label %75

75:                                               ; preds = %74, %21
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %17

79:                                               ; preds = %17
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @memset(%struct.tipc_node_map*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
