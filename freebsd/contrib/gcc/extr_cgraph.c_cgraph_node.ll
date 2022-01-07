; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraph.c_cgraph_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraph.c_cgraph_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, i8* }

@FUNCTION_DECL = common dso_local global i64 0, align 8
@cgraph_hash = common dso_local global i64 0, align 8
@hash_node = common dso_local global i32 0, align 4
@eq_node = common dso_local global i32 0, align 4
@INSERT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cgraph_node* @cgraph_node(i8* %0) #0 {
  %2 = alloca %struct.cgraph_node*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cgraph_node, align 8
  %5 = alloca %struct.cgraph_node*, align 8
  %6 = alloca %struct.cgraph_node**, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @TREE_CODE(i8* %7)
  %9 = load i64, i64* @FUNCTION_DECL, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @gcc_assert(i32 %11)
  %13 = load i64, i64* @cgraph_hash, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @hash_node, align 4
  %17 = load i32, i32* @eq_node, align 4
  %18 = call i64 @htab_create_ggc(i32 10, i32 %16, i32 %17, i32* null)
  store i64 %18, i64* @cgraph_hash, align 8
  br label %19

19:                                               ; preds = %15, %1
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %4, i32 0, i32 4
  store i8* %20, i8** %21, align 8
  %22 = load i64, i64* @cgraph_hash, align 8
  %23 = load i32, i32* @INSERT, align 4
  %24 = call i64 @htab_find_slot(i64 %22, %struct.cgraph_node* %4, i32 %23)
  %25 = inttoptr i64 %24 to %struct.cgraph_node**
  store %struct.cgraph_node** %25, %struct.cgraph_node*** %6, align 8
  %26 = load %struct.cgraph_node**, %struct.cgraph_node*** %6, align 8
  %27 = load %struct.cgraph_node*, %struct.cgraph_node** %26, align 8
  %28 = icmp ne %struct.cgraph_node* %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %19
  %30 = load %struct.cgraph_node**, %struct.cgraph_node*** %6, align 8
  %31 = load %struct.cgraph_node*, %struct.cgraph_node** %30, align 8
  store %struct.cgraph_node* %31, %struct.cgraph_node** %5, align 8
  %32 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %33 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %32, i32 0, i32 0
  %34 = load %struct.cgraph_node*, %struct.cgraph_node** %33, align 8
  %35 = icmp ne %struct.cgraph_node* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  %37 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %38 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %39 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %38, i32 0, i32 0
  store %struct.cgraph_node* %37, %struct.cgraph_node** %39, align 8
  br label %40

40:                                               ; preds = %36, %29
  %41 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  store %struct.cgraph_node* %41, %struct.cgraph_node** %2, align 8
  br label %81

42:                                               ; preds = %19
  %43 = call %struct.cgraph_node* (...) @cgraph_create_node()
  store %struct.cgraph_node* %43, %struct.cgraph_node** %5, align 8
  %44 = load i8*, i8** %3, align 8
  %45 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %46 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  %47 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %48 = load %struct.cgraph_node**, %struct.cgraph_node*** %6, align 8
  store %struct.cgraph_node* %47, %struct.cgraph_node** %48, align 8
  %49 = load i8*, i8** %3, align 8
  %50 = call i8* @DECL_CONTEXT(i8* %49)
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %79

52:                                               ; preds = %42
  %53 = load i8*, i8** %3, align 8
  %54 = call i8* @DECL_CONTEXT(i8* %53)
  %55 = call i64 @TREE_CODE(i8* %54)
  %56 = load i64, i64* @FUNCTION_DECL, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %79

58:                                               ; preds = %52
  %59 = load i8*, i8** %3, align 8
  %60 = call i8* @DECL_CONTEXT(i8* %59)
  %61 = call %struct.cgraph_node* @cgraph_node(i8* %60)
  %62 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %63 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %62, i32 0, i32 2
  store %struct.cgraph_node* %61, %struct.cgraph_node** %63, align 8
  %64 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %65 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %64, i32 0, i32 2
  %66 = load %struct.cgraph_node*, %struct.cgraph_node** %65, align 8
  %67 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %66, i32 0, i32 1
  %68 = load %struct.cgraph_node*, %struct.cgraph_node** %67, align 8
  %69 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %70 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %69, i32 0, i32 3
  store %struct.cgraph_node* %68, %struct.cgraph_node** %70, align 8
  %71 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %72 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %73 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %72, i32 0, i32 2
  %74 = load %struct.cgraph_node*, %struct.cgraph_node** %73, align 8
  %75 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %74, i32 0, i32 1
  store %struct.cgraph_node* %71, %struct.cgraph_node** %75, align 8
  %76 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %77 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %78 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %77, i32 0, i32 0
  store %struct.cgraph_node* %76, %struct.cgraph_node** %78, align 8
  br label %79

79:                                               ; preds = %58, %52, %42
  %80 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  store %struct.cgraph_node* %80, %struct.cgraph_node** %2, align 8
  br label %81

81:                                               ; preds = %79, %40
  %82 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  ret %struct.cgraph_node* %82
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i8*) #1

declare dso_local i64 @htab_create_ggc(i32, i32, i32, i32*) #1

declare dso_local i64 @htab_find_slot(i64, %struct.cgraph_node*, i32) #1

declare dso_local %struct.cgraph_node* @cgraph_create_node(...) #1

declare dso_local i8* @DECL_CONTEXT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
