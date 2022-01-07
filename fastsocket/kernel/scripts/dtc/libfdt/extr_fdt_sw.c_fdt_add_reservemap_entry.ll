; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/libfdt/extr_fdt_sw.c_fdt_add_reservemap_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/libfdt/extr_fdt_sw.c_fdt_add_reservemap_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdt_reserve_entry = type { i8*, i8* }

@FDT_ERR_BADSTATE = common dso_local global i32 0, align 4
@FDT_ERR_NOSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdt_add_reservemap_entry(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fdt_reserve_entry*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @FDT_SW_CHECK_HEADER(i8* %10)
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @fdt_size_dt_struct(i8* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @FDT_ERR_BADSTATE, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %51

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @fdt_off_dt_struct(i8* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = add i64 %22, 16
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @fdt_totalsize(i8* %24)
  %26 = sext i32 %25 to i64
  %27 = icmp ugt i64 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load i32, i32* @FDT_ERR_NOSPACE, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %51

31:                                               ; preds = %18
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = bitcast i8* %35 to %struct.fdt_reserve_entry*
  store %struct.fdt_reserve_entry* %36, %struct.fdt_reserve_entry** %8, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i8* @cpu_to_fdt64(i32 %37)
  %39 = load %struct.fdt_reserve_entry*, %struct.fdt_reserve_entry** %8, align 8
  %40 = getelementptr inbounds %struct.fdt_reserve_entry, %struct.fdt_reserve_entry* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i8* @cpu_to_fdt64(i32 %41)
  %43 = load %struct.fdt_reserve_entry*, %struct.fdt_reserve_entry** %8, align 8
  %44 = getelementptr inbounds %struct.fdt_reserve_entry, %struct.fdt_reserve_entry* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = add i64 %47, 16
  %49 = trunc i64 %48 to i32
  %50 = call i32 @fdt_set_off_dt_struct(i8* %45, i32 %49)
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %31, %28, %15
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @FDT_SW_CHECK_HEADER(i8*) #1

declare dso_local i64 @fdt_size_dt_struct(i8*) #1

declare dso_local i32 @fdt_off_dt_struct(i8*) #1

declare dso_local i32 @fdt_totalsize(i8*) #1

declare dso_local i8* @cpu_to_fdt64(i32) #1

declare dso_local i32 @fdt_set_off_dt_struct(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
