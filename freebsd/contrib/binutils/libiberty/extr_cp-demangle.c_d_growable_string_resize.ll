; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cp-demangle.c_d_growable_string_resize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cp-demangle.c_d_growable_string_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d_growable_string = type { i32, i32, i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d_growable_string*, i64)* @d_growable_string_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d_growable_string_resize(%struct.d_growable_string* %0, i64 %1) #0 {
  %3 = alloca %struct.d_growable_string*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.d_growable_string* %0, %struct.d_growable_string** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.d_growable_string*, %struct.d_growable_string** %3, align 8
  %8 = getelementptr inbounds %struct.d_growable_string, %struct.d_growable_string* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %62

12:                                               ; preds = %2
  %13 = load %struct.d_growable_string*, %struct.d_growable_string** %3, align 8
  %14 = getelementptr inbounds %struct.d_growable_string, %struct.d_growable_string* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load %struct.d_growable_string*, %struct.d_growable_string** %3, align 8
  %19 = getelementptr inbounds %struct.d_growable_string, %struct.d_growable_string* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  br label %22

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21, %17
  %23 = phi i32 [ %20, %17 ], [ 2, %21 ]
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %5, align 8
  br label %25

25:                                               ; preds = %29, %22
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* %4, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i64, i64* %5, align 8
  %31 = shl i64 %30, 1
  store i64 %31, i64* %5, align 8
  br label %25

32:                                               ; preds = %25
  %33 = load %struct.d_growable_string*, %struct.d_growable_string** %3, align 8
  %34 = getelementptr inbounds %struct.d_growable_string, %struct.d_growable_string* %33, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i64 @realloc(i8* %35, i64 %36)
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** %6, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %32
  %42 = load %struct.d_growable_string*, %struct.d_growable_string** %3, align 8
  %43 = getelementptr inbounds %struct.d_growable_string, %struct.d_growable_string* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @free(i8* %44)
  %46 = load %struct.d_growable_string*, %struct.d_growable_string** %3, align 8
  %47 = getelementptr inbounds %struct.d_growable_string, %struct.d_growable_string* %46, i32 0, i32 2
  store i8* null, i8** %47, align 8
  %48 = load %struct.d_growable_string*, %struct.d_growable_string** %3, align 8
  %49 = getelementptr inbounds %struct.d_growable_string, %struct.d_growable_string* %48, i32 0, i32 3
  store i64 0, i64* %49, align 8
  %50 = load %struct.d_growable_string*, %struct.d_growable_string** %3, align 8
  %51 = getelementptr inbounds %struct.d_growable_string, %struct.d_growable_string* %50, i32 0, i32 1
  store i32 0, i32* %51, align 4
  %52 = load %struct.d_growable_string*, %struct.d_growable_string** %3, align 8
  %53 = getelementptr inbounds %struct.d_growable_string, %struct.d_growable_string* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  br label %62

54:                                               ; preds = %32
  %55 = load i8*, i8** %6, align 8
  %56 = load %struct.d_growable_string*, %struct.d_growable_string** %3, align 8
  %57 = getelementptr inbounds %struct.d_growable_string, %struct.d_growable_string* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  %58 = load i64, i64* %5, align 8
  %59 = trunc i64 %58 to i32
  %60 = load %struct.d_growable_string*, %struct.d_growable_string** %3, align 8
  %61 = getelementptr inbounds %struct.d_growable_string, %struct.d_growable_string* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %54, %41, %11
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
