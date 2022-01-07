; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-scan.c_df_reorganize_refs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-scan.c_df_reorganize_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.df_ref_info = type { i32, i32, i32, i32, i32, %struct.df_ref**, %struct.df_reg_info** }
%struct.df_ref = type { i32 }
%struct.df_reg_info = type { i32, i32, %struct.df_ref* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @df_reorganize_refs(%struct.df_ref_info* %0) #0 {
  %2 = alloca %struct.df_ref_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.df_reg_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.df_ref*, align 8
  %11 = alloca i32, align 4
  store %struct.df_ref_info* %0, %struct.df_ref_info** %2, align 8
  %12 = load %struct.df_ref_info*, %struct.df_ref_info** %2, align 8
  %13 = getelementptr inbounds %struct.df_ref_info, %struct.df_ref_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %3, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %15 = load %struct.df_ref_info*, %struct.df_ref_info** %2, align 8
  %16 = getelementptr inbounds %struct.df_ref_info, %struct.df_ref_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %97

20:                                               ; preds = %1
  %21 = load %struct.df_ref_info*, %struct.df_ref_info** %2, align 8
  %22 = getelementptr inbounds %struct.df_ref_info, %struct.df_ref_info* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.df_ref_info*, %struct.df_ref_info** %2, align 8
  %25 = getelementptr inbounds %struct.df_ref_info, %struct.df_ref_info* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %20
  %29 = load %struct.df_ref_info*, %struct.df_ref_info** %2, align 8
  %30 = getelementptr inbounds %struct.df_ref_info, %struct.df_ref_info* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.df_ref_info*, %struct.df_ref_info** %2, align 8
  %33 = getelementptr inbounds %struct.df_ref_info, %struct.df_ref_info* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = sdiv i32 %34, 4
  %36 = add nsw i32 %31, %35
  store i32 %36, i32* %7, align 4
  %37 = load %struct.df_ref_info*, %struct.df_ref_info** %2, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @df_grow_ref_info(%struct.df_ref_info* %37, i32 %38)
  br label %40

40:                                               ; preds = %28, %20
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %86, %40
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %3, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %89

45:                                               ; preds = %41
  %46 = load %struct.df_ref_info*, %struct.df_ref_info** %2, align 8
  %47 = getelementptr inbounds %struct.df_ref_info, %struct.df_ref_info* %46, i32 0, i32 6
  %48 = load %struct.df_reg_info**, %struct.df_reg_info*** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.df_reg_info*, %struct.df_reg_info** %48, i64 %50
  %52 = load %struct.df_reg_info*, %struct.df_reg_info** %51, align 8
  store %struct.df_reg_info* %52, %struct.df_reg_info** %8, align 8
  store i32 0, i32* %9, align 4
  %53 = load %struct.df_reg_info*, %struct.df_reg_info** %8, align 8
  %54 = icmp ne %struct.df_reg_info* %53, null
  br i1 %54, label %55, label %85

55:                                               ; preds = %45
  %56 = load %struct.df_reg_info*, %struct.df_reg_info** %8, align 8
  %57 = getelementptr inbounds %struct.df_reg_info, %struct.df_reg_info* %56, i32 0, i32 2
  %58 = load %struct.df_ref*, %struct.df_ref** %57, align 8
  store %struct.df_ref* %58, %struct.df_ref** %10, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.df_reg_info*, %struct.df_reg_info** %8, align 8
  %61 = getelementptr inbounds %struct.df_reg_info, %struct.df_reg_info* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %65, %55
  %63 = load %struct.df_ref*, %struct.df_ref** %10, align 8
  %64 = icmp ne %struct.df_ref* %63, null
  br i1 %64, label %65, label %81

65:                                               ; preds = %62
  %66 = load %struct.df_ref*, %struct.df_ref** %10, align 8
  %67 = load %struct.df_ref_info*, %struct.df_ref_info** %2, align 8
  %68 = getelementptr inbounds %struct.df_ref_info, %struct.df_ref_info* %67, i32 0, i32 5
  %69 = load %struct.df_ref**, %struct.df_ref*** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.df_ref*, %struct.df_ref** %69, i64 %71
  store %struct.df_ref* %66, %struct.df_ref** %72, align 8
  %73 = load i32, i32* %5, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %5, align 4
  store i32 %73, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @DF_REF_NEXT_REG(i32 %75)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %6, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %62

81:                                               ; preds = %62
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.df_reg_info*, %struct.df_reg_info** %8, align 8
  %84 = getelementptr inbounds %struct.df_reg_info, %struct.df_reg_info* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %81, %45
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %4, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %4, align 4
  br label %41

89:                                               ; preds = %41
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.df_ref_info*, %struct.df_ref_info** %2, align 8
  %92 = getelementptr inbounds %struct.df_ref_info, %struct.df_ref_info* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  %93 = load %struct.df_ref_info*, %struct.df_ref_info** %2, align 8
  %94 = getelementptr inbounds %struct.df_ref_info, %struct.df_ref_info* %93, i32 0, i32 1
  store i32 1, i32* %94, align 4
  %95 = load %struct.df_ref_info*, %struct.df_ref_info** %2, align 8
  %96 = getelementptr inbounds %struct.df_ref_info, %struct.df_ref_info* %95, i32 0, i32 4
  store i32 1, i32* %96, align 8
  br label %97

97:                                               ; preds = %89, %19
  ret void
}

declare dso_local i32 @df_grow_ref_info(%struct.df_ref_info*, i32) #1

declare dso_local i32 @DF_REF_NEXT_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
