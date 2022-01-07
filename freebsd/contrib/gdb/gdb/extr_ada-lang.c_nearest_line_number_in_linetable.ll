; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_nearest_line_number_in_linetable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_nearest_line_number_in_linetable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linetable = type { i32, %struct.linetable_entry* }
%struct.linetable_entry = type { i32, i64 }
%struct.symbol = type { i32 }

@INT_MAX = common dso_local global i32 0, align 4
@VAR_DOMAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.linetable*, i32)* @nearest_line_number_in_linetable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nearest_line_number_in_linetable(%struct.linetable* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.linetable*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.linetable_entry*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.symbol*, align 8
  store %struct.linetable* %0, %struct.linetable** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %2
  %18 = load %struct.linetable*, %struct.linetable** %4, align 8
  %19 = icmp eq %struct.linetable* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = load %struct.linetable*, %struct.linetable** %4, align 8
  %22 = getelementptr inbounds %struct.linetable, %struct.linetable* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %17, %2
  store i32 -1, i32* %3, align 4
  br label %123

26:                                               ; preds = %20
  %27 = load %struct.linetable*, %struct.linetable** %4, align 8
  %28 = getelementptr inbounds %struct.linetable, %struct.linetable* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %30 = load i32, i32* @INT_MAX, align 4
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %111, %107, %26
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %114

35:                                               ; preds = %31
  %36 = load %struct.linetable*, %struct.linetable** %4, align 8
  %37 = getelementptr inbounds %struct.linetable, %struct.linetable* %36, i32 0, i32 1
  %38 = load %struct.linetable_entry*, %struct.linetable_entry** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %38, i64 %40
  store %struct.linetable_entry* %41, %struct.linetable_entry** %10, align 8
  %42 = load %struct.linetable_entry*, %struct.linetable_entry** %10, align 8
  %43 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %111

47:                                               ; preds = %35
  %48 = load %struct.linetable_entry*, %struct.linetable_entry** %10, align 8
  %49 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %111

53:                                               ; preds = %47
  store i8* null, i8** %11, align 8
  %54 = load %struct.linetable_entry*, %struct.linetable_entry** %10, align 8
  %55 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @find_pc_partial_function(i64 %56, i8** %11, i64* %12, i64* %13)
  %58 = load i8*, i8** %11, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %110

60:                                               ; preds = %53
  %61 = load %struct.linetable_entry*, %struct.linetable_entry** %10, align 8
  %62 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %13, align 8
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %66, label %110

66:                                               ; preds = %60
  %67 = load %struct.linetable_entry*, %struct.linetable_entry** %10, align 8
  %68 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i32, i32* %5, align 4
  store i32 %73, i32* %3, align 4
  br label %123

74:                                               ; preds = %66
  %75 = load i8*, i8** %11, align 8
  %76 = load i32, i32* @VAR_DOMAIN, align 4
  %77 = call %struct.symbol* @standard_lookup(i8* %75, i32 %76)
  store %struct.symbol* %77, %struct.symbol** %14, align 8
  %78 = load %struct.symbol*, %struct.symbol** %14, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i64 @is_plausible_func_for_line(%struct.symbol* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %74
  %83 = load %struct.linetable_entry*, %struct.linetable_entry** %10, align 8
  %84 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %8, align 4
  br label %108

86:                                               ; preds = %74
  br label %87

87:                                               ; preds = %105, %86
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %90
  %95 = load %struct.linetable*, %struct.linetable** %4, align 8
  %96 = getelementptr inbounds %struct.linetable, %struct.linetable* %95, i32 0, i32 1
  %97 = load %struct.linetable_entry*, %struct.linetable_entry** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %97, i64 %99
  %101 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %13, align 8
  %104 = icmp slt i64 %102, %103
  br label %105

105:                                              ; preds = %94, %90
  %106 = phi i1 [ false, %90 ], [ %104, %94 ]
  br i1 %106, label %87, label %107

107:                                              ; preds = %105
  br label %31

108:                                              ; preds = %82
  br label %109

109:                                              ; preds = %108
  br label %110

110:                                              ; preds = %109, %60, %53
  br label %111

111:                                              ; preds = %110, %47, %35
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %6, align 4
  br label %31

114:                                              ; preds = %31
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @INT_MAX, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  br label %121

119:                                              ; preds = %114
  %120 = load i32, i32* %8, align 4
  br label %121

121:                                              ; preds = %119, %118
  %122 = phi i32 [ -1, %118 ], [ %120, %119 ]
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %121, %72, %25
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @find_pc_partial_function(i64, i8**, i64*, i64*) #1

declare dso_local %struct.symbol* @standard_lookup(i8*, i32) #1

declare dso_local i64 @is_plausible_func_for_line(%struct.symbol*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
