; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_lookup_for_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_lookup_for_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_elt = type { i64, i32, %struct.table_elt* }

@table = common dso_local global %struct.table_elt** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.table_elt* (i64, i32, i32)* @lookup_for_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.table_elt* @lookup_for_remove(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.table_elt*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.table_elt*, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* %5, align 8
  %11 = call i64 @REG_P(i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %45

13:                                               ; preds = %3
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @REGNO(i64 %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.table_elt**, %struct.table_elt*** @table, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.table_elt*, %struct.table_elt** %16, i64 %18
  %20 = load %struct.table_elt*, %struct.table_elt** %19, align 8
  store %struct.table_elt* %20, %struct.table_elt** %8, align 8
  br label %21

21:                                               ; preds = %40, %13
  %22 = load %struct.table_elt*, %struct.table_elt** %8, align 8
  %23 = icmp ne %struct.table_elt* %22, null
  br i1 %23, label %24, label %44

24:                                               ; preds = %21
  %25 = load %struct.table_elt*, %struct.table_elt** %8, align 8
  %26 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @REG_P(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = load %struct.table_elt*, %struct.table_elt** %8, align 8
  %32 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @REGNO(i64 %33)
  %35 = load i32, i32* %9, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load %struct.table_elt*, %struct.table_elt** %8, align 8
  store %struct.table_elt* %38, %struct.table_elt** %4, align 8
  br label %82

39:                                               ; preds = %30, %24
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.table_elt*, %struct.table_elt** %8, align 8
  %42 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %41, i32 0, i32 2
  %43 = load %struct.table_elt*, %struct.table_elt** %42, align 8
  store %struct.table_elt* %43, %struct.table_elt** %8, align 8
  br label %21

44:                                               ; preds = %21
  br label %81

45:                                               ; preds = %3
  %46 = load %struct.table_elt**, %struct.table_elt*** @table, align 8
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.table_elt*, %struct.table_elt** %46, i64 %48
  %50 = load %struct.table_elt*, %struct.table_elt** %49, align 8
  store %struct.table_elt* %50, %struct.table_elt** %8, align 8
  br label %51

51:                                               ; preds = %76, %45
  %52 = load %struct.table_elt*, %struct.table_elt** %8, align 8
  %53 = icmp ne %struct.table_elt* %52, null
  br i1 %53, label %54, label %80

54:                                               ; preds = %51
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.table_elt*, %struct.table_elt** %8, align 8
  %57 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %55, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %54
  %61 = load i64, i64* %5, align 8
  %62 = load %struct.table_elt*, %struct.table_elt** %8, align 8
  %63 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %61, %64
  br i1 %65, label %73, label %66

66:                                               ; preds = %60
  %67 = load i64, i64* %5, align 8
  %68 = load %struct.table_elt*, %struct.table_elt** %8, align 8
  %69 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @exp_equiv_p(i64 %67, i64 %70, i32 0, i32 0)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66, %60
  %74 = load %struct.table_elt*, %struct.table_elt** %8, align 8
  store %struct.table_elt* %74, %struct.table_elt** %4, align 8
  br label %82

75:                                               ; preds = %66, %54
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.table_elt*, %struct.table_elt** %8, align 8
  %78 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %77, i32 0, i32 2
  %79 = load %struct.table_elt*, %struct.table_elt** %78, align 8
  store %struct.table_elt* %79, %struct.table_elt** %8, align 8
  br label %51

80:                                               ; preds = %51
  br label %81

81:                                               ; preds = %80, %44
  store %struct.table_elt* null, %struct.table_elt** %4, align 8
  br label %82

82:                                               ; preds = %81, %73, %37
  %83 = load %struct.table_elt*, %struct.table_elt** %4, align 8
  ret %struct.table_elt* %83
}

declare dso_local i64 @REG_P(i64) #1

declare dso_local i32 @REGNO(i64) #1

declare dso_local i64 @exp_equiv_p(i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
