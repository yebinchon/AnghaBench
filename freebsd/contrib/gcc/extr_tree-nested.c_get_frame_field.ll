; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-nested.c_get_frame_field.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-nested.c_get_frame_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nesting_info = type { i64, i64, %struct.nesting_info* }

@INDIRECT_REF = common dso_local global i32 0, align 4
@COMPONENT_REF = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nesting_info*, i64, i64, i32*)* @get_frame_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_frame_field(%struct.nesting_info* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.nesting_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.nesting_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.nesting_info* %0, %struct.nesting_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.nesting_info*, %struct.nesting_info** %5, align 8
  %13 = getelementptr inbounds %struct.nesting_info, %struct.nesting_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load %struct.nesting_info*, %struct.nesting_info** %5, align 8
  %19 = call i32 @get_frame_type(%struct.nesting_info* %18)
  %20 = load %struct.nesting_info*, %struct.nesting_info** %5, align 8
  %21 = getelementptr inbounds %struct.nesting_info, %struct.nesting_info* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %10, align 8
  br label %66

23:                                               ; preds = %4
  %24 = load %struct.nesting_info*, %struct.nesting_info** %5, align 8
  %25 = call i64 @get_chain_decl(%struct.nesting_info* %24)
  store i64 %25, i64* %10, align 8
  %26 = load %struct.nesting_info*, %struct.nesting_info** %5, align 8
  %27 = getelementptr inbounds %struct.nesting_info, %struct.nesting_info* %26, i32 0, i32 2
  %28 = load %struct.nesting_info*, %struct.nesting_info** %27, align 8
  store %struct.nesting_info* %28, %struct.nesting_info** %9, align 8
  br label %29

29:                                               ; preds = %55, %23
  %30 = load %struct.nesting_info*, %struct.nesting_info** %9, align 8
  %31 = getelementptr inbounds %struct.nesting_info, %struct.nesting_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %59

35:                                               ; preds = %29
  %36 = load %struct.nesting_info*, %struct.nesting_info** %9, align 8
  %37 = call i64 @get_chain_field(%struct.nesting_info* %36)
  store i64 %37, i64* %11, align 8
  %38 = load i32, i32* @INDIRECT_REF, align 4
  %39 = load i64, i64* %10, align 8
  %40 = call i64 @TREE_TYPE(i64 %39)
  %41 = call i64 @TREE_TYPE(i64 %40)
  %42 = load i64, i64* %10, align 8
  %43 = call i64 @build1(i32 %38, i64 %41, i64 %42)
  store i64 %43, i64* %10, align 8
  %44 = load i32, i32* @COMPONENT_REF, align 4
  %45 = load i64, i64* %11, align 8
  %46 = call i64 @TREE_TYPE(i64 %45)
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %11, align 8
  %49 = load i32, i32* @NULL_TREE, align 4
  %50 = call i64 @build3(i32 %44, i64 %46, i64 %47, i64 %48, i32 %49)
  store i64 %50, i64* %10, align 8
  %51 = load %struct.nesting_info*, %struct.nesting_info** %5, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = call i64 @init_tmp_var(%struct.nesting_info* %51, i64 %52, i32* %53)
  store i64 %54, i64* %10, align 8
  br label %55

55:                                               ; preds = %35
  %56 = load %struct.nesting_info*, %struct.nesting_info** %9, align 8
  %57 = getelementptr inbounds %struct.nesting_info, %struct.nesting_info* %56, i32 0, i32 2
  %58 = load %struct.nesting_info*, %struct.nesting_info** %57, align 8
  store %struct.nesting_info* %58, %struct.nesting_info** %9, align 8
  br label %29

59:                                               ; preds = %29
  %60 = load i32, i32* @INDIRECT_REF, align 4
  %61 = load i64, i64* %10, align 8
  %62 = call i64 @TREE_TYPE(i64 %61)
  %63 = call i64 @TREE_TYPE(i64 %62)
  %64 = load i64, i64* %10, align 8
  %65 = call i64 @build1(i32 %60, i64 %63, i64 %64)
  store i64 %65, i64* %10, align 8
  br label %66

66:                                               ; preds = %59, %17
  %67 = load i32, i32* @COMPONENT_REF, align 4
  %68 = load i64, i64* %7, align 8
  %69 = call i64 @TREE_TYPE(i64 %68)
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* %7, align 8
  %72 = load i32, i32* @NULL_TREE, align 4
  %73 = call i64 @build3(i32 %67, i64 %69, i64 %70, i64 %71, i32 %72)
  store i64 %73, i64* %10, align 8
  %74 = load i64, i64* %10, align 8
  ret i64 %74
}

declare dso_local i32 @get_frame_type(%struct.nesting_info*) #1

declare dso_local i64 @get_chain_decl(%struct.nesting_info*) #1

declare dso_local i64 @get_chain_field(%struct.nesting_info*) #1

declare dso_local i64 @build1(i32, i64, i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @build3(i32, i64, i64, i64, i32) #1

declare dso_local i64 @init_tmp_var(%struct.nesting_info*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
