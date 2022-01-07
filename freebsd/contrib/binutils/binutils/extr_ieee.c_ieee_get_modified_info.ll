; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_get_modified_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_get_modified_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_modified_type = type { i32 }
%struct.ieee_handle = type { i32, %struct.ieee_modified_type* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ieee_modified_type* (%struct.ieee_handle*, i32)* @ieee_get_modified_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ieee_modified_type* @ieee_get_modified_info(%struct.ieee_handle* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee_handle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ieee_handle* %0, %struct.ieee_handle** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %8 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp uge i32 %6, %9
  br i1 %10, label %11, label %58

11:                                               ; preds = %2
  %12 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %13 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 16, i32* %5, align 4
  br label %18

18:                                               ; preds = %17, %11
  br label %19

19:                                               ; preds = %23, %18
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp uge i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = mul i32 %24, 2
  store i32 %25, i32* %5, align 4
  br label %19

26:                                               ; preds = %19
  %27 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %28 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %27, i32 0, i32 1
  %29 = load %struct.ieee_modified_type*, %struct.ieee_modified_type** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = trunc i64 %32 to i32
  %34 = call i64 @xrealloc(%struct.ieee_modified_type* %29, i32 %33)
  %35 = inttoptr i64 %34 to %struct.ieee_modified_type*
  %36 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %37 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %36, i32 0, i32 1
  store %struct.ieee_modified_type* %35, %struct.ieee_modified_type** %37, align 8
  %38 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %39 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %38, i32 0, i32 1
  %40 = load %struct.ieee_modified_type*, %struct.ieee_modified_type** %39, align 8
  %41 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %42 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.ieee_modified_type, %struct.ieee_modified_type* %40, i64 %44
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %48 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub i32 %46, %49
  %51 = zext i32 %50 to i64
  %52 = mul i64 %51, 4
  %53 = trunc i64 %52 to i32
  %54 = call i32 @memset(%struct.ieee_modified_type* %45, i32 0, i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %57 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %26, %2
  %59 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %60 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %59, i32 0, i32 1
  %61 = load %struct.ieee_modified_type*, %struct.ieee_modified_type** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.ieee_modified_type, %struct.ieee_modified_type* %61, i64 %63
  ret %struct.ieee_modified_type* %64
}

declare dso_local i64 @xrealloc(%struct.ieee_modified_type*, i32) #1

declare dso_local i32 @memset(%struct.ieee_modified_type*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
