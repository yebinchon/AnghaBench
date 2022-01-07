; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_range_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_range_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_handle = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64)* @ieee_range_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee_range_type(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ieee_handle*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.ieee_handle*
  store %struct.ieee_handle* %12, %struct.ieee_handle** %7, align 8
  %13 = load %struct.ieee_handle*, %struct.ieee_handle** %7, align 8
  %14 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load %struct.ieee_handle*, %struct.ieee_handle** %7, align 8
  %20 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load %struct.ieee_handle*, %struct.ieee_handle** %7, align 8
  %26 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %10, align 4
  %31 = load %struct.ieee_handle*, %struct.ieee_handle** %7, align 8
  %32 = call i32 @ieee_pop_unused_type(%struct.ieee_handle* %31)
  %33 = load %struct.ieee_handle*, %struct.ieee_handle** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i64 @ieee_define_type(%struct.ieee_handle* %33, i32 %34, i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %68

39:                                               ; preds = %3
  %40 = load %struct.ieee_handle*, %struct.ieee_handle** %7, align 8
  %41 = call i64 @ieee_write_number(%struct.ieee_handle* %40, i32 82)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %68

43:                                               ; preds = %39
  %44 = load %struct.ieee_handle*, %struct.ieee_handle** %7, align 8
  %45 = load i64, i64* %5, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i64 @ieee_write_number(%struct.ieee_handle* %44, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %43
  %50 = load %struct.ieee_handle*, %struct.ieee_handle** %7, align 8
  %51 = load i64, i64* %6, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i64 @ieee_write_number(%struct.ieee_handle* %50, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %49
  %56 = load %struct.ieee_handle*, %struct.ieee_handle** %7, align 8
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 0, i32 1
  %61 = call i64 @ieee_write_number(%struct.ieee_handle* %56, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %55
  %64 = load %struct.ieee_handle*, %struct.ieee_handle** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i64 @ieee_write_number(%struct.ieee_handle* %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br label %68

68:                                               ; preds = %63, %55, %49, %43, %39, %3
  %69 = phi i1 [ false, %55 ], [ false, %49 ], [ false, %43 ], [ false, %39 ], [ false, %3 ], [ %67, %63 ]
  %70 = zext i1 %69 to i32
  ret i32 %70
}

declare dso_local i32 @ieee_pop_unused_type(%struct.ieee_handle*) #1

declare dso_local i64 @ieee_define_type(%struct.ieee_handle*, i32, i32, i32) #1

declare dso_local i64 @ieee_write_number(%struct.ieee_handle*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
