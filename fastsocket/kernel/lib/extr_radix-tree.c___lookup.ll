; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_radix-tree.c___lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_radix-tree.c___lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_tree_node = type { i32, i8** }

@RADIX_TREE_MAP_SHIFT = common dso_local global i32 0, align 4
@RADIX_TREE_MAP_MASK = common dso_local global i64 0, align 8
@RADIX_TREE_MAP_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radix_tree_node*, i8***, i64*, i64, i32, i64*)* @__lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__lookup(%struct.radix_tree_node* %0, i8*** %1, i64* %2, i64 %3, i32 %4, i64* %5) #0 {
  %7 = alloca %struct.radix_tree_node*, align 8
  %8 = alloca i8***, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.radix_tree_node* %0, %struct.radix_tree_node** %7, align 8
  store i8*** %1, i8**** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i64* %5, i64** %12, align 8
  store i32 0, i32* %13, align 4
  %17 = load %struct.radix_tree_node*, %struct.radix_tree_node** %7, align 8
  %18 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %15, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  br label %139

23:                                               ; preds = %6
  %24 = load i32, i32* %15, align 4
  %25 = sub i32 %24, 1
  %26 = load i32, i32* @RADIX_TREE_MAP_SHIFT, align 4
  %27 = mul i32 %25, %26
  store i32 %27, i32* %14, align 4
  br label %28

28:                                               ; preds = %86, %23
  %29 = load i32, i32* %15, align 4
  %30 = icmp ugt i32 %29, 1
  br i1 %30, label %31, label %89

31:                                               ; preds = %28
  %32 = load i64, i64* %10, align 8
  %33 = load i32, i32* %14, align 4
  %34 = zext i32 %33 to i64
  %35 = lshr i64 %32, %34
  %36 = load i64, i64* @RADIX_TREE_MAP_MASK, align 8
  %37 = and i64 %35, %36
  store i64 %37, i64* %16, align 8
  br label %38

38:                                               ; preds = %70, %31
  %39 = load %struct.radix_tree_node*, %struct.radix_tree_node** %7, align 8
  %40 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %39, i32 0, i32 1
  %41 = load i8**, i8*** %40, align 8
  %42 = load i64, i64* %16, align 8
  %43 = getelementptr inbounds i8*, i8** %41, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %71

47:                                               ; preds = %38
  %48 = load i32, i32* %14, align 4
  %49 = zext i32 %48 to i64
  %50 = shl i64 1, %49
  %51 = sub i64 %50, 1
  %52 = xor i64 %51, -1
  %53 = load i64, i64* %10, align 8
  %54 = and i64 %53, %52
  store i64 %54, i64* %10, align 8
  %55 = load i32, i32* %14, align 4
  %56 = zext i32 %55 to i64
  %57 = shl i64 1, %56
  %58 = load i64, i64* %10, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %10, align 8
  %60 = load i64, i64* %10, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %47
  br label %139

63:                                               ; preds = %47
  %64 = load i64, i64* %16, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %16, align 8
  %66 = load i64, i64* %16, align 8
  %67 = load i64, i64* @RADIX_TREE_MAP_SIZE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %139

70:                                               ; preds = %63
  br label %38

71:                                               ; preds = %46
  %72 = load i32, i32* @RADIX_TREE_MAP_SHIFT, align 4
  %73 = load i32, i32* %14, align 4
  %74 = sub i32 %73, %72
  store i32 %74, i32* %14, align 4
  %75 = load %struct.radix_tree_node*, %struct.radix_tree_node** %7, align 8
  %76 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %75, i32 0, i32 1
  %77 = load i8**, i8*** %76, align 8
  %78 = load i64, i64* %16, align 8
  %79 = getelementptr inbounds i8*, i8** %77, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = call %struct.radix_tree_node* @rcu_dereference(i8* %80)
  store %struct.radix_tree_node* %81, %struct.radix_tree_node** %7, align 8
  %82 = load %struct.radix_tree_node*, %struct.radix_tree_node** %7, align 8
  %83 = icmp eq %struct.radix_tree_node* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %71
  br label %139

85:                                               ; preds = %71
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %15, align 4
  %88 = add i32 %87, -1
  store i32 %88, i32* %15, align 4
  br label %28

89:                                               ; preds = %28
  %90 = load i64, i64* %10, align 8
  %91 = load i64, i64* @RADIX_TREE_MAP_MASK, align 8
  %92 = and i64 %90, %91
  store i64 %92, i64* %16, align 8
  br label %93

93:                                               ; preds = %135, %89
  %94 = load i64, i64* %16, align 8
  %95 = load i64, i64* @RADIX_TREE_MAP_SIZE, align 8
  %96 = icmp ult i64 %94, %95
  br i1 %96, label %97, label %138

97:                                               ; preds = %93
  %98 = load %struct.radix_tree_node*, %struct.radix_tree_node** %7, align 8
  %99 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %98, i32 0, i32 1
  %100 = load i8**, i8*** %99, align 8
  %101 = load i64, i64* %16, align 8
  %102 = getelementptr inbounds i8*, i8** %100, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %132

105:                                              ; preds = %97
  %106 = load %struct.radix_tree_node*, %struct.radix_tree_node** %7, align 8
  %107 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %106, i32 0, i32 1
  %108 = load i8**, i8*** %107, align 8
  %109 = load i64, i64* %16, align 8
  %110 = getelementptr inbounds i8*, i8** %108, i64 %109
  %111 = load i8***, i8**** %8, align 8
  %112 = load i32, i32* %13, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i8**, i8*** %111, i64 %113
  store i8** %110, i8*** %114, align 8
  %115 = load i64*, i64** %9, align 8
  %116 = icmp ne i64* %115, null
  br i1 %116, label %117, label %123

117:                                              ; preds = %105
  %118 = load i64, i64* %10, align 8
  %119 = load i64*, i64** %9, align 8
  %120 = load i32, i32* %13, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  store i64 %118, i64* %122, align 8
  br label %123

123:                                              ; preds = %117, %105
  %124 = load i32, i32* %13, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %13, align 4
  %126 = load i32, i32* %11, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load i64, i64* %10, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %10, align 8
  br label %139

131:                                              ; preds = %123
  br label %132

132:                                              ; preds = %131, %97
  %133 = load i64, i64* %10, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %10, align 8
  br label %135

135:                                              ; preds = %132
  %136 = load i64, i64* %16, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %16, align 8
  br label %93

138:                                              ; preds = %93
  br label %139

139:                                              ; preds = %138, %128, %84, %69, %62, %22
  %140 = load i64, i64* %10, align 8
  %141 = load i64*, i64** %12, align 8
  store i64 %140, i64* %141, align 8
  %142 = load i32, i32* %13, align 4
  ret i32 %142
}

declare dso_local %struct.radix_tree_node* @rcu_dereference(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
