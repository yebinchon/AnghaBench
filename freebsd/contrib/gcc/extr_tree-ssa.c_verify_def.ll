; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa.c_verify_def.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa.c_verify_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [51 x i8] c"SSA_NAME created in two different blocks %i and %i\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"SSA_NAME_DEF_STMT is wrong\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Expected definition statement:\0A\00", align 1
@TDF_VOPS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"\0AActual definition statement:\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"while verifying SSA_NAME \00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c" in statement\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.TYPE_4__**, i64, i64, i32)* @verify_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_def(%struct.TYPE_4__* %0, %struct.TYPE_4__** %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.TYPE_4__**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__** %1, %struct.TYPE_4__*** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load i64, i64* %9, align 8
  %13 = load i32, i32* %11, align 4
  %14 = call i64 @verify_ssa_name(i64 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  br label %62

17:                                               ; preds = %5
  %18 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  %19 = load i64, i64* %9, align 8
  %20 = call i64 @SSA_NAME_VERSION(i64 %19)
  %21 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %18, i64 %20
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %24, label %36

24:                                               ; preds = %17
  %25 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i64 @SSA_NAME_VERSION(i64 %26)
  %28 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %25, i64 %27
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %31, i8* %34)
  br label %62

36:                                               ; preds = %17
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %38 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call i64 @SSA_NAME_VERSION(i64 %39)
  %41 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %38, i64 %40
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** %41, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i64 @SSA_NAME_DEF_STMT(i64 %42)
  %44 = load i64, i64* %10, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %36
  %47 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @stderr, align 4
  %49 = call i32 @fprintf(i32 %48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* @stderr, align 4
  %51 = load i64, i64* %9, align 8
  %52 = call i64 @SSA_NAME_DEF_STMT(i64 %51)
  %53 = load i32, i32* @TDF_VOPS, align 4
  %54 = call i32 @print_generic_stmt(i32 %50, i64 %52, i32 %53)
  %55 = load i32, i32* @stderr, align 4
  %56 = call i32 @fprintf(i32 %55, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i32, i32* @stderr, align 4
  %58 = load i64, i64* %10, align 8
  %59 = load i32, i32* @TDF_VOPS, align 4
  %60 = call i32 @print_generic_stmt(i32 %57, i64 %58, i32 %59)
  br label %62

61:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %74

62:                                               ; preds = %46, %24, %16
  %63 = load i32, i32* @stderr, align 4
  %64 = call i32 @fprintf(i32 %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %65 = load i32, i32* @stderr, align 4
  %66 = load i64, i64* %9, align 8
  %67 = call i32 @print_generic_expr(i32 %65, i64 %66, i32 0)
  %68 = load i32, i32* @stderr, align 4
  %69 = call i32 @fprintf(i32 %68, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %70 = load i32, i32* @stderr, align 4
  %71 = load i64, i64* %10, align 8
  %72 = load i32, i32* @TDF_VOPS, align 4
  %73 = call i32 @print_generic_stmt(i32 %70, i64 %71, i32 %72)
  store i32 1, i32* %6, align 4
  br label %74

74:                                               ; preds = %62, %61
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i64 @verify_ssa_name(i64, i32) #1

declare dso_local i64 @SSA_NAME_VERSION(i64) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i64 @SSA_NAME_DEF_STMT(i64) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @print_generic_stmt(i32, i64, i32) #1

declare dso_local i32 @print_generic_expr(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
