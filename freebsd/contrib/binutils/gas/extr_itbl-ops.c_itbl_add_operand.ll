; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_itbl-ops.c_itbl_add_operand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_itbl-ops.c_itbl_add_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.itbl_field = type { %struct.itbl_field* }
%struct.itbl_entry = type { %struct.itbl_field* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.itbl_field* @itbl_add_operand(%struct.itbl_entry* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.itbl_field*, align 8
  %7 = alloca %struct.itbl_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.itbl_field*, align 8
  %13 = alloca %struct.itbl_field**, align 8
  store %struct.itbl_entry* %0, %struct.itbl_entry** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load %struct.itbl_entry*, %struct.itbl_entry** %7, align 8
  %15 = icmp ne %struct.itbl_entry* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  store %struct.itbl_field* null, %struct.itbl_field** %6, align 8
  br label %44

17:                                               ; preds = %5
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @get_type(i32 %18)
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i64, i64* %11, align 8
  %23 = call %struct.itbl_field* @alloc_field(i32 %19, i32 %20, i32 %21, i64 %22)
  store %struct.itbl_field* %23, %struct.itbl_field** %12, align 8
  %24 = load %struct.itbl_field*, %struct.itbl_field** %12, align 8
  %25 = icmp ne %struct.itbl_field* %24, null
  br i1 %25, label %26, label %42

26:                                               ; preds = %17
  %27 = load %struct.itbl_entry*, %struct.itbl_entry** %7, align 8
  %28 = getelementptr inbounds %struct.itbl_entry, %struct.itbl_entry* %27, i32 0, i32 0
  store %struct.itbl_field** %28, %struct.itbl_field*** %13, align 8
  br label %29

29:                                               ; preds = %33, %26
  %30 = load %struct.itbl_field**, %struct.itbl_field*** %13, align 8
  %31 = load %struct.itbl_field*, %struct.itbl_field** %30, align 8
  %32 = icmp ne %struct.itbl_field* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load %struct.itbl_field**, %struct.itbl_field*** %13, align 8
  %35 = load %struct.itbl_field*, %struct.itbl_field** %34, align 8
  %36 = getelementptr inbounds %struct.itbl_field, %struct.itbl_field* %35, i32 0, i32 0
  store %struct.itbl_field** %36, %struct.itbl_field*** %13, align 8
  br label %29

37:                                               ; preds = %29
  %38 = load %struct.itbl_field*, %struct.itbl_field** %12, align 8
  %39 = load %struct.itbl_field**, %struct.itbl_field*** %13, align 8
  store %struct.itbl_field* %38, %struct.itbl_field** %39, align 8
  %40 = load %struct.itbl_field*, %struct.itbl_field** %12, align 8
  %41 = getelementptr inbounds %struct.itbl_field, %struct.itbl_field* %40, i32 0, i32 0
  store %struct.itbl_field* null, %struct.itbl_field** %41, align 8
  br label %42

42:                                               ; preds = %37, %17
  %43 = load %struct.itbl_field*, %struct.itbl_field** %12, align 8
  store %struct.itbl_field* %43, %struct.itbl_field** %6, align 8
  br label %44

44:                                               ; preds = %42, %16
  %45 = load %struct.itbl_field*, %struct.itbl_field** %6, align 8
  ret %struct.itbl_field* %45
}

declare dso_local %struct.itbl_field* @alloc_field(i32, i32, i32, i64) #1

declare dso_local i32 @get_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
