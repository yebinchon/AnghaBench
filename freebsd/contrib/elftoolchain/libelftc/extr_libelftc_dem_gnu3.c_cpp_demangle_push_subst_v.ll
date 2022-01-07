; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu3.c_cpp_demangle_push_subst_v.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu3.c_cpp_demangle_push_subst_v.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_demangle_data = type { i32 }
%struct.vector_str = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpp_demangle_data*, %struct.vector_str*)* @cpp_demangle_push_subst_v to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpp_demangle_push_subst_v(%struct.cpp_demangle_data* %0, %struct.vector_str* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpp_demangle_data*, align 8
  %5 = alloca %struct.vector_str*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.cpp_demangle_data* %0, %struct.cpp_demangle_data** %4, align 8
  store %struct.vector_str* %1, %struct.vector_str** %5, align 8
  %9 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %10 = icmp eq %struct.cpp_demangle_data* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load %struct.vector_str*, %struct.vector_str** %5, align 8
  %13 = icmp eq %struct.vector_str* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %2
  store i32 0, i32* %3, align 4
  br label %28

15:                                               ; preds = %11
  %16 = load %struct.vector_str*, %struct.vector_str** %5, align 8
  %17 = call i8* @vector_str_get_flat(%struct.vector_str* %16, i64* %6)
  store i8* %17, i8** %8, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %28

20:                                               ; preds = %15
  %21 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @cpp_demangle_push_subst(%struct.cpp_demangle_data* %21, i8* %22, i64 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @free(i8* %25)
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %20, %19, %14
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i8* @vector_str_get_flat(%struct.vector_str*, i64*) #1

declare dso_local i32 @cpp_demangle_push_subst(%struct.cpp_demangle_data*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
