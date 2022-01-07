; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_itbl-ops.c_itbl_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_itbl-ops.c_itbl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.itbl_entry = type { i32, i32, %struct.itbl_entry* }

@itbl_have_entries = common dso_local global i32 0, align 4
@e_regtype0 = common dso_local global i64 0, align 8
@e_nregtypes = common dso_local global i64 0, align 8
@e_p0 = common dso_local global i64 0, align 8
@e_nprocs = common dso_local global i64 0, align 8
@reg_section = common dso_local global i32 0, align 4
@zero_address_frag = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @itbl_init() #0 {
  %1 = alloca %struct.itbl_entry*, align 8
  %2 = alloca %struct.itbl_entry**, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @itbl_have_entries, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  br label %53

8:                                                ; preds = %0
  %9 = load i64, i64* @e_regtype0, align 8
  store i64 %9, i64* %4, align 8
  br label %10

10:                                               ; preds = %48, %8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @e_nregtypes, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %51

14:                                               ; preds = %10
  %15 = load i64, i64* @e_p0, align 8
  store i64 %15, i64* %3, align 8
  br label %16

16:                                               ; preds = %44, %14
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @e_nprocs, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %47

20:                                               ; preds = %16
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call %struct.itbl_entry** @get_entries(i64 %21, i64 %22)
  store %struct.itbl_entry** %23, %struct.itbl_entry*** %2, align 8
  %24 = load %struct.itbl_entry**, %struct.itbl_entry*** %2, align 8
  %25 = load %struct.itbl_entry*, %struct.itbl_entry** %24, align 8
  store %struct.itbl_entry* %25, %struct.itbl_entry** %1, align 8
  br label %26

26:                                               ; preds = %39, %20
  %27 = load %struct.itbl_entry*, %struct.itbl_entry** %1, align 8
  %28 = icmp ne %struct.itbl_entry* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = load %struct.itbl_entry*, %struct.itbl_entry** %1, align 8
  %31 = getelementptr inbounds %struct.itbl_entry, %struct.itbl_entry* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @reg_section, align 4
  %34 = load %struct.itbl_entry*, %struct.itbl_entry** %1, align 8
  %35 = getelementptr inbounds %struct.itbl_entry, %struct.itbl_entry* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @symbol_create(i32 %32, i32 %33, i32 %36, i32* @zero_address_frag)
  %38 = call i32 @symbol_table_insert(i32 %37)
  br label %39

39:                                               ; preds = %29
  %40 = load %struct.itbl_entry*, %struct.itbl_entry** %1, align 8
  %41 = getelementptr inbounds %struct.itbl_entry, %struct.itbl_entry* %40, i32 0, i32 2
  %42 = load %struct.itbl_entry*, %struct.itbl_entry** %41, align 8
  store %struct.itbl_entry* %42, %struct.itbl_entry** %1, align 8
  br label %26

43:                                               ; preds = %26
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %3, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %3, align 8
  br label %16

47:                                               ; preds = %16
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %4, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %4, align 8
  br label %10

51:                                               ; preds = %10
  %52 = call i32 (...) @append_insns_as_macros()
  br label %53

53:                                               ; preds = %51, %7
  ret void
}

declare dso_local %struct.itbl_entry** @get_entries(i64, i64) #1

declare dso_local i32 @symbol_table_insert(i32) #1

declare dso_local i32 @symbol_create(i32, i32, i32, i32*) #1

declare dso_local i32 @append_insns_as_macros(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
