; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/libfdt/extr_fdt_rw.c__fdt_splice_mem_rsv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/libfdt/extr_fdt_rw.c__fdt_splice_mem_rsv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdt_reserve_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.fdt_reserve_entry*, i32, i32)* @_fdt_splice_mem_rsv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_fdt_splice_mem_rsv(i8* %0, %struct.fdt_reserve_entry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fdt_reserve_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.fdt_reserve_entry* %1, %struct.fdt_reserve_entry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = sub nsw i32 %12, %13
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %10, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct.fdt_reserve_entry*, %struct.fdt_reserve_entry** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 4
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = trunc i64 %26 to i32
  %28 = call i32 @_fdt_splice(i8* %18, %struct.fdt_reserve_entry* %19, i32 %23, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %5, align 4
  br label %48

33:                                               ; preds = %4
  %34 = load i8*, i8** %6, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i64 @fdt_off_dt_struct(i8* %35)
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = call i32 @fdt_set_off_dt_struct(i8* %34, i64 %39)
  %41 = load i8*, i8** %6, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = call i64 @fdt_off_dt_strings(i8* %42)
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = call i32 @fdt_set_off_dt_strings(i8* %41, i64 %46)
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %33, %31
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @_fdt_splice(i8*, %struct.fdt_reserve_entry*, i32, i32) #1

declare dso_local i32 @fdt_set_off_dt_struct(i8*, i64) #1

declare dso_local i64 @fdt_off_dt_struct(i8*) #1

declare dso_local i32 @fdt_set_off_dt_strings(i8*, i64) #1

declare dso_local i64 @fdt_off_dt_strings(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
