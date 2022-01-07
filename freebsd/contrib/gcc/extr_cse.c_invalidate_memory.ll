; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_invalidate_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_invalidate_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_elt = type { i64, %struct.table_elt* }

@HASH_SIZE = common dso_local global i32 0, align 4
@table = common dso_local global %struct.table_elt** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @invalidate_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @invalidate_memory() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.table_elt*, align 8
  %3 = alloca %struct.table_elt*, align 8
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %33, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @HASH_SIZE, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %36

8:                                                ; preds = %4
  %9 = load %struct.table_elt**, %struct.table_elt*** @table, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.table_elt*, %struct.table_elt** %9, i64 %11
  %13 = load %struct.table_elt*, %struct.table_elt** %12, align 8
  store %struct.table_elt* %13, %struct.table_elt** %2, align 8
  br label %14

14:                                               ; preds = %30, %8
  %15 = load %struct.table_elt*, %struct.table_elt** %2, align 8
  %16 = icmp ne %struct.table_elt* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %14
  %18 = load %struct.table_elt*, %struct.table_elt** %2, align 8
  %19 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %18, i32 0, i32 1
  %20 = load %struct.table_elt*, %struct.table_elt** %19, align 8
  store %struct.table_elt* %20, %struct.table_elt** %3, align 8
  %21 = load %struct.table_elt*, %struct.table_elt** %2, align 8
  %22 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load %struct.table_elt*, %struct.table_elt** %2, align 8
  %27 = load i32, i32* %1, align 4
  %28 = call i32 @remove_from_table(%struct.table_elt* %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %17
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.table_elt*, %struct.table_elt** %3, align 8
  store %struct.table_elt* %31, %struct.table_elt** %2, align 8
  br label %14

32:                                               ; preds = %14
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %1, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %1, align 4
  br label %4

36:                                               ; preds = %4
  ret void
}

declare dso_local i32 @remove_from_table(%struct.table_elt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
