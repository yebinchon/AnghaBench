; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_volatile_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_volatile_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_handle = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i32, i32 }
%struct.ieee_modified_type = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ieee_volatile_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee_volatile_type(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ieee_handle*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee_modified_type*, align 8
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.ieee_handle*
  store %struct.ieee_handle* %11, %struct.ieee_handle** %4, align 8
  store %struct.ieee_modified_type* null, %struct.ieee_modified_type** %9, align 8
  %12 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %13 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %5, align 4
  %18 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %19 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  %24 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %25 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %7, align 4
  %30 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %31 = call i32 @ieee_pop_type(%struct.ieee_handle* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %57, label %34

34:                                               ; preds = %1
  %35 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call %struct.ieee_modified_type* @ieee_get_modified_info(%struct.ieee_handle* %35, i32 %36)
  store %struct.ieee_modified_type* %37, %struct.ieee_modified_type** %9, align 8
  %38 = load %struct.ieee_modified_type*, %struct.ieee_modified_type** %9, align 8
  %39 = icmp eq %struct.ieee_modified_type* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %2, align 4
  br label %93

42:                                               ; preds = %34
  %43 = load %struct.ieee_modified_type*, %struct.ieee_modified_type** %9, align 8
  %44 = getelementptr inbounds %struct.ieee_modified_type, %struct.ieee_modified_type* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %49 = load %struct.ieee_modified_type*, %struct.ieee_modified_type** %9, align 8
  %50 = getelementptr inbounds %struct.ieee_modified_type, %struct.ieee_modified_type* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @FALSE, align 4
  %55 = call i32 @ieee_push_type(%struct.ieee_handle* %48, i64 %51, i32 %52, i32 %53, i32 %54)
  store i32 %55, i32* %2, align 4
  br label %93

56:                                               ; preds = %42
  br label %57

57:                                               ; preds = %56, %1
  %58 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @ieee_define_type(%struct.ieee_handle* %58, i32 %59, i32 %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %57
  %65 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %66 = call i32 @ieee_write_number(%struct.ieee_handle* %65, i32 110)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %64
  %69 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %70 = call i32 @ieee_write_number(%struct.ieee_handle* %69, i32 2)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @ieee_write_number(%struct.ieee_handle* %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %72, %68, %64, %57
  %78 = load i32, i32* @FALSE, align 4
  store i32 %78, i32* %2, align 4
  br label %93

79:                                               ; preds = %72
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %91, label %82

82:                                               ; preds = %79
  %83 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %84 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.ieee_modified_type*, %struct.ieee_modified_type** %9, align 8
  %90 = getelementptr inbounds %struct.ieee_modified_type, %struct.ieee_modified_type* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  br label %91

91:                                               ; preds = %82, %79
  %92 = load i32, i32* @TRUE, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %91, %77, %47, %40
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @ieee_pop_type(%struct.ieee_handle*) #1

declare dso_local %struct.ieee_modified_type* @ieee_get_modified_info(%struct.ieee_handle*, i32) #1

declare dso_local i32 @ieee_push_type(%struct.ieee_handle*, i64, i32, i32, i32) #1

declare dso_local i32 @ieee_define_type(%struct.ieee_handle*, i32, i32, i32) #1

declare dso_local i32 @ieee_write_number(%struct.ieee_handle*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
