; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_expr.c_expr_extract_eq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_expr.c_expr_extract_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expr = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.expr* }
%struct.TYPE_3__ = type { %struct.expr* }

@E_AND = common dso_local global i32 0, align 4
@symbol_yes = common dso_local global i32 0, align 4
@E_OR = common dso_local global i32 0, align 4
@symbol_no = common dso_local global i32 0, align 4
@e1 = common dso_local global %struct.expr* null, align 8
@e2 = common dso_local global %struct.expr* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @expr_extract_eq(i32 %0, %struct.expr** %1, %struct.expr** %2, %struct.expr** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.expr**, align 8
  %7 = alloca %struct.expr**, align 8
  %8 = alloca %struct.expr**, align 8
  store i32 %0, i32* %5, align 4
  store %struct.expr** %1, %struct.expr*** %6, align 8
  store %struct.expr** %2, %struct.expr*** %7, align 8
  store %struct.expr** %3, %struct.expr*** %8, align 8
  %9 = load %struct.expr**, %struct.expr*** %7, align 8
  %10 = load %struct.expr*, %struct.expr** %9, align 8
  %11 = getelementptr inbounds %struct.expr, %struct.expr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.expr**, %struct.expr*** %6, align 8
  %18 = load %struct.expr**, %struct.expr*** %7, align 8
  %19 = load %struct.expr*, %struct.expr** %18, align 8
  %20 = getelementptr inbounds %struct.expr, %struct.expr* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.expr**, %struct.expr*** %8, align 8
  call void @expr_extract_eq(i32 %16, %struct.expr** %17, %struct.expr** %21, %struct.expr** %22)
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.expr**, %struct.expr*** %6, align 8
  %25 = load %struct.expr**, %struct.expr*** %7, align 8
  %26 = load %struct.expr*, %struct.expr** %25, align 8
  %27 = getelementptr inbounds %struct.expr, %struct.expr* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.expr**, %struct.expr*** %8, align 8
  call void @expr_extract_eq(i32 %23, %struct.expr** %24, %struct.expr** %28, %struct.expr** %29)
  br label %102

30:                                               ; preds = %4
  %31 = load %struct.expr**, %struct.expr*** %8, align 8
  %32 = load %struct.expr*, %struct.expr** %31, align 8
  %33 = getelementptr inbounds %struct.expr, %struct.expr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %30
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.expr**, %struct.expr*** %6, align 8
  %40 = load %struct.expr**, %struct.expr*** %7, align 8
  %41 = load %struct.expr**, %struct.expr*** %8, align 8
  %42 = load %struct.expr*, %struct.expr** %41, align 8
  %43 = getelementptr inbounds %struct.expr, %struct.expr* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  call void @expr_extract_eq(i32 %38, %struct.expr** %39, %struct.expr** %40, %struct.expr** %44)
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.expr**, %struct.expr*** %6, align 8
  %47 = load %struct.expr**, %struct.expr*** %7, align 8
  %48 = load %struct.expr**, %struct.expr*** %8, align 8
  %49 = load %struct.expr*, %struct.expr** %48, align 8
  %50 = getelementptr inbounds %struct.expr, %struct.expr* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  call void @expr_extract_eq(i32 %45, %struct.expr** %46, %struct.expr** %47, %struct.expr** %51)
  br label %102

52:                                               ; preds = %30
  %53 = load %struct.expr**, %struct.expr*** %7, align 8
  %54 = load %struct.expr*, %struct.expr** %53, align 8
  %55 = load %struct.expr**, %struct.expr*** %8, align 8
  %56 = load %struct.expr*, %struct.expr** %55, align 8
  %57 = call i64 @expr_eq(%struct.expr* %54, %struct.expr* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %102

59:                                               ; preds = %52
  %60 = load %struct.expr**, %struct.expr*** %6, align 8
  %61 = load %struct.expr*, %struct.expr** %60, align 8
  %62 = icmp ne %struct.expr* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.expr**, %struct.expr*** %6, align 8
  %66 = load %struct.expr*, %struct.expr** %65, align 8
  %67 = load %struct.expr**, %struct.expr*** %7, align 8
  %68 = load %struct.expr*, %struct.expr** %67, align 8
  %69 = call %struct.expr* @expr_alloc_two(i32 %64, %struct.expr* %66, %struct.expr* %68)
  br label %73

70:                                               ; preds = %59
  %71 = load %struct.expr**, %struct.expr*** %7, align 8
  %72 = load %struct.expr*, %struct.expr** %71, align 8
  br label %73

73:                                               ; preds = %70, %63
  %74 = phi %struct.expr* [ %69, %63 ], [ %72, %70 ]
  %75 = load %struct.expr**, %struct.expr*** %6, align 8
  store %struct.expr* %74, %struct.expr** %75, align 8
  %76 = load %struct.expr**, %struct.expr*** %8, align 8
  %77 = load %struct.expr*, %struct.expr** %76, align 8
  %78 = call i32 @expr_free(%struct.expr* %77)
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @E_AND, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %73
  %83 = call i8* @expr_alloc_symbol(i32* @symbol_yes)
  %84 = bitcast i8* %83 to %struct.expr*
  %85 = load %struct.expr**, %struct.expr*** %7, align 8
  store %struct.expr* %84, %struct.expr** %85, align 8
  %86 = call i8* @expr_alloc_symbol(i32* @symbol_yes)
  %87 = bitcast i8* %86 to %struct.expr*
  %88 = load %struct.expr**, %struct.expr*** %8, align 8
  store %struct.expr* %87, %struct.expr** %88, align 8
  br label %101

89:                                               ; preds = %73
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @E_OR, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %89
  %94 = call i8* @expr_alloc_symbol(i32* @symbol_no)
  %95 = bitcast i8* %94 to %struct.expr*
  %96 = load %struct.expr**, %struct.expr*** %7, align 8
  store %struct.expr* %95, %struct.expr** %96, align 8
  %97 = call i8* @expr_alloc_symbol(i32* @symbol_no)
  %98 = bitcast i8* %97 to %struct.expr*
  %99 = load %struct.expr**, %struct.expr*** %8, align 8
  store %struct.expr* %98, %struct.expr** %99, align 8
  br label %100

100:                                              ; preds = %93, %89
  br label %101

101:                                              ; preds = %100, %82
  br label %102

102:                                              ; preds = %15, %37, %101, %52
  ret void
}

declare dso_local i64 @expr_eq(%struct.expr*, %struct.expr*) #1

declare dso_local %struct.expr* @expr_alloc_two(i32, %struct.expr*, %struct.expr*) #1

declare dso_local i32 @expr_free(%struct.expr*) #1

declare dso_local i8* @expr_alloc_symbol(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
