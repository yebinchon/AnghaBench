; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_extable.c_search_extable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_extable.c_search_extable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exception_table_entry = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.exception_table_entry* @search_extable(%struct.exception_table_entry* %0, %struct.exception_table_entry* %1, i64 %2) #0 {
  %4 = alloca %struct.exception_table_entry*, align 8
  %5 = alloca %struct.exception_table_entry*, align 8
  %6 = alloca %struct.exception_table_entry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.exception_table_entry*, align 8
  store %struct.exception_table_entry* %0, %struct.exception_table_entry** %5, align 8
  store %struct.exception_table_entry* %1, %struct.exception_table_entry** %6, align 8
  store i64 %2, i64* %7, align 8
  br label %9

9:                                                ; preds = %43, %3
  %10 = load %struct.exception_table_entry*, %struct.exception_table_entry** %5, align 8
  %11 = load %struct.exception_table_entry*, %struct.exception_table_entry** %6, align 8
  %12 = icmp ule %struct.exception_table_entry* %10, %11
  br i1 %12, label %13, label %44

13:                                               ; preds = %9
  %14 = load %struct.exception_table_entry*, %struct.exception_table_entry** %6, align 8
  %15 = load %struct.exception_table_entry*, %struct.exception_table_entry** %5, align 8
  %16 = ptrtoint %struct.exception_table_entry* %14 to i64
  %17 = ptrtoint %struct.exception_table_entry* %15 to i64
  %18 = sub i64 %16, %17
  %19 = sdiv exact i64 %18, 8
  %20 = ashr i64 %19, 1
  %21 = load %struct.exception_table_entry*, %struct.exception_table_entry** %5, align 8
  %22 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %21, i64 %20
  store %struct.exception_table_entry* %22, %struct.exception_table_entry** %8, align 8
  %23 = load %struct.exception_table_entry*, %struct.exception_table_entry** %8, align 8
  %24 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %13
  %29 = load %struct.exception_table_entry*, %struct.exception_table_entry** %8, align 8
  %30 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %29, i64 1
  store %struct.exception_table_entry* %30, %struct.exception_table_entry** %5, align 8
  br label %43

31:                                               ; preds = %13
  %32 = load %struct.exception_table_entry*, %struct.exception_table_entry** %8, align 8
  %33 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp ugt i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.exception_table_entry*, %struct.exception_table_entry** %8, align 8
  %39 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %38, i64 -1
  store %struct.exception_table_entry* %39, %struct.exception_table_entry** %6, align 8
  br label %42

40:                                               ; preds = %31
  %41 = load %struct.exception_table_entry*, %struct.exception_table_entry** %8, align 8
  store %struct.exception_table_entry* %41, %struct.exception_table_entry** %4, align 8
  br label %45

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42, %28
  br label %9

44:                                               ; preds = %9
  store %struct.exception_table_entry* null, %struct.exception_table_entry** %4, align 8
  br label %45

45:                                               ; preds = %44, %40
  %46 = load %struct.exception_table_entry*, %struct.exception_table_entry** %4, align 8
  ret %struct.exception_table_entry* %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
