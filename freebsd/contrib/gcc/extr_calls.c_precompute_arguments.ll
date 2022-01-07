; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_calls.c_precompute_arguments.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_calls.c_precompute_arguments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg_data = type { i32, i32, i32, i32, i32 }

@ECF_LIBCALL_BLOCK = common dso_local global i32 0, align 4
@ACCUMULATE_OUTGOING_ARGS = common dso_local global i32 0, align 4
@CALL_EXPR = common dso_local global i64 0, align 8
@MODE_INT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.arg_data*)* @precompute_arguments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @precompute_arguments(i32 %0, i32 %1, %struct.arg_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.arg_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.arg_data* %2, %struct.arg_data** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @ECF_LIBCALL_BLOCK, align 4
  %11 = and i32 %9, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i32, i32* @ACCUMULATE_OUTGOING_ARGS, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  br label %114

17:                                               ; preds = %13, %3
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %111, %17
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %114

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @ECF_LIBCALL_BLOCK, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load %struct.arg_data*, %struct.arg_data** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %28, i64 %30
  %32 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @TREE_CODE(i32 %33)
  %35 = load i64, i64* @CALL_EXPR, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %111

38:                                               ; preds = %27, %22
  %39 = load %struct.arg_data*, %struct.arg_data** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %39, i64 %41
  %43 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @TREE_TYPE(i32 %44)
  %46 = call i32 @TREE_ADDRESSABLE(i32 %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i32 @gcc_assert(i32 %49)
  %51 = load %struct.arg_data*, %struct.arg_data** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %51, i64 %53
  %55 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @expand_normal(i32 %56)
  %58 = load %struct.arg_data*, %struct.arg_data** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %58, i64 %60
  %62 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %61, i32 0, i32 3
  store i32 %57, i32* %62, align 4
  %63 = load %struct.arg_data*, %struct.arg_data** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %63, i64 %65
  %67 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %66, i32 0, i32 2
  store i32 %57, i32* %67, align 4
  %68 = load %struct.arg_data*, %struct.arg_data** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %68, i64 %70
  %72 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @TREE_TYPE(i32 %73)
  %75 = call i32 @TYPE_MODE(i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.arg_data*, %struct.arg_data** %6, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %77, i64 %79
  %81 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %76, %82
  br i1 %83, label %84, label %110

84:                                               ; preds = %38
  %85 = load %struct.arg_data*, %struct.arg_data** %6, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %85, i64 %87
  %89 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.arg_data*, %struct.arg_data** %6, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %92, i64 %94
  %96 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.arg_data*, %struct.arg_data** %6, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %98, i64 %100
  %102 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @convert_modes(i32 %90, i32 %91, i32 %97, i32 %103)
  %105 = load %struct.arg_data*, %struct.arg_data** %6, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %105, i64 %107
  %109 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %108, i32 0, i32 3
  store i32 %104, i32* %109, align 4
  br label %110

110:                                              ; preds = %84, %38
  br label %111

111:                                              ; preds = %110, %37
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %7, align 4
  br label %18

114:                                              ; preds = %16, %18
  ret void
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @TREE_ADDRESSABLE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @expand_normal(i32) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i32 @convert_modes(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
