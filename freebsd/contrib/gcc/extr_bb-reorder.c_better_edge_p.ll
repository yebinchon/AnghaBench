; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_bb-reorder.c_better_edge_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_bb-reorder.c_better_edge_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@flag_reorder_blocks_and_partition = common dso_local global i64 0, align 8
@EDGE_CROSSING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.TYPE_6__*, i32, i32, i32, i32, %struct.TYPE_6__*)* @better_edge_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @better_edge_p(i64 %0, %struct.TYPE_6__* %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.TYPE_6__* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i64 %0, i64* %8, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.TYPE_6__* %6, %struct.TYPE_6__** %14, align 8
  %18 = load i32, i32* %12, align 4
  %19 = sdiv i32 %18, 10
  store i32 %19, i32* %16, align 4
  %20 = load i32, i32* %13, align 4
  %21 = sdiv i32 %20, 10
  store i32 %21, i32* %17, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %16, align 4
  %25 = add nsw i32 %23, %24
  %26 = icmp sgt i32 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %7
  store i32 1, i32* %15, align 4
  br label %63

28:                                               ; preds = %7
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %16, align 4
  %32 = sub nsw i32 %30, %31
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %15, align 4
  br label %62

35:                                               ; preds = %28
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %17, align 4
  %39 = sub nsw i32 %37, %38
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 1, i32* %15, align 4
  br label %61

42:                                               ; preds = %35
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %17, align 4
  %46 = add nsw i32 %44, %45
  %47 = icmp sgt i32 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 0, i32* %15, align 4
  br label %60

49:                                               ; preds = %42
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store i32 1, i32* %15, align 4
  br label %59

58:                                               ; preds = %49
  store i32 0, i32* %15, align 4
  br label %59

59:                                               ; preds = %58, %57
  br label %60

60:                                               ; preds = %59, %48
  br label %61

61:                                               ; preds = %60, %41
  br label %62

62:                                               ; preds = %61, %34
  br label %63

63:                                               ; preds = %62, %27
  %64 = load i32, i32* %15, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %87, label %66

66:                                               ; preds = %63
  %67 = load i64, i64* @flag_reorder_blocks_and_partition, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %87

69:                                               ; preds = %66
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %71 = icmp ne %struct.TYPE_6__* %70, null
  br i1 %71, label %72, label %87

72:                                               ; preds = %69
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @EDGE_CROSSING, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %72
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @EDGE_CROSSING, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %79
  store i32 1, i32* %15, align 4
  br label %87

87:                                               ; preds = %86, %79, %72, %69, %66, %63
  %88 = load i32, i32* %15, align 4
  ret i32 %88
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
