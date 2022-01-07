; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_remove_invalid_refs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_remove_invalid_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_elt = type { i32, %struct.table_elt* }

@HASH_SIZE = common dso_local global i32 0, align 4
@table = common dso_local global %struct.table_elt** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @remove_invalid_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_invalid_refs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.table_elt*, align 8
  %5 = alloca %struct.table_elt*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %45, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @HASH_SIZE, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %48

10:                                               ; preds = %6
  %11 = load %struct.table_elt**, %struct.table_elt*** @table, align 8
  %12 = load i32, i32* %3, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.table_elt*, %struct.table_elt** %11, i64 %13
  %15 = load %struct.table_elt*, %struct.table_elt** %14, align 8
  store %struct.table_elt* %15, %struct.table_elt** %4, align 8
  br label %16

16:                                               ; preds = %42, %10
  %17 = load %struct.table_elt*, %struct.table_elt** %4, align 8
  %18 = icmp ne %struct.table_elt* %17, null
  br i1 %18, label %19, label %44

19:                                               ; preds = %16
  %20 = load %struct.table_elt*, %struct.table_elt** %4, align 8
  %21 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %20, i32 0, i32 1
  %22 = load %struct.table_elt*, %struct.table_elt** %21, align 8
  store %struct.table_elt* %22, %struct.table_elt** %5, align 8
  %23 = load %struct.table_elt*, %struct.table_elt** %4, align 8
  %24 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @REG_P(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %41, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* %2, align 4
  %31 = add i32 %30, 1
  %32 = load %struct.table_elt*, %struct.table_elt** %4, align 8
  %33 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @refers_to_regno_p(i32 %29, i32 %31, i32 %34, i32* null)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load %struct.table_elt*, %struct.table_elt** %4, align 8
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @remove_from_table(%struct.table_elt* %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %28, %19
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.table_elt*, %struct.table_elt** %5, align 8
  store %struct.table_elt* %43, %struct.table_elt** %4, align 8
  br label %16

44:                                               ; preds = %16
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %3, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %6

48:                                               ; preds = %6
  ret void
}

declare dso_local i32 @REG_P(i32) #1

declare dso_local i64 @refers_to_regno_p(i32, i32, i32, i32*) #1

declare dso_local i32 @remove_from_table(%struct.table_elt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
