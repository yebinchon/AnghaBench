; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_function_parameter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_function_parameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_handle = type { i32, i32, i32, %struct.ieee_pending_parm*, %struct.TYPE_4__* }
%struct.ieee_pending_parm = type { i8*, i32, i32, %struct.ieee_pending_parm*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32)* @ieee_function_parameter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee_function_parameter(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee_handle*, align 8
  %11 = alloca %struct.ieee_pending_parm*, align 8
  %12 = alloca %struct.ieee_pending_parm**, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.ieee_handle*
  store %struct.ieee_handle* %14, %struct.ieee_handle** %10, align 8
  %15 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %16 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 1
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = call i64 @xmalloc(i32 32)
  %22 = inttoptr i64 %21 to %struct.ieee_pending_parm*
  store %struct.ieee_pending_parm* %22, %struct.ieee_pending_parm** %11, align 8
  %23 = load %struct.ieee_pending_parm*, %struct.ieee_pending_parm** %11, align 8
  %24 = call i32 @memset(%struct.ieee_pending_parm* %23, i32 0, i32 32)
  %25 = load %struct.ieee_pending_parm*, %struct.ieee_pending_parm** %11, align 8
  %26 = getelementptr inbounds %struct.ieee_pending_parm, %struct.ieee_pending_parm* %25, i32 0, i32 3
  store %struct.ieee_pending_parm* null, %struct.ieee_pending_parm** %26, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load %struct.ieee_pending_parm*, %struct.ieee_pending_parm** %11, align 8
  %29 = getelementptr inbounds %struct.ieee_pending_parm, %struct.ieee_pending_parm* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %31 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %30, i32 0, i32 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ieee_pending_parm*, %struct.ieee_pending_parm** %11, align 8
  %37 = getelementptr inbounds %struct.ieee_pending_parm, %struct.ieee_pending_parm* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %39 = call i32 @ieee_pop_type(%struct.ieee_handle* %38)
  %40 = load %struct.ieee_pending_parm*, %struct.ieee_pending_parm** %11, align 8
  %41 = getelementptr inbounds %struct.ieee_pending_parm, %struct.ieee_pending_parm* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.ieee_pending_parm*, %struct.ieee_pending_parm** %11, align 8
  %44 = getelementptr inbounds %struct.ieee_pending_parm, %struct.ieee_pending_parm* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.ieee_pending_parm*, %struct.ieee_pending_parm** %11, align 8
  %47 = getelementptr inbounds %struct.ieee_pending_parm, %struct.ieee_pending_parm* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  %48 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %49 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %48, i32 0, i32 3
  store %struct.ieee_pending_parm** %49, %struct.ieee_pending_parm*** %12, align 8
  br label %50

50:                                               ; preds = %55, %4
  %51 = load %struct.ieee_pending_parm**, %struct.ieee_pending_parm*** %12, align 8
  %52 = load %struct.ieee_pending_parm*, %struct.ieee_pending_parm** %51, align 8
  %53 = icmp ne %struct.ieee_pending_parm* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.ieee_pending_parm**, %struct.ieee_pending_parm*** %12, align 8
  %57 = load %struct.ieee_pending_parm*, %struct.ieee_pending_parm** %56, align 8
  %58 = getelementptr inbounds %struct.ieee_pending_parm, %struct.ieee_pending_parm* %57, i32 0, i32 3
  store %struct.ieee_pending_parm** %58, %struct.ieee_pending_parm*** %12, align 8
  br label %50

59:                                               ; preds = %50
  %60 = load %struct.ieee_pending_parm*, %struct.ieee_pending_parm** %11, align 8
  %61 = load %struct.ieee_pending_parm**, %struct.ieee_pending_parm*** %12, align 8
  store %struct.ieee_pending_parm* %60, %struct.ieee_pending_parm** %61, align 8
  %62 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %63 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %64 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %63, i32 0, i32 2
  %65 = call i32 @ieee_change_buffer(%struct.ieee_handle* %62, i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %59
  %68 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %69 = load %struct.ieee_pending_parm*, %struct.ieee_pending_parm** %11, align 8
  %70 = getelementptr inbounds %struct.ieee_pending_parm, %struct.ieee_pending_parm* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ieee_write_number(%struct.ieee_handle* %68, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %67, %59
  %75 = load i32, i32* @FALSE, align 4
  store i32 %75, i32* %5, align 4
  br label %82

76:                                               ; preds = %67
  %77 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %78 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load i32, i32* @TRUE, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %76, %74
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.ieee_pending_parm*, i32, i32) #1

declare dso_local i32 @ieee_pop_type(%struct.ieee_handle*) #1

declare dso_local i32 @ieee_change_buffer(%struct.ieee_handle*, i32*) #1

declare dso_local i32 @ieee_write_number(%struct.ieee_handle*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
