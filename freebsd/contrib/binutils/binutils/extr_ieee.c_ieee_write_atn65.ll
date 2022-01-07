; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_write_atn65.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_write_atn65.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_handle = type { i32 }

@ieee_atn_record_enum = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee_handle*, i32, i8*)* @ieee_write_atn65 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee_write_atn65(%struct.ieee_handle* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.ieee_handle*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.ieee_handle* %0, %struct.ieee_handle** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %8 = load i64, i64* @ieee_atn_record_enum, align 8
  %9 = trunc i64 %8 to i32
  %10 = call i64 @ieee_write_2bytes(%struct.ieee_handle* %7, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %3
  %13 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @ieee_write_number(%struct.ieee_handle* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %12
  %18 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %19 = call i64 @ieee_write_number(%struct.ieee_handle* %18, i32 0)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %23 = call i64 @ieee_write_number(%struct.ieee_handle* %22, i32 65)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i64 @ieee_write_id(%struct.ieee_handle* %26, i8* %27)
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %25, %21, %17, %12, %3
  %31 = phi i1 [ false, %21 ], [ false, %17 ], [ false, %12 ], [ false, %3 ], [ %29, %25 ]
  %32 = zext i1 %31 to i32
  ret i32 %32
}

declare dso_local i64 @ieee_write_2bytes(%struct.ieee_handle*, i32) #1

declare dso_local i64 @ieee_write_number(%struct.ieee_handle*, i32) #1

declare dso_local i64 @ieee_write_id(%struct.ieee_handle*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
