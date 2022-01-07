; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-nested.c_get_static_chain.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-nested.c_get_static_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nesting_info = type { i64, %struct.nesting_info*, i32 }

@INDIRECT_REF = common dso_local global i32 0, align 4
@COMPONENT_REF = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nesting_info*, i64, i32*)* @get_static_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_static_chain(%struct.nesting_info* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.nesting_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nesting_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.nesting_info* %0, %struct.nesting_info** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.nesting_info*, %struct.nesting_info** %4, align 8
  %11 = getelementptr inbounds %struct.nesting_info, %struct.nesting_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.nesting_info*, %struct.nesting_info** %4, align 8
  %17 = getelementptr inbounds %struct.nesting_info, %struct.nesting_info* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @build_addr(i32 %18, i64 %19)
  store i64 %20, i64* %8, align 8
  br label %58

21:                                               ; preds = %3
  %22 = load %struct.nesting_info*, %struct.nesting_info** %4, align 8
  %23 = call i64 @get_chain_decl(%struct.nesting_info* %22)
  store i64 %23, i64* %8, align 8
  %24 = load %struct.nesting_info*, %struct.nesting_info** %4, align 8
  %25 = getelementptr inbounds %struct.nesting_info, %struct.nesting_info* %24, i32 0, i32 1
  %26 = load %struct.nesting_info*, %struct.nesting_info** %25, align 8
  store %struct.nesting_info* %26, %struct.nesting_info** %7, align 8
  br label %27

27:                                               ; preds = %53, %21
  %28 = load %struct.nesting_info*, %struct.nesting_info** %7, align 8
  %29 = getelementptr inbounds %struct.nesting_info, %struct.nesting_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %57

33:                                               ; preds = %27
  %34 = load %struct.nesting_info*, %struct.nesting_info** %7, align 8
  %35 = call i64 @get_chain_field(%struct.nesting_info* %34)
  store i64 %35, i64* %9, align 8
  %36 = load i32, i32* @INDIRECT_REF, align 4
  %37 = load i64, i64* %8, align 8
  %38 = call i64 @TREE_TYPE(i64 %37)
  %39 = call i64 @TREE_TYPE(i64 %38)
  %40 = load i64, i64* %8, align 8
  %41 = call i64 @build1(i32 %36, i64 %39, i64 %40)
  store i64 %41, i64* %8, align 8
  %42 = load i32, i32* @COMPONENT_REF, align 4
  %43 = load i64, i64* %9, align 8
  %44 = call i64 @TREE_TYPE(i64 %43)
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i32, i32* @NULL_TREE, align 4
  %48 = call i64 @build3(i32 %42, i64 %44, i64 %45, i64 %46, i32 %47)
  store i64 %48, i64* %8, align 8
  %49 = load %struct.nesting_info*, %struct.nesting_info** %4, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = call i64 @init_tmp_var(%struct.nesting_info* %49, i64 %50, i32* %51)
  store i64 %52, i64* %8, align 8
  br label %53

53:                                               ; preds = %33
  %54 = load %struct.nesting_info*, %struct.nesting_info** %7, align 8
  %55 = getelementptr inbounds %struct.nesting_info, %struct.nesting_info* %54, i32 0, i32 1
  %56 = load %struct.nesting_info*, %struct.nesting_info** %55, align 8
  store %struct.nesting_info* %56, %struct.nesting_info** %7, align 8
  br label %27

57:                                               ; preds = %27
  br label %58

58:                                               ; preds = %57, %15
  %59 = load i64, i64* %8, align 8
  ret i64 %59
}

declare dso_local i64 @build_addr(i32, i64) #1

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
