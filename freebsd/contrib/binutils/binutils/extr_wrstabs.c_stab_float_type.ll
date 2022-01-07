; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_stab_float_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_stab_float_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_write_handle = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%ld=r%s;%u;0;\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @stab_float_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stab_float_type(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stab_write_handle*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [50 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.stab_write_handle*
  store %struct.stab_write_handle* %11, %struct.stab_write_handle** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp ugt i32 %12, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = sub i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = icmp ult i64 %17, 1
  br i1 %18, label %19, label %43

19:                                               ; preds = %14
  %20 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %21 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sub i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %23, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %19
  %31 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %32 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %33 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sub i32 %36, 1
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %35, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @stab_push_defined_type(%struct.stab_write_handle* %31, i64 %40, i32 %41)
  store i32 %42, i32* %3, align 4
  br label %91

43:                                               ; preds = %19, %14, %2
  %44 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %45 = load i32, i32* @FALSE, align 4
  %46 = call i32 @stab_int_type(%struct.stab_write_handle* %44, i32 4, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %3, align 4
  br label %91

50:                                               ; preds = %43
  %51 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %52 = call i8* @stab_pop_type(%struct.stab_write_handle* %51)
  store i8* %52, i8** %8, align 8
  %53 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %54 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %7, align 8
  %56 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %57 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %57, align 8
  %60 = load i32, i32* %5, align 4
  %61 = icmp ugt i32 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %50
  %63 = load i32, i32* %5, align 4
  %64 = sub i32 %63, 1
  %65 = zext i32 %64 to i64
  %66 = icmp ult i64 %65, 1
  br i1 %66, label %67, label %77

67:                                               ; preds = %62
  %68 = load i64, i64* %7, align 8
  %69 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %70 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sub i32 %73, 1
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %72, i64 %75
  store i64 %68, i64* %76, align 8
  br label %77

77:                                               ; preds = %67, %62, %50
  %78 = getelementptr inbounds [50 x i8], [50 x i8]* %9, i64 0, i64 0
  %79 = load i64, i64* %7, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @sprintf(i8* %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %79, i8* %80, i32 %81)
  %83 = load i8*, i8** %8, align 8
  %84 = call i32 @free(i8* %83)
  %85 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %86 = getelementptr inbounds [50 x i8], [50 x i8]* %9, i64 0, i64 0
  %87 = load i64, i64* %7, align 8
  %88 = load i32, i32* @TRUE, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @stab_push_string(%struct.stab_write_handle* %85, i8* %86, i64 %87, i32 %88, i32 %89)
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %77, %48, %30
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @stab_push_defined_type(%struct.stab_write_handle*, i64, i32) #1

declare dso_local i32 @stab_int_type(%struct.stab_write_handle*, i32, i32) #1

declare dso_local i8* @stab_pop_type(%struct.stab_write_handle*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @stab_push_string(%struct.stab_write_handle*, i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
