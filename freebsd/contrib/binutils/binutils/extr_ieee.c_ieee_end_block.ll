; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_end_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_end_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_handle = type { i64, i32, i32 }

@ieee_be_record_enum = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @ieee_end_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee_end_block(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ieee_handle*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.ieee_handle*
  store %struct.ieee_handle* %8, %struct.ieee_handle** %6, align 8
  %9 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %10 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %11 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %10, i32 0, i32 2
  %12 = call i32 @ieee_change_buffer(%struct.ieee_handle* %9, i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %16 = load i64, i64* @ieee_be_record_enum, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i32 @ieee_write_byte(%struct.ieee_handle* %15, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %22 = load i64, i64* %5, align 8
  %23 = sub nsw i64 %22, 1
  %24 = call i32 @ieee_write_number(%struct.ieee_handle* %21, i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %20, %14, %2
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %3, align 4
  br label %51

28:                                               ; preds = %20
  %29 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @ieee_end_range(%struct.ieee_handle* %29, i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %3, align 4
  br label %51

35:                                               ; preds = %28
  %36 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %37 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %37, align 8
  %40 = load i64, i64* %5, align 8
  %41 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %42 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %40, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %35
  %46 = load i64, i64* %5, align 8
  %47 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %48 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %45, %35
  %50 = load i32, i32* @TRUE, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %33, %26
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @ieee_change_buffer(%struct.ieee_handle*, i32*) #1

declare dso_local i32 @ieee_write_byte(%struct.ieee_handle*, i32) #1

declare dso_local i32 @ieee_write_number(%struct.ieee_handle*, i64) #1

declare dso_local i32 @ieee_end_range(%struct.ieee_handle*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
