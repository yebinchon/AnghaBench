; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cp-demangle.c_cplus_demangle_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cp-demangle.c_cplus_demangle_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_component = type { i32 }
%struct.d_print_info = type { i32, i32, i8*, i64, i32*, i32*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cplus_demangle_print(i32 %0, %struct.demangle_component* %1, i32 %2, i64* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.demangle_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.d_print_info, align 8
  store i32 %0, i32* %6, align 4
  store %struct.demangle_component* %1, %struct.demangle_component** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %10, i32 0, i32 0
  store i32 %11, i32* %12, align 8
  %13 = load i32, i32* %8, align 4
  %14 = add nsw i32 %13, 1
  %15 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %10, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %10, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @malloc(i32 %17)
  %19 = inttoptr i64 %18 to i8*
  %20 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %10, i32 0, i32 2
  store i8* %19, i8** %20, align 8
  %21 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %10, i32 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i64*, i64** %9, align 8
  store i64 1, i64* %25, align 8
  store i8* null, i8** %5, align 8
  br label %49

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %10, i32 0, i32 6
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %10, i32 0, i32 5
  store i32* null, i32** %28, align 8
  %29 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %10, i32 0, i32 4
  store i32* null, i32** %29, align 8
  %30 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %10, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  %32 = call i32 @d_print_comp(%struct.d_print_info* %10, %struct.demangle_component* %31)
  %33 = call i32 @d_append_char(%struct.d_print_info* %10, i8 signext 0)
  %34 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %10, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %10, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = load i64*, i64** %9, align 8
  store i64 %40, i64* %41, align 8
  br label %46

42:                                               ; preds = %26
  %43 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %10, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load i64*, i64** %9, align 8
  store i64 %44, i64* %45, align 8
  br label %46

46:                                               ; preds = %42, %37
  %47 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %10, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %5, align 8
  br label %49

49:                                               ; preds = %46, %24
  %50 = load i8*, i8** %5, align 8
  ret i8* %50
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @d_print_comp(%struct.d_print_info*, %struct.demangle_component*) #1

declare dso_local i32 @d_append_char(%struct.d_print_info*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
