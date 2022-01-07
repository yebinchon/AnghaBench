; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_postreload-gcse.c_lookup_expr_in_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_postreload-gcse.c_lookup_expr_in_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expr = type { i32*, i32, i32 }

@expr_obstack = common dso_local global i32 0, align 4
@expr_table = common dso_local global i32 0, align 4
@INSERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.expr* (i32)* @lookup_expr_in_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.expr* @lookup_expr_in_table(i32 %0) #0 {
  %2 = alloca %struct.expr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.expr**, align 8
  %6 = alloca %struct.expr*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @hash_expr(i32 %8, i32* %4)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.expr* null, %struct.expr** %2, align 8
  br label %38

13:                                               ; preds = %1
  %14 = call i64 @obstack_alloc(i32* @expr_obstack, i32 16)
  %15 = inttoptr i64 %14 to %struct.expr*
  store %struct.expr* %15, %struct.expr** %6, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.expr*, %struct.expr** %6, align 8
  %18 = getelementptr inbounds %struct.expr, %struct.expr* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.expr*, %struct.expr** %6, align 8
  %21 = getelementptr inbounds %struct.expr, %struct.expr* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load %struct.expr*, %struct.expr** %6, align 8
  %23 = getelementptr inbounds %struct.expr, %struct.expr* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  %24 = load i32, i32* @expr_table, align 4
  %25 = load %struct.expr*, %struct.expr** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @INSERT, align 4
  %28 = call i64 @htab_find_slot_with_hash(i32 %24, %struct.expr* %25, i32 %26, i32 %27)
  %29 = inttoptr i64 %28 to %struct.expr**
  store %struct.expr** %29, %struct.expr*** %5, align 8
  %30 = load %struct.expr*, %struct.expr** %6, align 8
  %31 = call i32 @obstack_free(i32* @expr_obstack, %struct.expr* %30)
  %32 = load %struct.expr**, %struct.expr*** %5, align 8
  %33 = icmp ne %struct.expr** %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %13
  store %struct.expr* null, %struct.expr** %2, align 8
  br label %38

35:                                               ; preds = %13
  %36 = load %struct.expr**, %struct.expr*** %5, align 8
  %37 = load %struct.expr*, %struct.expr** %36, align 8
  store %struct.expr* %37, %struct.expr** %2, align 8
  br label %38

38:                                               ; preds = %35, %34, %12
  %39 = load %struct.expr*, %struct.expr** %2, align 8
  ret %struct.expr* %39
}

declare dso_local i32 @hash_expr(i32, i32*) #1

declare dso_local i64 @obstack_alloc(i32*, i32) #1

declare dso_local i64 @htab_find_slot_with_hash(i32, %struct.expr*, i32, i32) #1

declare dso_local i32 @obstack_free(i32*, %struct.expr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
