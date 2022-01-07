; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dve3900-rom.c_fetch_fields.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dve3900-rom.c_fetch_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bit_field = type { i32, i64, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bit_field*)* @fetch_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fetch_fields(%struct.bit_field* %0) #0 {
  %2 = alloca %struct.bit_field*, align 8
  %3 = alloca [20 x i8], align 16
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.bit_field* %0, %struct.bit_field** %2, align 8
  store i64 0, i64* %4, align 8
  br label %6

6:                                                ; preds = %44, %1
  %7 = load %struct.bit_field*, %struct.bit_field** %2, align 8
  %8 = getelementptr inbounds %struct.bit_field, %struct.bit_field* %7, i32 0, i32 3
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %47

11:                                               ; preds = %6
  %12 = load %struct.bit_field*, %struct.bit_field** %2, align 8
  %13 = getelementptr inbounds %struct.bit_field, %struct.bit_field* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @monitor_expect(i32* %14, i8* null, i32 0)
  %16 = load %struct.bit_field*, %struct.bit_field** %2, align 8
  %17 = getelementptr inbounds %struct.bit_field, %struct.bit_field* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %20 = call i32 @monitor_expect(i32* %18, i8* %19, i32 20)
  %21 = load %struct.bit_field*, %struct.bit_field** %2, align 8
  %22 = getelementptr inbounds %struct.bit_field, %struct.bit_field* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %11
  %26 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %27 = call i64 @strtoul(i8* %26, i32* null, i32 16)
  store i64 %27, i64* %5, align 8
  %28 = load %struct.bit_field*, %struct.bit_field** %2, align 8
  %29 = getelementptr inbounds %struct.bit_field, %struct.bit_field* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = shl i32 1, %30
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* %5, align 8
  %35 = and i64 %34, %33
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.bit_field*, %struct.bit_field** %2, align 8
  %38 = getelementptr inbounds %struct.bit_field, %struct.bit_field* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = shl i64 %36, %39
  %41 = load i64, i64* %4, align 8
  %42 = or i64 %41, %40
  store i64 %42, i64* %4, align 8
  br label %43

43:                                               ; preds = %25, %11
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.bit_field*, %struct.bit_field** %2, align 8
  %46 = getelementptr inbounds %struct.bit_field, %struct.bit_field* %45, i32 1
  store %struct.bit_field* %46, %struct.bit_field** %2, align 8
  br label %6

47:                                               ; preds = %6
  %48 = load i64, i64* %4, align 8
  ret i64 %48
}

declare dso_local i32 @monitor_expect(i32*, i8*, i32) #1

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
