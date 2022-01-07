; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_postreload-gcse.c_insert_expr_in_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_postreload-gcse.c_insert_expr_in_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expr = type { %struct.occr*, i32, i8* }
%struct.occr = type { i8*, i64, %struct.occr* }

@expr_obstack = common dso_local global i32 0, align 4
@expr_table = common dso_local global i32 0, align 4
@INSERT = common dso_local global i32 0, align 4
@occr_obstack = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @insert_expr_in_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_expr_in_table(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.expr*, align 8
  %8 = alloca %struct.expr**, align 8
  %9 = alloca %struct.occr*, align 8
  %10 = alloca %struct.occr*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.occr* null, %struct.occr** %10, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @hash_expr(i8* %11, i32* %5)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %96

16:                                               ; preds = %2
  %17 = call i64 @obstack_alloc(i32* @expr_obstack, i32 24)
  %18 = inttoptr i64 %17 to %struct.expr*
  store %struct.expr* %18, %struct.expr** %7, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = load %struct.expr*, %struct.expr** %7, align 8
  %21 = getelementptr inbounds %struct.expr, %struct.expr* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.expr*, %struct.expr** %7, align 8
  %24 = getelementptr inbounds %struct.expr, %struct.expr* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load %struct.expr*, %struct.expr** %7, align 8
  %26 = getelementptr inbounds %struct.expr, %struct.expr* %25, i32 0, i32 0
  store %struct.occr* null, %struct.occr** %26, align 8
  %27 = load i32, i32* @expr_table, align 4
  %28 = load %struct.expr*, %struct.expr** %7, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @INSERT, align 4
  %31 = call i64 @htab_find_slot_with_hash(i32 %27, %struct.expr* %28, i32 %29, i32 %30)
  %32 = inttoptr i64 %31 to %struct.expr**
  store %struct.expr** %32, %struct.expr*** %8, align 8
  %33 = load %struct.expr**, %struct.expr*** %8, align 8
  %34 = load %struct.expr*, %struct.expr** %33, align 8
  %35 = icmp ne %struct.expr* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %16
  %37 = load %struct.expr*, %struct.expr** %7, align 8
  %38 = load %struct.expr**, %struct.expr*** %8, align 8
  store %struct.expr* %37, %struct.expr** %38, align 8
  br label %44

39:                                               ; preds = %16
  %40 = load %struct.expr*, %struct.expr** %7, align 8
  %41 = call i32 @obstack_free(i32* @expr_obstack, %struct.expr* %40)
  %42 = load %struct.expr**, %struct.expr*** %8, align 8
  %43 = load %struct.expr*, %struct.expr** %42, align 8
  store %struct.expr* %43, %struct.expr** %7, align 8
  br label %44

44:                                               ; preds = %39, %36
  %45 = load %struct.expr*, %struct.expr** %7, align 8
  %46 = getelementptr inbounds %struct.expr, %struct.expr* %45, i32 0, i32 0
  %47 = load %struct.occr*, %struct.occr** %46, align 8
  store %struct.occr* %47, %struct.occr** %9, align 8
  br label %48

48:                                               ; preds = %61, %44
  %49 = load %struct.occr*, %struct.occr** %9, align 8
  %50 = icmp ne %struct.occr* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load %struct.occr*, %struct.occr** %9, align 8
  %53 = getelementptr inbounds %struct.occr, %struct.occr* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @BLOCK_NUM(i8* %54)
  %56 = load i8*, i8** %4, align 8
  %57 = call i64 @BLOCK_NUM(i8* %56)
  %58 = icmp ne i64 %55, %57
  br label %59

59:                                               ; preds = %51, %48
  %60 = phi i1 [ false, %48 ], [ %58, %51 ]
  br i1 %60, label %61, label %66

61:                                               ; preds = %59
  %62 = load %struct.occr*, %struct.occr** %9, align 8
  store %struct.occr* %62, %struct.occr** %10, align 8
  %63 = load %struct.occr*, %struct.occr** %9, align 8
  %64 = getelementptr inbounds %struct.occr, %struct.occr* %63, i32 0, i32 2
  %65 = load %struct.occr*, %struct.occr** %64, align 8
  store %struct.occr* %65, %struct.occr** %9, align 8
  br label %48

66:                                               ; preds = %59
  %67 = load %struct.occr*, %struct.occr** %9, align 8
  %68 = icmp ne %struct.occr* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i8*, i8** %4, align 8
  %71 = load %struct.occr*, %struct.occr** %9, align 8
  %72 = getelementptr inbounds %struct.occr, %struct.occr* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  br label %96

73:                                               ; preds = %66
  %74 = call i64 @obstack_alloc(i32* @occr_obstack, i32 24)
  %75 = inttoptr i64 %74 to %struct.occr*
  store %struct.occr* %75, %struct.occr** %9, align 8
  %76 = load %struct.expr*, %struct.expr** %7, align 8
  %77 = getelementptr inbounds %struct.expr, %struct.expr* %76, i32 0, i32 0
  %78 = load %struct.occr*, %struct.occr** %77, align 8
  %79 = icmp eq %struct.occr* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %73
  %81 = load %struct.occr*, %struct.occr** %9, align 8
  %82 = load %struct.expr*, %struct.expr** %7, align 8
  %83 = getelementptr inbounds %struct.expr, %struct.expr* %82, i32 0, i32 0
  store %struct.occr* %81, %struct.occr** %83, align 8
  br label %88

84:                                               ; preds = %73
  %85 = load %struct.occr*, %struct.occr** %9, align 8
  %86 = load %struct.occr*, %struct.occr** %10, align 8
  %87 = getelementptr inbounds %struct.occr, %struct.occr* %86, i32 0, i32 2
  store %struct.occr* %85, %struct.occr** %87, align 8
  br label %88

88:                                               ; preds = %84, %80
  %89 = load i8*, i8** %4, align 8
  %90 = load %struct.occr*, %struct.occr** %9, align 8
  %91 = getelementptr inbounds %struct.occr, %struct.occr* %90, i32 0, i32 0
  store i8* %89, i8** %91, align 8
  %92 = load %struct.occr*, %struct.occr** %9, align 8
  %93 = getelementptr inbounds %struct.occr, %struct.occr* %92, i32 0, i32 2
  store %struct.occr* null, %struct.occr** %93, align 8
  %94 = load %struct.occr*, %struct.occr** %9, align 8
  %95 = getelementptr inbounds %struct.occr, %struct.occr* %94, i32 0, i32 1
  store i64 0, i64* %95, align 8
  br label %96

96:                                               ; preds = %15, %88, %69
  ret void
}

declare dso_local i32 @hash_expr(i8*, i32*) #1

declare dso_local i64 @obstack_alloc(i32*, i32) #1

declare dso_local i64 @htab_find_slot_with_hash(i32, %struct.expr*, i32, i32) #1

declare dso_local i32 @obstack_free(i32*, %struct.expr*) #1

declare dso_local i64 @BLOCK_NUM(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
