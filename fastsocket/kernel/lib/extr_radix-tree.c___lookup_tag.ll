; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_radix-tree.c___lookup_tag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_radix-tree.c___lookup_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_tree_node = type { i32, i8** }

@RADIX_TREE_MAP_SHIFT = common dso_local global i32 0, align 4
@RADIX_TREE_MAP_MASK = common dso_local global i64 0, align 8
@RADIX_TREE_MAP_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radix_tree_node*, i8***, i64, i32, i64*, i32)* @__lookup_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__lookup_tag(%struct.radix_tree_node* %0, i8*** %1, i64 %2, i32 %3, i64* %4, i32 %5) #0 {
  %7 = alloca %struct.radix_tree_node*, align 8
  %8 = alloca i8***, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.radix_tree_node* %0, %struct.radix_tree_node** %7, align 8
  store i8*** %1, i8**** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %18 = load %struct.radix_tree_node*, %struct.radix_tree_node** %7, align 8
  %19 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %15, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  br label %137

24:                                               ; preds = %6
  %25 = load i32, i32* %15, align 4
  %26 = sub i32 %25, 1
  %27 = load i32, i32* @RADIX_TREE_MAP_SHIFT, align 4
  %28 = mul i32 %26, %27
  store i32 %28, i32* %14, align 4
  br label %29

29:                                               ; preds = %135, %24
  %30 = load i32, i32* %15, align 4
  %31 = icmp ugt i32 %30, 0
  br i1 %31, label %32, label %136

32:                                               ; preds = %29
  %33 = load i64, i64* %9, align 8
  %34 = load i32, i32* %14, align 4
  %35 = zext i32 %34 to i64
  %36 = lshr i64 %33, %35
  %37 = load i64, i64* @RADIX_TREE_MAP_MASK, align 8
  %38 = and i64 %36, %37
  store i64 %38, i64* %16, align 8
  br label %39

39:                                               ; preds = %69, %32
  %40 = load %struct.radix_tree_node*, %struct.radix_tree_node** %7, align 8
  %41 = load i32, i32* %12, align 4
  %42 = load i64, i64* %16, align 8
  %43 = call i64 @tag_get(%struct.radix_tree_node* %40, i32 %41, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %70

46:                                               ; preds = %39
  %47 = load i32, i32* %14, align 4
  %48 = zext i32 %47 to i64
  %49 = shl i64 1, %48
  %50 = sub i64 %49, 1
  %51 = xor i64 %50, -1
  %52 = load i64, i64* %9, align 8
  %53 = and i64 %52, %51
  store i64 %53, i64* %9, align 8
  %54 = load i32, i32* %14, align 4
  %55 = zext i32 %54 to i64
  %56 = shl i64 1, %55
  %57 = load i64, i64* %9, align 8
  %58 = add i64 %57, %56
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* %9, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %46
  br label %137

62:                                               ; preds = %46
  %63 = load i64, i64* %16, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %16, align 8
  %65 = load i64, i64* %16, align 8
  %66 = load i64, i64* @RADIX_TREE_MAP_SIZE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %137

69:                                               ; preds = %62
  br label %39

70:                                               ; preds = %45
  %71 = load i32, i32* %15, align 4
  %72 = add i32 %71, -1
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %15, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %121

75:                                               ; preds = %70
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* @RADIX_TREE_MAP_MASK, align 8
  %78 = and i64 %76, %77
  store i64 %78, i64* %17, align 8
  br label %79

79:                                               ; preds = %117, %75
  %80 = load i64, i64* %17, align 8
  %81 = load i64, i64* @RADIX_TREE_MAP_SIZE, align 8
  %82 = icmp ult i64 %80, %81
  br i1 %82, label %83, label %120

83:                                               ; preds = %79
  %84 = load i64, i64* %9, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %9, align 8
  %86 = load %struct.radix_tree_node*, %struct.radix_tree_node** %7, align 8
  %87 = load i32, i32* %12, align 4
  %88 = load i64, i64* %17, align 8
  %89 = call i64 @tag_get(%struct.radix_tree_node* %86, i32 %87, i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %83
  br label %117

92:                                               ; preds = %83
  %93 = load %struct.radix_tree_node*, %struct.radix_tree_node** %7, align 8
  %94 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %93, i32 0, i32 1
  %95 = load i8**, i8*** %94, align 8
  %96 = load i64, i64* %17, align 8
  %97 = getelementptr inbounds i8*, i8** %95, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %116

100:                                              ; preds = %92
  %101 = load %struct.radix_tree_node*, %struct.radix_tree_node** %7, align 8
  %102 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %101, i32 0, i32 1
  %103 = load i8**, i8*** %102, align 8
  %104 = load i64, i64* %17, align 8
  %105 = getelementptr inbounds i8*, i8** %103, i64 %104
  %106 = load i8***, i8**** %8, align 8
  %107 = load i32, i32* %13, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %13, align 4
  %109 = zext i32 %107 to i64
  %110 = getelementptr inbounds i8**, i8*** %106, i64 %109
  store i8** %105, i8*** %110, align 8
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %100
  br label %137

115:                                              ; preds = %100
  br label %116

116:                                              ; preds = %115, %92
  br label %117

117:                                              ; preds = %116, %91
  %118 = load i64, i64* %17, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %17, align 8
  br label %79

120:                                              ; preds = %79
  br label %121

121:                                              ; preds = %120, %70
  %122 = load i32, i32* @RADIX_TREE_MAP_SHIFT, align 4
  %123 = load i32, i32* %14, align 4
  %124 = sub i32 %123, %122
  store i32 %124, i32* %14, align 4
  %125 = load %struct.radix_tree_node*, %struct.radix_tree_node** %7, align 8
  %126 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %125, i32 0, i32 1
  %127 = load i8**, i8*** %126, align 8
  %128 = load i64, i64* %16, align 8
  %129 = getelementptr inbounds i8*, i8** %127, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = call %struct.radix_tree_node* @rcu_dereference(i8* %130)
  store %struct.radix_tree_node* %131, %struct.radix_tree_node** %7, align 8
  %132 = load %struct.radix_tree_node*, %struct.radix_tree_node** %7, align 8
  %133 = icmp eq %struct.radix_tree_node* %132, null
  br i1 %133, label %134, label %135

134:                                              ; preds = %121
  br label %136

135:                                              ; preds = %121
  br label %29

136:                                              ; preds = %134, %29
  br label %137

137:                                              ; preds = %136, %114, %68, %61, %23
  %138 = load i64, i64* %9, align 8
  %139 = load i64*, i64** %11, align 8
  store i64 %138, i64* %139, align 8
  %140 = load i32, i32* %13, align 4
  ret i32 %140
}

declare dso_local i64 @tag_get(%struct.radix_tree_node*, i32, i64) #1

declare dso_local %struct.radix_tree_node* @rcu_dereference(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
