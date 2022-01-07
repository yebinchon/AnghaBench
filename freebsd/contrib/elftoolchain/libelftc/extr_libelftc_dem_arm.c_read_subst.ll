; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_arm.c_read_subst.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_arm.c_read_subst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_data = type { i8*, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.demangle_data*)* @read_subst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_subst(%struct.demangle_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.demangle_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store %struct.demangle_data* %0, %struct.demangle_data** %3, align 8
  %6 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %7 = icmp eq %struct.demangle_data* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %74

9:                                                ; preds = %1
  %10 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %11 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = call i64 @strtol(i8* %13, i8** %5, i32 10)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %9
  %18 = load i64, i64* @errno, align 8
  %19 = load i64, i64* @EINVAL, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* @errno, align 8
  %23 = load i64, i64* @ERANGE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %17
  store i32 -1, i32* %2, align 4
  br label %74

26:                                               ; preds = %21, %9
  %27 = load i64, i64* %4, align 8
  %28 = icmp ugt i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i8*, i8** %5, align 8
  %32 = icmp ne i8* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i8*, i8** %5, align 8
  %36 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %37 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %39 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %38, i32 0, i32 2
  %40 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %41 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* %4, align 8
  %45 = sub i64 %44, 1
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @VEC_PUSH_STR(%struct.TYPE_2__* %39, i32 %47)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %26
  store i32 -1, i32* %2, align 4
  br label %74

51:                                               ; preds = %26
  %52 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %53 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %52, i32 0, i32 1
  %54 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %55 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* %4, align 8
  %59 = sub i64 %58, 1
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @VEC_PUSH_STR(%struct.TYPE_2__* %53, i32 %61)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %51
  store i32 -1, i32* %2, align 4
  br label %74

65:                                               ; preds = %51
  %66 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %67 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  store i32 1, i32* %2, align 4
  br label %74

73:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %72, %64, %50, %25, %8
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @VEC_PUSH_STR(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
