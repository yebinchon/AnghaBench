; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cp-demangle.c_d_print_resize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cp-demangle.c_d_print_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d_print_info = type { i8*, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d_print_info*, i64)* @d_print_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d_print_resize(%struct.d_print_info* %0, i64 %1) #0 {
  %3 = alloca %struct.d_print_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.d_print_info* %0, %struct.d_print_info** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %9 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %54

13:                                               ; preds = %2
  %14 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %15 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = add i64 %16, %17
  store i64 %18, i64* %5, align 8
  br label %19

19:                                               ; preds = %47, %13
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %22 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ugt i64 %20, %23
  br i1 %24, label %25, label %54

25:                                               ; preds = %19
  %26 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %27 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = mul i64 %28, 2
  store i64 %29, i64* %6, align 8
  %30 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %31 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i64 @realloc(i8* %32, i64 %33)
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** %7, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %25
  %39 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %40 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @free(i8* %41)
  %43 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %44 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %43, i32 0, i32 0
  store i8* null, i8** %44, align 8
  %45 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %46 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %45, i32 0, i32 3
  store i32 1, i32* %46, align 8
  br label %54

47:                                               ; preds = %25
  %48 = load i8*, i8** %7, align 8
  %49 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %50 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %53 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %52, i32 0, i32 2
  store i64 %51, i64* %53, align 8
  br label %19

54:                                               ; preds = %12, %38, %19
  ret void
}

declare dso_local i64 @realloc(i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
