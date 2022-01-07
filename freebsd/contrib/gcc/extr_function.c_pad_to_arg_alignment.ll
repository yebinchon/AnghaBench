; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_pad_to_arg_alignment.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_pad_to_arg_alignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.args_size = type { i64, i8* }

@NULL_TREE = common dso_local global i8* null, align 8
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@STACK_POINTER_OFFSET = common dso_local global i64 0, align 8
@PARM_BOUNDARY = common dso_local global i32 0, align 4
@STACK_BOUNDARY = common dso_local global i32 0, align 4
@PLUS_EXPR = common dso_local global i32 0, align 4
@MINUS_EXPR = common dso_local global i32 0, align 4
@SPARC_STACK_BOUNDARY_HACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.args_size*, i32, %struct.args_size*)* @pad_to_arg_alignment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pad_to_arg_alignment(%struct.args_size* %0, i32 %1, %struct.args_size* %2) #0 {
  %4 = alloca %struct.args_size*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.args_size*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.args_size* %0, %struct.args_size** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.args_size* %2, %struct.args_size** %6, align 8
  %14 = load i8*, i8** @NULL_TREE, align 8
  store i8* %14, i8** %7, align 8
  store i64 0, i64* %8, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @BITS_PER_UNIT, align 4
  %17 = sdiv i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i64, i64* @STACK_POINTER_OFFSET, align 8
  store i64 %18, i64* %10, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @PARM_BOUNDARY, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @STACK_BOUNDARY, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load %struct.args_size*, %struct.args_size** %4, align 8
  %28 = getelementptr inbounds %struct.args_size, %struct.args_size* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %7, align 8
  %30 = load %struct.args_size*, %struct.args_size** %4, align 8
  %31 = getelementptr inbounds %struct.args_size, %struct.args_size* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %8, align 8
  br label %33

33:                                               ; preds = %26, %22, %3
  %34 = load i8*, i8** @NULL_TREE, align 8
  %35 = load %struct.args_size*, %struct.args_size** %6, align 8
  %36 = getelementptr inbounds %struct.args_size, %struct.args_size* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load %struct.args_size*, %struct.args_size** %6, align 8
  %38 = getelementptr inbounds %struct.args_size, %struct.args_size* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @BITS_PER_UNIT, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %121

42:                                               ; preds = %33
  %43 = load %struct.args_size*, %struct.args_size** %4, align 8
  %44 = getelementptr inbounds %struct.args_size, %struct.args_size* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %90

47:                                               ; preds = %42
  %48 = load i64, i64* %10, align 8
  %49 = call i8* @ssize_int(i64 %48)
  store i8* %49, i8** %11, align 8
  %50 = load i32, i32* @PLUS_EXPR, align 4
  %51 = load %struct.args_size*, %struct.args_size** %4, align 8
  %52 = bitcast %struct.args_size* %51 to { i64, i8* }*
  %53 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %52, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i8* @ARGS_SIZE_TREE(i64 %54, i8* %56)
  %58 = load i8*, i8** %11, align 8
  %59 = call i8* @size_binop(i32 %50, i8* %57, i8* %58)
  store i8* %59, i8** %12, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @BITS_PER_UNIT, align 4
  %63 = sdiv i32 %61, %62
  %64 = call i8* @round_up(i8* %60, i32 %63)
  store i8* %64, i8** %13, align 8
  %65 = load i32, i32* @MINUS_EXPR, align 4
  %66 = load i8*, i8** %13, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = call i8* @size_binop(i32 %65, i8* %66, i8* %67)
  %69 = load %struct.args_size*, %struct.args_size** %4, align 8
  %70 = getelementptr inbounds %struct.args_size, %struct.args_size* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  %71 = load %struct.args_size*, %struct.args_size** %4, align 8
  %72 = getelementptr inbounds %struct.args_size, %struct.args_size* %71, i32 0, i32 0
  store i64 0, i64* %72, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @PARM_BOUNDARY, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %89

76:                                               ; preds = %47
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @STACK_BOUNDARY, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %76
  %81 = load i32, i32* @MINUS_EXPR, align 4
  %82 = load %struct.args_size*, %struct.args_size** %4, align 8
  %83 = getelementptr inbounds %struct.args_size, %struct.args_size* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = call i8* @size_binop(i32 %81, i8* %84, i8* %85)
  %87 = load %struct.args_size*, %struct.args_size** %6, align 8
  %88 = getelementptr inbounds %struct.args_size, %struct.args_size* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  br label %89

89:                                               ; preds = %80, %76, %47
  br label %120

90:                                               ; preds = %42
  %91 = load i64, i64* %10, align 8
  %92 = sub nsw i64 0, %91
  %93 = load %struct.args_size*, %struct.args_size** %4, align 8
  %94 = getelementptr inbounds %struct.args_size, %struct.args_size* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %10, align 8
  %97 = add nsw i64 %95, %96
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @CEIL_ROUND(i64 %97, i32 %98)
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %92, %100
  %102 = load %struct.args_size*, %struct.args_size** %4, align 8
  %103 = getelementptr inbounds %struct.args_size, %struct.args_size* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @PARM_BOUNDARY, align 4
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %107, label %119

107:                                              ; preds = %90
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @STACK_BOUNDARY, align 4
  %110 = icmp sgt i32 %108, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %107
  %112 = load %struct.args_size*, %struct.args_size** %4, align 8
  %113 = getelementptr inbounds %struct.args_size, %struct.args_size* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %8, align 8
  %116 = sub nsw i64 %114, %115
  %117 = load %struct.args_size*, %struct.args_size** %6, align 8
  %118 = getelementptr inbounds %struct.args_size, %struct.args_size* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  br label %119

119:                                              ; preds = %111, %107, %90
  br label %120

120:                                              ; preds = %119, %89
  br label %121

121:                                              ; preds = %120, %33
  ret void
}

declare dso_local i8* @ssize_int(i64) #1

declare dso_local i8* @size_binop(i32, i8*, i8*) #1

declare dso_local i8* @ARGS_SIZE_TREE(i64, i8*) #1

declare dso_local i8* @round_up(i8*, i32) #1

declare dso_local i32 @CEIL_ROUND(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
