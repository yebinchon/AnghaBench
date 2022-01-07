; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu2.c_read_class.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu2.c_read_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_data = type { i8*, i32, i32 }

@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.demangle_data*)* @read_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_class(%struct.demangle_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.demangle_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store %struct.demangle_data* %0, %struct.demangle_data** %3, align 8
  %6 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %7 = icmp eq %struct.demangle_data* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %49

9:                                                ; preds = %1
  %10 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %11 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i64 @strtol(i8* %12, i8** %5, i32 10)
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %9
  %17 = load i64, i64* @errno, align 8
  %18 = load i64, i64* @EINVAL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i64, i64* @errno, align 8
  %22 = load i64, i64* @ERANGE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %16
  store i32 0, i32* %2, align 4
  br label %49

25:                                               ; preds = %20, %9
  %26 = load i64, i64* %4, align 8
  %27 = icmp ugt i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i8*, i8** %5, align 8
  %31 = icmp ne i8* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %35 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %34, i32 0, i32 2
  %36 = load i8*, i8** %5, align 8
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @vector_str_push(i32* %35, i8* %36, i64 %37)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %49

41:                                               ; preds = %25
  %42 = load i8*, i8** %5, align 8
  %43 = load i64, i64* %4, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %46 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  %47 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %48 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %47, i32 0, i32 1
  store i32 1, i32* %48, align 8
  store i32 1, i32* %2, align 4
  br label %49

49:                                               ; preds = %41, %40, %24, %8
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vector_str_push(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
