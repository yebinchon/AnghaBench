; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraph.c_cgraph_edge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraph.c_cgraph_edge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_edge = type { i64, %struct.cgraph_edge* }
%struct.cgraph_node = type { i64, %struct.cgraph_edge* }

@edge_hash = common dso_local global i32 0, align 4
@edge_eq = common dso_local global i32 0, align 4
@INSERT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cgraph_edge* @cgraph_edge(%struct.cgraph_node* %0, i64 %1) #0 {
  %3 = alloca %struct.cgraph_edge*, align 8
  %4 = alloca %struct.cgraph_node*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cgraph_edge*, align 8
  %7 = alloca %struct.cgraph_edge*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  store %struct.cgraph_node* %0, %struct.cgraph_node** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.cgraph_node*, %struct.cgraph_node** %4, align 8
  %11 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.cgraph_node*, %struct.cgraph_node** %4, align 8
  %16 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @htab_hash_pointer(i64 %19)
  %21 = call %struct.cgraph_edge* @htab_find_with_hash(i64 %17, i64 %18, i32 %20)
  store %struct.cgraph_edge* %21, %struct.cgraph_edge** %3, align 8
  br label %87

22:                                               ; preds = %2
  %23 = load %struct.cgraph_node*, %struct.cgraph_node** %4, align 8
  %24 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %23, i32 0, i32 1
  %25 = load %struct.cgraph_edge*, %struct.cgraph_edge** %24, align 8
  store %struct.cgraph_edge* %25, %struct.cgraph_edge** %6, align 8
  br label %26

26:                                               ; preds = %39, %22
  %27 = load %struct.cgraph_edge*, %struct.cgraph_edge** %6, align 8
  %28 = icmp ne %struct.cgraph_edge* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = load %struct.cgraph_edge*, %struct.cgraph_edge** %6, align 8
  %31 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %43

36:                                               ; preds = %29
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %36
  %40 = load %struct.cgraph_edge*, %struct.cgraph_edge** %6, align 8
  %41 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %40, i32 0, i32 1
  %42 = load %struct.cgraph_edge*, %struct.cgraph_edge** %41, align 8
  store %struct.cgraph_edge* %42, %struct.cgraph_edge** %6, align 8
  br label %26

43:                                               ; preds = %35, %26
  %44 = load i32, i32* %8, align 4
  %45 = icmp sgt i32 %44, 100
  br i1 %45, label %46, label %85

46:                                               ; preds = %43
  %47 = load i32, i32* @edge_hash, align 4
  %48 = load i32, i32* @edge_eq, align 4
  %49 = call i64 @htab_create_ggc(i32 120, i32 %47, i32 %48, i32* null)
  %50 = load %struct.cgraph_node*, %struct.cgraph_node** %4, align 8
  %51 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.cgraph_node*, %struct.cgraph_node** %4, align 8
  %53 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %52, i32 0, i32 1
  %54 = load %struct.cgraph_edge*, %struct.cgraph_edge** %53, align 8
  store %struct.cgraph_edge* %54, %struct.cgraph_edge** %7, align 8
  br label %55

55:                                               ; preds = %80, %46
  %56 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %57 = icmp ne %struct.cgraph_edge* %56, null
  br i1 %57, label %58, label %84

58:                                               ; preds = %55
  %59 = load %struct.cgraph_node*, %struct.cgraph_node** %4, align 8
  %60 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %63 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %66 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @htab_hash_pointer(i64 %67)
  %69 = load i32, i32* @INSERT, align 4
  %70 = call i8** @htab_find_slot_with_hash(i64 %61, i64 %64, i32 %68, i32 %69)
  store i8** %70, i8*** %9, align 8
  %71 = load i8**, i8*** %9, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i32 @gcc_assert(i32 %75)
  %77 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %78 = bitcast %struct.cgraph_edge* %77 to i8*
  %79 = load i8**, i8*** %9, align 8
  store i8* %78, i8** %79, align 8
  br label %80

80:                                               ; preds = %58
  %81 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %82 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %81, i32 0, i32 1
  %83 = load %struct.cgraph_edge*, %struct.cgraph_edge** %82, align 8
  store %struct.cgraph_edge* %83, %struct.cgraph_edge** %7, align 8
  br label %55

84:                                               ; preds = %55
  br label %85

85:                                               ; preds = %84, %43
  %86 = load %struct.cgraph_edge*, %struct.cgraph_edge** %6, align 8
  store %struct.cgraph_edge* %86, %struct.cgraph_edge** %3, align 8
  br label %87

87:                                               ; preds = %85, %14
  %88 = load %struct.cgraph_edge*, %struct.cgraph_edge** %3, align 8
  ret %struct.cgraph_edge* %88
}

declare dso_local %struct.cgraph_edge* @htab_find_with_hash(i64, i64, i32) #1

declare dso_local i32 @htab_hash_pointer(i64) #1

declare dso_local i64 @htab_create_ggc(i32, i32, i32, i32*) #1

declare dso_local i8** @htab_find_slot_with_hash(i64, i64, i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
