; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_radix-tree.c_radix_tree_gang_lookup_tag_slot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_radix-tree.c_radix_tree_gang_lookup_tag_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_tree_root = type { i32 }
%struct.radix_tree_node = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radix_tree_gang_lookup_tag_slot(%struct.radix_tree_root* %0, i8*** %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.radix_tree_root*, align 8
  %8 = alloca i8***, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.radix_tree_node*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.radix_tree_root* %0, %struct.radix_tree_root** %7, align 8
  store i8*** %1, i8**** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load i64, i64* %9, align 8
  store i64 %18, i64* %14, align 8
  %19 = load %struct.radix_tree_root*, %struct.radix_tree_root** %7, align 8
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @root_tag_get(%struct.radix_tree_root* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %84

24:                                               ; preds = %5
  %25 = load %struct.radix_tree_root*, %struct.radix_tree_root** %7, align 8
  %26 = getelementptr inbounds %struct.radix_tree_root, %struct.radix_tree_root* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.radix_tree_node* @rcu_dereference(i32 %27)
  store %struct.radix_tree_node* %28, %struct.radix_tree_node** %12, align 8
  %29 = load %struct.radix_tree_node*, %struct.radix_tree_node** %12, align 8
  %30 = icmp ne %struct.radix_tree_node* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %84

32:                                               ; preds = %24
  %33 = load %struct.radix_tree_node*, %struct.radix_tree_node** %12, align 8
  %34 = call i32 @radix_tree_is_indirect_ptr(%struct.radix_tree_node* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %32
  %37 = load i64, i64* %9, align 8
  %38 = icmp ugt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %84

40:                                               ; preds = %36
  %41 = load %struct.radix_tree_root*, %struct.radix_tree_root** %7, align 8
  %42 = getelementptr inbounds %struct.radix_tree_root, %struct.radix_tree_root* %41, i32 0, i32 0
  %43 = bitcast i32* %42 to i8**
  %44 = load i8***, i8**** %8, align 8
  %45 = getelementptr inbounds i8**, i8*** %44, i64 0
  store i8** %43, i8*** %45, align 8
  store i32 1, i32* %6, align 4
  br label %84

46:                                               ; preds = %32
  %47 = load %struct.radix_tree_node*, %struct.radix_tree_node** %12, align 8
  %48 = call %struct.radix_tree_node* @indirect_to_ptr(%struct.radix_tree_node* %47)
  store %struct.radix_tree_node* %48, %struct.radix_tree_node** %12, align 8
  %49 = load %struct.radix_tree_node*, %struct.radix_tree_node** %12, align 8
  %50 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @radix_tree_maxindex(i32 %51)
  store i64 %52, i64* %13, align 8
  store i32 0, i32* %15, align 4
  br label %53

53:                                               ; preds = %80, %46
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %82

57:                                               ; preds = %53
  %58 = load i64, i64* %14, align 8
  %59 = load i64, i64* %13, align 8
  %60 = icmp ugt i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %82

62:                                               ; preds = %57
  %63 = load %struct.radix_tree_node*, %struct.radix_tree_node** %12, align 8
  %64 = load i8***, i8**** %8, align 8
  %65 = load i32, i32* %15, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i8**, i8*** %64, i64 %66
  %68 = load i64, i64* %14, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %15, align 4
  %71 = sub i32 %69, %70
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @__lookup_tag(%struct.radix_tree_node* %63, i8*** %67, i64 %68, i32 %71, i64* %17, i32 %72)
  store i32 %73, i32* %16, align 4
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* %15, align 4
  %76 = add i32 %75, %74
  store i32 %76, i32* %15, align 4
  %77 = load i64, i64* %17, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %62
  br label %82

80:                                               ; preds = %62
  %81 = load i64, i64* %17, align 8
  store i64 %81, i64* %14, align 8
  br label %53

82:                                               ; preds = %79, %61, %53
  %83 = load i32, i32* %15, align 4
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %82, %40, %39, %31, %23
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local i32 @root_tag_get(%struct.radix_tree_root*, i32) #1

declare dso_local %struct.radix_tree_node* @rcu_dereference(i32) #1

declare dso_local i32 @radix_tree_is_indirect_ptr(%struct.radix_tree_node*) #1

declare dso_local %struct.radix_tree_node* @indirect_to_ptr(%struct.radix_tree_node*) #1

declare dso_local i64 @radix_tree_maxindex(i32) #1

declare dso_local i32 @__lookup_tag(%struct.radix_tree_node*, i8***, i64, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
