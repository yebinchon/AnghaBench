; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_ebitmap.c_ebitmap_contains.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_ebitmap.c_ebitmap_contains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebitmap = type { i64, %struct.ebitmap_node* }
%struct.ebitmap_node = type { i64, i32*, %struct.ebitmap_node* }

@EBITMAP_UNIT_NUMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ebitmap_contains(%struct.ebitmap* %0, %struct.ebitmap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ebitmap*, align 8
  %5 = alloca %struct.ebitmap*, align 8
  %6 = alloca %struct.ebitmap_node*, align 8
  %7 = alloca %struct.ebitmap_node*, align 8
  %8 = alloca i32, align 4
  store %struct.ebitmap* %0, %struct.ebitmap** %4, align 8
  store %struct.ebitmap* %1, %struct.ebitmap** %5, align 8
  %9 = load %struct.ebitmap*, %struct.ebitmap** %4, align 8
  %10 = getelementptr inbounds %struct.ebitmap, %struct.ebitmap* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.ebitmap*, %struct.ebitmap** %5, align 8
  %13 = getelementptr inbounds %struct.ebitmap, %struct.ebitmap* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %98

17:                                               ; preds = %2
  %18 = load %struct.ebitmap*, %struct.ebitmap** %4, align 8
  %19 = getelementptr inbounds %struct.ebitmap, %struct.ebitmap* %18, i32 0, i32 1
  %20 = load %struct.ebitmap_node*, %struct.ebitmap_node** %19, align 8
  store %struct.ebitmap_node* %20, %struct.ebitmap_node** %6, align 8
  %21 = load %struct.ebitmap*, %struct.ebitmap** %5, align 8
  %22 = getelementptr inbounds %struct.ebitmap, %struct.ebitmap* %21, i32 0, i32 1
  %23 = load %struct.ebitmap_node*, %struct.ebitmap_node** %22, align 8
  store %struct.ebitmap_node* %23, %struct.ebitmap_node** %7, align 8
  br label %24

24:                                               ; preds = %86, %48, %17
  %25 = load %struct.ebitmap_node*, %struct.ebitmap_node** %6, align 8
  %26 = icmp ne %struct.ebitmap_node* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load %struct.ebitmap_node*, %struct.ebitmap_node** %7, align 8
  %29 = icmp ne %struct.ebitmap_node* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load %struct.ebitmap_node*, %struct.ebitmap_node** %6, align 8
  %32 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ebitmap_node*, %struct.ebitmap_node** %7, align 8
  %35 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sle i64 %33, %36
  br label %38

38:                                               ; preds = %30, %27, %24
  %39 = phi i1 [ false, %27 ], [ false, %24 ], [ %37, %30 ]
  br i1 %39, label %40, label %93

40:                                               ; preds = %38
  %41 = load %struct.ebitmap_node*, %struct.ebitmap_node** %6, align 8
  %42 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.ebitmap_node*, %struct.ebitmap_node** %7, align 8
  %45 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %43, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load %struct.ebitmap_node*, %struct.ebitmap_node** %6, align 8
  %50 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %49, i32 0, i32 2
  %51 = load %struct.ebitmap_node*, %struct.ebitmap_node** %50, align 8
  store %struct.ebitmap_node* %51, %struct.ebitmap_node** %6, align 8
  br label %24

52:                                               ; preds = %40
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %83, %52
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @EBITMAP_UNIT_NUMS, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %86

57:                                               ; preds = %53
  %58 = load %struct.ebitmap_node*, %struct.ebitmap_node** %6, align 8
  %59 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ebitmap_node*, %struct.ebitmap_node** %7, align 8
  %66 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %64, %71
  %73 = load %struct.ebitmap_node*, %struct.ebitmap_node** %7, align 8
  %74 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %72, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %98

82:                                               ; preds = %57
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %53

86:                                               ; preds = %53
  %87 = load %struct.ebitmap_node*, %struct.ebitmap_node** %6, align 8
  %88 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %87, i32 0, i32 2
  %89 = load %struct.ebitmap_node*, %struct.ebitmap_node** %88, align 8
  store %struct.ebitmap_node* %89, %struct.ebitmap_node** %6, align 8
  %90 = load %struct.ebitmap_node*, %struct.ebitmap_node** %7, align 8
  %91 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %90, i32 0, i32 2
  %92 = load %struct.ebitmap_node*, %struct.ebitmap_node** %91, align 8
  store %struct.ebitmap_node* %92, %struct.ebitmap_node** %7, align 8
  br label %24

93:                                               ; preds = %38
  %94 = load %struct.ebitmap_node*, %struct.ebitmap_node** %7, align 8
  %95 = icmp ne %struct.ebitmap_node* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i32 0, i32* %3, align 4
  br label %98

97:                                               ; preds = %93
  store i32 1, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %96, %81, %16
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
