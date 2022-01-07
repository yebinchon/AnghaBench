; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_elt = type { i32, i64, %struct.table_elt* }

@table = common dso_local global %struct.table_elt** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.table_elt* (i64, i32, i32)* @lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.table_elt* @lookup(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.table_elt*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.table_elt*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.table_elt**, %struct.table_elt*** @table, align 8
  %10 = load i32, i32* %6, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.table_elt*, %struct.table_elt** %9, i64 %11
  %13 = load %struct.table_elt*, %struct.table_elt** %12, align 8
  store %struct.table_elt* %13, %struct.table_elt** %8, align 8
  br label %14

14:                                               ; preds = %48, %3
  %15 = load %struct.table_elt*, %struct.table_elt** %8, align 8
  %16 = icmp ne %struct.table_elt* %15, null
  br i1 %16, label %17, label %52

17:                                               ; preds = %14
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.table_elt*, %struct.table_elt** %8, align 8
  %20 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %47

23:                                               ; preds = %17
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.table_elt*, %struct.table_elt** %8, align 8
  %26 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i64, i64* %5, align 8
  %31 = call i64 @REG_P(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %29, %23
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.table_elt*, %struct.table_elt** %8, align 8
  %36 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i64 @REG_P(i64 %38)
  %40 = icmp ne i64 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i64 @exp_equiv_p(i64 %34, i64 %37, i32 %42, i32 0)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %33, %29
  %46 = load %struct.table_elt*, %struct.table_elt** %8, align 8
  store %struct.table_elt* %46, %struct.table_elt** %4, align 8
  br label %53

47:                                               ; preds = %33, %17
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.table_elt*, %struct.table_elt** %8, align 8
  %50 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %49, i32 0, i32 2
  %51 = load %struct.table_elt*, %struct.table_elt** %50, align 8
  store %struct.table_elt* %51, %struct.table_elt** %8, align 8
  br label %14

52:                                               ; preds = %14
  store %struct.table_elt* null, %struct.table_elt** %4, align 8
  br label %53

53:                                               ; preds = %52, %45
  %54 = load %struct.table_elt*, %struct.table_elt** %4, align 8
  ret %struct.table_elt* %54
}

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @exp_equiv_p(i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
