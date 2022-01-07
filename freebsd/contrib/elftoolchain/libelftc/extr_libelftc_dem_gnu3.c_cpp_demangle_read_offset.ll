; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu3.c_cpp_demangle_read_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu3.c_cpp_demangle_read_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_demangle_data = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpp_demangle_data*)* @cpp_demangle_read_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpp_demangle_read_offset(%struct.cpp_demangle_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpp_demangle_data*, align 8
  store %struct.cpp_demangle_data* %0, %struct.cpp_demangle_data** %3, align 8
  %4 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %5 = icmp eq %struct.cpp_demangle_data* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %37

7:                                                ; preds = %1
  %8 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %9 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 104
  br i1 %13, label %14, label %21

14:                                               ; preds = %7
  %15 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %16 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %16, align 8
  %19 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %20 = call i32 @cpp_demangle_read_nv_offset(%struct.cpp_demangle_data* %19)
  store i32 %20, i32* %2, align 4
  br label %37

21:                                               ; preds = %7
  %22 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %23 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 118
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %30 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %30, align 8
  %33 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %34 = call i32 @cpp_demangle_read_v_offset(%struct.cpp_demangle_data* %33)
  store i32 %34, i32* %2, align 4
  br label %37

35:                                               ; preds = %21
  br label %36

36:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %28, %14, %6
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @cpp_demangle_read_nv_offset(%struct.cpp_demangle_data*) #1

declare dso_local i32 @cpp_demangle_read_v_offset(%struct.cpp_demangle_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
