; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu3.c_cpp_demangle_push_subst.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu3.c_cpp_demangle_push_subst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_demangle_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpp_demangle_data*, i8*, i64)* @cpp_demangle_push_subst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpp_demangle_push_subst(%struct.cpp_demangle_data* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpp_demangle_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.cpp_demangle_data* %0, %struct.cpp_demangle_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %9 = icmp eq %struct.cpp_demangle_data* %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = load i8*, i8** %6, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i64, i64* %7, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %10, %3
  store i32 0, i32* %4, align 4
  br label %31

17:                                               ; preds = %13
  %18 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %19 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %18, i32 0, i32 0
  %20 = load i8*, i8** %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @vector_str_find(i32* %19, i8* %20, i64 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %17
  %25 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %26 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %25, i32 0, i32 0
  %27 = load i8*, i8** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @vector_str_push(i32* %26, i8* %27, i64 %28)
  store i32 %29, i32* %4, align 4
  br label %31

30:                                               ; preds = %17
  store i32 1, i32* %4, align 4
  br label %31

31:                                               ; preds = %30, %24, %16
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @vector_str_find(i32*, i8*, i64) #1

declare dso_local i32 @vector_str_push(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
