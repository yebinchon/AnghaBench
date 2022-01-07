; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_radix-tree.c_radix_tree_gang_lookup_slot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_radix-tree.c_radix_tree_gang_lookup_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_tree_root = type { i32 }
%struct.radix_tree_node = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radix_tree_gang_lookup_slot(%struct.radix_tree_root* %0, i8*** %1, i64* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.radix_tree_root*, align 8
  %8 = alloca i8***, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.radix_tree_node*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.radix_tree_root* %0, %struct.radix_tree_root** %7, align 8
  store i8*** %1, i8**** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load i64, i64* %10, align 8
  store i64 %18, i64* %14, align 8
  %19 = load %struct.radix_tree_root*, %struct.radix_tree_root** %7, align 8
  %20 = getelementptr inbounds %struct.radix_tree_root, %struct.radix_tree_root* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.radix_tree_node* @rcu_dereference(i32 %21)
  store %struct.radix_tree_node* %22, %struct.radix_tree_node** %13, align 8
  %23 = load %struct.radix_tree_node*, %struct.radix_tree_node** %13, align 8
  %24 = icmp ne %struct.radix_tree_node* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %93

26:                                               ; preds = %5
  %27 = load %struct.radix_tree_node*, %struct.radix_tree_node** %13, align 8
  %28 = call i32 @radix_tree_is_indirect_ptr(%struct.radix_tree_node* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %46, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* %10, align 8
  %32 = icmp ugt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %93

34:                                               ; preds = %30
  %35 = load %struct.radix_tree_root*, %struct.radix_tree_root** %7, align 8
  %36 = getelementptr inbounds %struct.radix_tree_root, %struct.radix_tree_root* %35, i32 0, i32 0
  %37 = bitcast i32* %36 to i8**
  %38 = load i8***, i8**** %8, align 8
  %39 = getelementptr inbounds i8**, i8*** %38, i64 0
  store i8** %37, i8*** %39, align 8
  %40 = load i64*, i64** %9, align 8
  %41 = icmp ne i64* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i64*, i64** %9, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %42, %34
  store i32 1, i32* %6, align 4
  br label %93

46:                                               ; preds = %26
  %47 = load %struct.radix_tree_node*, %struct.radix_tree_node** %13, align 8
  %48 = call %struct.radix_tree_node* @indirect_to_ptr(%struct.radix_tree_node* %47)
  store %struct.radix_tree_node* %48, %struct.radix_tree_node** %13, align 8
  %49 = load %struct.radix_tree_node*, %struct.radix_tree_node** %13, align 8
  %50 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @radix_tree_maxindex(i32 %51)
  store i64 %52, i64* %12, align 8
  store i32 0, i32* %15, align 4
  br label %53

53:                                               ; preds = %89, %46
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %91

57:                                               ; preds = %53
  %58 = load i64, i64* %14, align 8
  %59 = load i64, i64* %12, align 8
  %60 = icmp ugt i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %91

62:                                               ; preds = %57
  %63 = load %struct.radix_tree_node*, %struct.radix_tree_node** %13, align 8
  %64 = load i8***, i8**** %8, align 8
  %65 = load i32, i32* %15, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i8**, i8*** %64, i64 %66
  %68 = load i64*, i64** %9, align 8
  %69 = icmp ne i64* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %62
  %71 = load i64*, i64** %9, align 8
  %72 = load i32, i32* %15, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  br label %76

75:                                               ; preds = %62
  br label %76

76:                                               ; preds = %75, %70
  %77 = phi i64* [ %74, %70 ], [ null, %75 ]
  %78 = load i64, i64* %14, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %15, align 4
  %81 = sub i32 %79, %80
  %82 = call i32 @__lookup(%struct.radix_tree_node* %63, i8*** %67, i64* %77, i64 %78, i32 %81, i64* %17)
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %15, align 4
  %85 = add i32 %84, %83
  store i32 %85, i32* %15, align 4
  %86 = load i64, i64* %17, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %76
  br label %91

89:                                               ; preds = %76
  %90 = load i64, i64* %17, align 8
  store i64 %90, i64* %14, align 8
  br label %53

91:                                               ; preds = %88, %61, %53
  %92 = load i32, i32* %15, align 4
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %91, %45, %33, %25
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local %struct.radix_tree_node* @rcu_dereference(i32) #1

declare dso_local i32 @radix_tree_is_indirect_ptr(%struct.radix_tree_node*) #1

declare dso_local %struct.radix_tree_node* @indirect_to_ptr(%struct.radix_tree_node*) #1

declare dso_local i64 @radix_tree_maxindex(i32) #1

declare dso_local i32 @__lookup(%struct.radix_tree_node*, i8***, i64*, i64, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
