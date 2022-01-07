; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_files.c_pchf_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_files.c_pchf_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pchf_entry = type { i64, i32*, i32 }
%struct.pchf_compare_data = type { i32, i64, i32*, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @pchf_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pchf_compare(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pchf_entry*, align 8
  %7 = alloca %struct.pchf_compare_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.pchf_entry*
  store %struct.pchf_entry* %11, %struct.pchf_entry** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.pchf_compare_data*
  store %struct.pchf_compare_data* %13, %struct.pchf_compare_data** %7, align 8
  %14 = load %struct.pchf_compare_data*, %struct.pchf_compare_data** %7, align 8
  %15 = getelementptr inbounds %struct.pchf_compare_data, %struct.pchf_compare_data* %14, i32 0, i32 4
  %16 = load %struct.pchf_entry*, %struct.pchf_entry** %6, align 8
  %17 = getelementptr inbounds %struct.pchf_entry, %struct.pchf_entry* %16, i32 0, i32 2
  %18 = call i32 @memcmp(i32* %15, i32* %17, i32 4)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  br label %70

23:                                               ; preds = %2
  %24 = load %struct.pchf_compare_data*, %struct.pchf_compare_data** %7, align 8
  %25 = getelementptr inbounds %struct.pchf_compare_data, %struct.pchf_compare_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %46, label %28

28:                                               ; preds = %23
  %29 = load %struct.pchf_compare_data*, %struct.pchf_compare_data** %7, align 8
  %30 = getelementptr inbounds %struct.pchf_compare_data, %struct.pchf_compare_data* %29, i32 0, i32 3
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %9, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.pchf_compare_data*, %struct.pchf_compare_data** %7, align 8
  %41 = getelementptr inbounds %struct.pchf_compare_data, %struct.pchf_compare_data* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @md5_buffer(i8* %35, i32 %39, i32* %42)
  %44 = load %struct.pchf_compare_data*, %struct.pchf_compare_data** %7, align 8
  %45 = getelementptr inbounds %struct.pchf_compare_data, %struct.pchf_compare_data* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  br label %46

46:                                               ; preds = %28, %23
  %47 = load %struct.pchf_compare_data*, %struct.pchf_compare_data** %7, align 8
  %48 = getelementptr inbounds %struct.pchf_compare_data, %struct.pchf_compare_data* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.pchf_entry*, %struct.pchf_entry** %6, align 8
  %51 = getelementptr inbounds %struct.pchf_entry, %struct.pchf_entry* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @memcmp(i32* %49, i32* %52, i32 16)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %3, align 4
  br label %70

58:                                               ; preds = %46
  %59 = load %struct.pchf_compare_data*, %struct.pchf_compare_data** %7, align 8
  %60 = getelementptr inbounds %struct.pchf_compare_data, %struct.pchf_compare_data* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load %struct.pchf_entry*, %struct.pchf_entry** %6, align 8
  %65 = getelementptr inbounds %struct.pchf_entry, %struct.pchf_entry* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63, %58
  store i32 0, i32* %3, align 4
  br label %70

69:                                               ; preds = %63
  store i32 1, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %68, %56, %21
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @md5_buffer(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
