; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_flush_hash_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_flush_hash_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_elt = type { i32 }

@HASH_SIZE = common dso_local global i32 0, align 4
@table = common dso_local global %struct.table_elt** null, align 8
@VOIDmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @flush_hash_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_hash_table() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.table_elt*, align 8
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %40, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @HASH_SIZE, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %43

7:                                                ; preds = %3
  %8 = load %struct.table_elt**, %struct.table_elt*** @table, align 8
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.table_elt*, %struct.table_elt** %8, i64 %10
  %12 = load %struct.table_elt*, %struct.table_elt** %11, align 8
  store %struct.table_elt* %12, %struct.table_elt** %2, align 8
  br label %13

13:                                               ; preds = %33, %7
  %14 = load %struct.table_elt*, %struct.table_elt** %2, align 8
  %15 = icmp ne %struct.table_elt* %14, null
  br i1 %15, label %16, label %39

16:                                               ; preds = %13
  %17 = load %struct.table_elt*, %struct.table_elt** %2, align 8
  %18 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @REG_P(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load %struct.table_elt*, %struct.table_elt** %2, align 8
  %24 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @VOIDmode, align 4
  %27 = call i32 @invalidate(i32 %25, i32 %26)
  br label %32

28:                                               ; preds = %16
  %29 = load %struct.table_elt*, %struct.table_elt** %2, align 8
  %30 = load i32, i32* %1, align 4
  %31 = call i32 @remove_from_table(%struct.table_elt* %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %22
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.table_elt**, %struct.table_elt*** @table, align 8
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.table_elt*, %struct.table_elt** %34, i64 %36
  %38 = load %struct.table_elt*, %struct.table_elt** %37, align 8
  store %struct.table_elt* %38, %struct.table_elt** %2, align 8
  br label %13

39:                                               ; preds = %13
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %1, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %1, align 4
  br label %3

43:                                               ; preds = %3
  ret void
}

declare dso_local i64 @REG_P(i32) #1

declare dso_local i32 @invalidate(i32, i32) #1

declare dso_local i32 @remove_from_table(%struct.table_elt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
