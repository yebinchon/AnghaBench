; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_add_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_add_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg_lookup = type { i64, i64 }

@.str = private unnamed_addr constant [24 x i8] c"%q+D is not a function,\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"  conflict with %q+D\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"  in call to %qD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arg_lookup*, i64)* @add_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_function(%struct.arg_lookup* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.arg_lookup*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.arg_lookup* %0, %struct.arg_lookup** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.arg_lookup*, %struct.arg_lookup** %4, align 8
  %9 = getelementptr inbounds %struct.arg_lookup, %struct.arg_lookup* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.arg_lookup*, %struct.arg_lookup** %4, align 8
  %15 = getelementptr inbounds %struct.arg_lookup, %struct.arg_lookup* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  br label %65

16:                                               ; preds = %2
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.arg_lookup*, %struct.arg_lookup** %4, align 8
  %19 = getelementptr inbounds %struct.arg_lookup, %struct.arg_lookup* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %64

23:                                               ; preds = %16
  %24 = load %struct.arg_lookup*, %struct.arg_lookup** %4, align 8
  %25 = getelementptr inbounds %struct.arg_lookup, %struct.arg_lookup* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @is_overloaded_fn(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load i64, i64* %5, align 8
  %31 = call i64 @is_overloaded_fn(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.arg_lookup*, %struct.arg_lookup** %4, align 8
  %36 = getelementptr inbounds %struct.arg_lookup, %struct.arg_lookup* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @build_overload(i64 %34, i64 %37)
  %39 = load %struct.arg_lookup*, %struct.arg_lookup** %4, align 8
  %40 = getelementptr inbounds %struct.arg_lookup, %struct.arg_lookup* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %63

41:                                               ; preds = %29, %23
  %42 = load %struct.arg_lookup*, %struct.arg_lookup** %4, align 8
  %43 = getelementptr inbounds %struct.arg_lookup, %struct.arg_lookup* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @OVL_CURRENT(i64 %44)
  store i64 %45, i64* %6, align 8
  %46 = load i64, i64* %5, align 8
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i64 @is_overloaded_fn(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load i64, i64* %6, align 8
  store i64 %51, i64* %5, align 8
  %52 = load i64, i64* %7, align 8
  store i64 %52, i64* %6, align 8
  %53 = load i64, i64* %5, align 8
  store i64 %53, i64* %7, align 8
  br label %54

54:                                               ; preds = %50, %41
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %55)
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %57)
  %59 = load %struct.arg_lookup*, %struct.arg_lookup** %4, align 8
  %60 = getelementptr inbounds %struct.arg_lookup, %struct.arg_lookup* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %61)
  store i32 1, i32* %3, align 4
  br label %66

63:                                               ; preds = %33
  br label %64

64:                                               ; preds = %63, %22
  br label %65

65:                                               ; preds = %64, %12
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %54
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @is_overloaded_fn(i64) #1

declare dso_local i64 @build_overload(i64, i64) #1

declare dso_local i64 @OVL_CURRENT(i64) #1

declare dso_local i32 @error(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
