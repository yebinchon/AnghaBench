; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_srconv.c_walk_tree_scope.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_srconv.c_walk_tree_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coff_section = type { i32 }
%struct.coff_sfile = type { i32 }
%struct.coff_scope = type { %struct.coff_scope*, %struct.coff_scope*, %struct.coff_symbol* }
%struct.coff_symbol = type { %struct.coff_symbol* }

@tree = common dso_local global i32 0, align 4
@BLOCK_TYPE_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coff_section*, %struct.coff_sfile*, %struct.coff_scope*, i32, i32)* @walk_tree_scope to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walk_tree_scope(%struct.coff_section* %0, %struct.coff_sfile* %1, %struct.coff_scope* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.coff_section*, align 8
  %7 = alloca %struct.coff_sfile*, align 8
  %8 = alloca %struct.coff_scope*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.coff_symbol*, align 8
  %12 = alloca %struct.coff_scope*, align 8
  store %struct.coff_section* %0, %struct.coff_section** %6, align 8
  store %struct.coff_sfile* %1, %struct.coff_sfile** %7, align 8
  store %struct.coff_scope* %2, %struct.coff_scope** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.coff_scope*, %struct.coff_scope** %8, align 8
  %14 = getelementptr inbounds %struct.coff_scope, %struct.coff_scope* %13, i32 0, i32 2
  %15 = load %struct.coff_symbol*, %struct.coff_symbol** %14, align 8
  %16 = icmp ne %struct.coff_symbol* %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %5
  %18 = load %struct.coff_scope*, %struct.coff_scope** %8, align 8
  %19 = getelementptr inbounds %struct.coff_scope, %struct.coff_scope* %18, i32 0, i32 1
  %20 = load %struct.coff_scope*, %struct.coff_scope** %19, align 8
  %21 = icmp ne %struct.coff_scope* %20, null
  br i1 %21, label %22, label %84

22:                                               ; preds = %17
  %23 = load %struct.coff_scope*, %struct.coff_scope** %8, align 8
  %24 = getelementptr inbounds %struct.coff_scope, %struct.coff_scope* %23, i32 0, i32 1
  %25 = load %struct.coff_scope*, %struct.coff_scope** %24, align 8
  %26 = getelementptr inbounds %struct.coff_scope, %struct.coff_scope* %25, i32 0, i32 2
  %27 = load %struct.coff_symbol*, %struct.coff_symbol** %26, align 8
  %28 = icmp ne %struct.coff_symbol* %27, null
  br i1 %28, label %29, label %84

29:                                               ; preds = %22, %5
  %30 = load %struct.coff_sfile*, %struct.coff_sfile** %7, align 8
  %31 = load %struct.coff_section*, %struct.coff_section** %6, align 8
  %32 = load %struct.coff_scope*, %struct.coff_scope** %8, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @wr_dps_start(%struct.coff_sfile* %30, %struct.coff_section* %31, %struct.coff_scope* %32, i32 %33, i32 %34)
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %29
  %39 = load i32, i32* @tree, align 4
  %40 = load %struct.coff_sfile*, %struct.coff_sfile** %7, align 8
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  %43 = call i32 @wr_globals(i32 %39, %struct.coff_sfile* %40, i32 %42)
  br label %44

44:                                               ; preds = %38, %29
  %45 = load %struct.coff_scope*, %struct.coff_scope** %8, align 8
  %46 = getelementptr inbounds %struct.coff_scope, %struct.coff_scope* %45, i32 0, i32 2
  %47 = load %struct.coff_symbol*, %struct.coff_symbol** %46, align 8
  store %struct.coff_symbol* %47, %struct.coff_symbol** %11, align 8
  br label %48

48:                                               ; preds = %57, %44
  %49 = load %struct.coff_symbol*, %struct.coff_symbol** %11, align 8
  %50 = icmp ne %struct.coff_symbol* %49, null
  br i1 %50, label %51, label %61

51:                                               ; preds = %48
  %52 = load %struct.coff_sfile*, %struct.coff_sfile** %7, align 8
  %53 = load %struct.coff_section*, %struct.coff_section** %6, align 8
  %54 = load %struct.coff_symbol*, %struct.coff_symbol** %11, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @walk_tree_symbol(%struct.coff_sfile* %52, %struct.coff_section* %53, %struct.coff_symbol* %54, i32 %55)
  br label %57

57:                                               ; preds = %51
  %58 = load %struct.coff_symbol*, %struct.coff_symbol** %11, align 8
  %59 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %58, i32 0, i32 0
  %60 = load %struct.coff_symbol*, %struct.coff_symbol** %59, align 8
  store %struct.coff_symbol* %60, %struct.coff_symbol** %11, align 8
  br label %48

61:                                               ; preds = %48
  %62 = load %struct.coff_scope*, %struct.coff_scope** %8, align 8
  %63 = getelementptr inbounds %struct.coff_scope, %struct.coff_scope* %62, i32 0, i32 1
  %64 = load %struct.coff_scope*, %struct.coff_scope** %63, align 8
  store %struct.coff_scope* %64, %struct.coff_scope** %12, align 8
  br label %65

65:                                               ; preds = %75, %61
  %66 = load %struct.coff_scope*, %struct.coff_scope** %12, align 8
  %67 = icmp ne %struct.coff_scope* %66, null
  br i1 %67, label %68, label %79

68:                                               ; preds = %65
  %69 = load %struct.coff_section*, %struct.coff_section** %6, align 8
  %70 = load %struct.coff_sfile*, %struct.coff_sfile** %7, align 8
  %71 = load %struct.coff_scope*, %struct.coff_scope** %12, align 8
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  %74 = load i32, i32* @BLOCK_TYPE_BLOCK, align 4
  call void @walk_tree_scope(%struct.coff_section* %69, %struct.coff_sfile* %70, %struct.coff_scope* %71, i32 %73, i32 %74)
  br label %75

75:                                               ; preds = %68
  %76 = load %struct.coff_scope*, %struct.coff_scope** %12, align 8
  %77 = getelementptr inbounds %struct.coff_scope, %struct.coff_scope* %76, i32 0, i32 0
  %78 = load %struct.coff_scope*, %struct.coff_scope** %77, align 8
  store %struct.coff_scope* %78, %struct.coff_scope** %12, align 8
  br label %65

79:                                               ; preds = %65
  %80 = load %struct.coff_section*, %struct.coff_section** %6, align 8
  %81 = load %struct.coff_scope*, %struct.coff_scope** %8, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @wr_dps_end(%struct.coff_section* %80, %struct.coff_scope* %81, i32 %82)
  br label %84

84:                                               ; preds = %79, %22, %17
  ret void
}

declare dso_local i32 @wr_dps_start(%struct.coff_sfile*, %struct.coff_section*, %struct.coff_scope*, i32, i32) #1

declare dso_local i32 @wr_globals(i32, %struct.coff_sfile*, i32) #1

declare dso_local i32 @walk_tree_symbol(%struct.coff_sfile*, %struct.coff_section*, %struct.coff_symbol*, i32) #1

declare dso_local i32 @wr_dps_end(%struct.coff_section*, %struct.coff_scope*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
