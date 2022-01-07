; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_search.c_dfs_lookup_base.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_search.c_dfs_lookup_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lookup_base_data_s = type { i64, i32, i32, i32, i64, i32, i32 }

@NULL_TREE = common dso_local global i64 0, align 8
@dfs_skip_bases = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i8*)* @dfs_lookup_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dfs_lookup_base(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lookup_base_data_s*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.lookup_base_data_s*
  store %struct.lookup_base_data_s* %8, %struct.lookup_base_data_s** %6, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @BINFO_TYPE(i64 %9)
  %11 = load %struct.lookup_base_data_s*, %struct.lookup_base_data_s** %6, align 8
  %12 = getelementptr inbounds %struct.lookup_base_data_s, %struct.lookup_base_data_s* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @SAME_BINFO_TYPE_P(i32 %10, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %92

16:                                               ; preds = %2
  %17 = load %struct.lookup_base_data_s*, %struct.lookup_base_data_s** %6, align 8
  %18 = getelementptr inbounds %struct.lookup_base_data_s, %struct.lookup_base_data_s* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %57, label %21

21:                                               ; preds = %16
  %22 = load i64, i64* %4, align 8
  %23 = load %struct.lookup_base_data_s*, %struct.lookup_base_data_s** %6, align 8
  %24 = getelementptr inbounds %struct.lookup_base_data_s, %struct.lookup_base_data_s* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.lookup_base_data_s*, %struct.lookup_base_data_s** %6, align 8
  %26 = getelementptr inbounds %struct.lookup_base_data_s, %struct.lookup_base_data_s* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.lookup_base_data_s*, %struct.lookup_base_data_s** %6, align 8
  %29 = getelementptr inbounds %struct.lookup_base_data_s, %struct.lookup_base_data_s* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @binfo_via_virtual(i64 %27, i32 %30)
  %32 = load i64, i64* @NULL_TREE, align 8
  %33 = icmp ne i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load %struct.lookup_base_data_s*, %struct.lookup_base_data_s** %6, align 8
  %36 = getelementptr inbounds %struct.lookup_base_data_s, %struct.lookup_base_data_s* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load %struct.lookup_base_data_s*, %struct.lookup_base_data_s** %6, align 8
  %38 = getelementptr inbounds %struct.lookup_base_data_s, %struct.lookup_base_data_s* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %21
  %42 = load i64, i64* %4, align 8
  store i64 %42, i64* %3, align 8
  br label %94

43:                                               ; preds = %21
  %44 = load %struct.lookup_base_data_s*, %struct.lookup_base_data_s** %6, align 8
  %45 = getelementptr inbounds %struct.lookup_base_data_s, %struct.lookup_base_data_s* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.lookup_base_data_s*, %struct.lookup_base_data_s** %6, align 8
  %50 = getelementptr inbounds %struct.lookup_base_data_s, %struct.lookup_base_data_s* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = load i64, i64* %4, align 8
  store i64 %54, i64* %3, align 8
  br label %94

55:                                               ; preds = %48, %43
  %56 = load i64, i64* @dfs_skip_bases, align 8
  store i64 %56, i64* %3, align 8
  br label %94

57:                                               ; preds = %16
  %58 = load i64, i64* %4, align 8
  %59 = load %struct.lookup_base_data_s*, %struct.lookup_base_data_s** %6, align 8
  %60 = getelementptr inbounds %struct.lookup_base_data_s, %struct.lookup_base_data_s* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %58, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @gcc_assert(i32 %63)
  %65 = load %struct.lookup_base_data_s*, %struct.lookup_base_data_s** %6, align 8
  %66 = getelementptr inbounds %struct.lookup_base_data_s, %struct.lookup_base_data_s* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %57
  %70 = load i64, i64* @NULL_TREE, align 8
  %71 = load %struct.lookup_base_data_s*, %struct.lookup_base_data_s** %6, align 8
  %72 = getelementptr inbounds %struct.lookup_base_data_s, %struct.lookup_base_data_s* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load %struct.lookup_base_data_s*, %struct.lookup_base_data_s** %6, align 8
  %74 = getelementptr inbounds %struct.lookup_base_data_s, %struct.lookup_base_data_s* %73, i32 0, i32 2
  store i32 1, i32* %74, align 4
  %75 = load i64, i64* @error_mark_node, align 8
  store i64 %75, i64* %3, align 8
  br label %94

76:                                               ; preds = %57
  %77 = load i64, i64* %4, align 8
  %78 = load %struct.lookup_base_data_s*, %struct.lookup_base_data_s** %6, align 8
  %79 = getelementptr inbounds %struct.lookup_base_data_s, %struct.lookup_base_data_s* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @binfo_via_virtual(i64 %77, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %76
  %84 = load i64, i64* %4, align 8
  %85 = load %struct.lookup_base_data_s*, %struct.lookup_base_data_s** %6, align 8
  %86 = getelementptr inbounds %struct.lookup_base_data_s, %struct.lookup_base_data_s* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load %struct.lookup_base_data_s*, %struct.lookup_base_data_s** %6, align 8
  %88 = getelementptr inbounds %struct.lookup_base_data_s, %struct.lookup_base_data_s* %87, i32 0, i32 1
  store i32 0, i32* %88, align 8
  %89 = load i64, i64* %4, align 8
  store i64 %89, i64* %3, align 8
  br label %94

90:                                               ; preds = %76
  %91 = load i64, i64* @dfs_skip_bases, align 8
  store i64 %91, i64* %3, align 8
  br label %94

92:                                               ; preds = %2
  %93 = load i64, i64* @NULL_TREE, align 8
  store i64 %93, i64* %3, align 8
  br label %94

94:                                               ; preds = %92, %90, %83, %69, %55, %53, %41
  %95 = load i64, i64* %3, align 8
  ret i64 %95
}

declare dso_local i64 @SAME_BINFO_TYPE_P(i32, i32) #1

declare dso_local i32 @BINFO_TYPE(i64) #1

declare dso_local i64 @binfo_via_virtual(i64, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
