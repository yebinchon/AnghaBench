; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_calls.c_finalize_must_preallocate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_calls.c_finalize_must_preallocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg_data = type { i64, i64, i32, i32 }
%struct.args_size = type { i32 }

@BLKmode = common dso_local global i64 0, align 8
@CALL_EXPR = common dso_local global i64 0, align 8
@TARGET_EXPR = common dso_local global i64 0, align 8
@COND_EXPR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.arg_data*, %struct.args_size*)* @finalize_must_preallocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @finalize_must_preallocate(i32 %0, i32 %1, %struct.arg_data* %2, %struct.args_size* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.arg_data*, align 8
  %8 = alloca %struct.args_size*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.arg_data* %2, %struct.arg_data** %7, align 8
  store %struct.args_size* %3, %struct.args_size** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %137, label %14

14:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %120, %14
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi i1 [ false, %15 ], [ %22, %19 ]
  br i1 %24, label %25, label %123

25:                                               ; preds = %23
  %26 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %26, i64 %28
  %30 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %25
  %34 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %34, i64 %36
  %38 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %33
  store i32 1, i32* %9, align 4
  br label %55

42:                                               ; preds = %33, %25
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %46, i64 %48
  %50 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  store i32 1, i32* %5, align 4
  br label %54

54:                                               ; preds = %53, %45, %42
  br label %55

55:                                               ; preds = %54, %41
  %56 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %56, i64 %58
  %60 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @TREE_TYPE(i32 %61)
  %63 = call i64 @TYPE_MODE(i32 %62)
  %64 = load i64, i64* @BLKmode, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %119

66:                                               ; preds = %55
  %67 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %67, i64 %69
  %71 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @TREE_CODE(i32 %72)
  %74 = load i64, i64* @CALL_EXPR, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %106, label %76

76:                                               ; preds = %66
  %77 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %77, i64 %79
  %81 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @TREE_CODE(i32 %82)
  %84 = load i64, i64* @TARGET_EXPR, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %106, label %86

86:                                               ; preds = %76
  %87 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %87, i64 %89
  %91 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @TREE_CODE(i32 %92)
  %94 = load i64, i64* @COND_EXPR, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %106, label %96

96:                                               ; preds = %86
  %97 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %97, i64 %99
  %101 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @TREE_TYPE(i32 %102)
  %104 = call i64 @TREE_ADDRESSABLE(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %96, %86, %76, %66
  %107 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %107, i64 %109
  %111 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @TREE_TYPE(i32 %112)
  %114 = call i64 @int_size_in_bytes(i32 %113)
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %114
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %10, align 4
  br label %119

119:                                              ; preds = %106, %96, %55
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %11, align 4
  br label %15

123:                                              ; preds = %23
  %124 = load i32, i32* %10, align 4
  %125 = mul nsw i32 %124, 2
  %126 = load %struct.args_size*, %struct.args_size** %8, align 8
  %127 = getelementptr inbounds %struct.args_size, %struct.args_size* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp sge i32 %125, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %123
  %131 = load %struct.args_size*, %struct.args_size** %8, align 8
  %132 = getelementptr inbounds %struct.args_size, %struct.args_size* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  store i32 1, i32* %5, align 4
  br label %136

136:                                              ; preds = %135, %130, %123
  br label %137

137:                                              ; preds = %136, %4
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local i64 @TYPE_MODE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @TREE_ADDRESSABLE(i32) #1

declare dso_local i64 @int_size_in_bytes(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
