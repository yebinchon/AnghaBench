; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_groups.c_groups_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_groups.c_groups_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group_info = type { i32, i32, i32**, i32*, i32 }

@NGROUPS_PER_BLOCK = common dso_local global i32 0, align 4
@GFP_USER = common dso_local global i32 0, align 4
@NGROUPS_SMALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.group_info* @groups_alloc(i32 %0) #0 {
  %2 = alloca %struct.group_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.group_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @NGROUPS_PER_BLOCK, align 4
  %10 = add nsw i32 %8, %9
  %11 = sub nsw i32 %10, 1
  %12 = load i32, i32* @NGROUPS_PER_BLOCK, align 4
  %13 = sdiv i32 %11, %12
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %18

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %17, %16
  %19 = phi i32 [ %14, %16 ], [ 1, %17 ]
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 8
  %23 = add i64 32, %22
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @GFP_USER, align 4
  %26 = call %struct.group_info* @kmalloc(i32 %24, i32 %25)
  store %struct.group_info* %26, %struct.group_info** %4, align 8
  %27 = load %struct.group_info*, %struct.group_info** %4, align 8
  %28 = icmp ne %struct.group_info* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %18
  store %struct.group_info* null, %struct.group_info** %2, align 8
  br label %96

30:                                               ; preds = %18
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.group_info*, %struct.group_info** %4, align 8
  %33 = getelementptr inbounds %struct.group_info, %struct.group_info* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.group_info*, %struct.group_info** %4, align 8
  %36 = getelementptr inbounds %struct.group_info, %struct.group_info* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.group_info*, %struct.group_info** %4, align 8
  %38 = getelementptr inbounds %struct.group_info, %struct.group_info* %37, i32 0, i32 4
  %39 = call i32 @atomic_set(i32* %38, i32 1)
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @NGROUPS_SMALL, align 4
  %42 = icmp sle i32 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %30
  %44 = load %struct.group_info*, %struct.group_info** %4, align 8
  %45 = getelementptr inbounds %struct.group_info, %struct.group_info* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.group_info*, %struct.group_info** %4, align 8
  %48 = getelementptr inbounds %struct.group_info, %struct.group_info* %47, i32 0, i32 2
  %49 = load i32**, i32*** %48, align 8
  %50 = getelementptr inbounds i32*, i32** %49, i64 0
  store i32* %46, i32** %50, align 8
  br label %76

51:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %72, %51
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %75

56:                                               ; preds = %52
  %57 = load i32, i32* @GFP_USER, align 4
  %58 = call i64 @__get_free_page(i32 %57)
  %59 = inttoptr i64 %58 to i8*
  %60 = bitcast i8* %59 to i32*
  store i32* %60, i32** %7, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %56
  br label %78

64:                                               ; preds = %56
  %65 = load i32*, i32** %7, align 8
  %66 = load %struct.group_info*, %struct.group_info** %4, align 8
  %67 = getelementptr inbounds %struct.group_info, %struct.group_info* %66, i32 0, i32 2
  %68 = load i32**, i32*** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  store i32* %65, i32** %71, align 8
  br label %72

72:                                               ; preds = %64
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %52

75:                                               ; preds = %52
  br label %76

76:                                               ; preds = %75, %43
  %77 = load %struct.group_info*, %struct.group_info** %4, align 8
  store %struct.group_info* %77, %struct.group_info** %2, align 8
  br label %96

78:                                               ; preds = %63
  br label %79

79:                                               ; preds = %83, %78
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %6, align 4
  %82 = icmp sge i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %79
  %84 = load %struct.group_info*, %struct.group_info** %4, align 8
  %85 = getelementptr inbounds %struct.group_info, %struct.group_info* %84, i32 0, i32 2
  %86 = load i32**, i32*** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32*, i32** %86, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = ptrtoint i32* %90 to i64
  %92 = call i32 @free_page(i64 %91)
  br label %79

93:                                               ; preds = %79
  %94 = load %struct.group_info*, %struct.group_info** %4, align 8
  %95 = call i32 @kfree(%struct.group_info* %94)
  store %struct.group_info* null, %struct.group_info** %2, align 8
  br label %96

96:                                               ; preds = %93, %76, %29
  %97 = load %struct.group_info*, %struct.group_info** %2, align 8
  ret %struct.group_info* %97
}

declare dso_local %struct.group_info* @kmalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @kfree(%struct.group_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
