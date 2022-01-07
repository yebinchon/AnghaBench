; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-address.c_dump_mem_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-address.c_dump_mem_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_address = type { i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [9 x i8] c"symbol: \00", align 1
@TDF_SLIM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"base: \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"index: \00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"step: \00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"offset: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_mem_address(i32* %0, %struct.mem_address* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.mem_address*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.mem_address* %1, %struct.mem_address** %4, align 8
  %5 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %6 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %5, i32 0, i32 4
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @fprintf(i32* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %12 = load i32*, i32** %3, align 8
  %13 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %14 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* @TDF_SLIM, align 4
  %17 = call i32 @print_generic_expr(i32* %12, i64 %15, i32 %16)
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @fprintf(i32* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %9, %2
  %21 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %22 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @fprintf(i32* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i32*, i32** %3, align 8
  %29 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %30 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @TDF_SLIM, align 4
  %33 = call i32 @print_generic_expr(i32* %28, i64 %31, i32 %32)
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @fprintf(i32* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %25, %20
  %37 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %38 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @fprintf(i32* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %44 = load i32*, i32** %3, align 8
  %45 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %46 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @TDF_SLIM, align 4
  %49 = call i32 @print_generic_expr(i32* %44, i64 %47, i32 %48)
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @fprintf(i32* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %41, %36
  %53 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %54 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %52
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @fprintf(i32* %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %60 = load i32*, i32** %3, align 8
  %61 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %62 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* @TDF_SLIM, align 4
  %65 = call i32 @print_generic_expr(i32* %60, i64 %63, i32 %64)
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @fprintf(i32* %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %68

68:                                               ; preds = %57, %52
  %69 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %70 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %68
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @fprintf(i32* %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %76 = load i32*, i32** %3, align 8
  %77 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %78 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* @TDF_SLIM, align 4
  %81 = call i32 @print_generic_expr(i32* %76, i64 %79, i32 %80)
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @fprintf(i32* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %84

84:                                               ; preds = %73, %68
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i32 @print_generic_expr(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
