; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/builtins/extr_emutls.c_emutls_get_address_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/builtins/extr_emutls.c_emutls_get_address_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32 }

@EMUTLS_SKIP_DESTRUCTOR_ROUNDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i64)* @emutls_get_address_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @emutls_get_address_array(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %7 = call %struct.TYPE_6__* (...) @emutls_getspecific()
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %3, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = icmp eq %struct.TYPE_6__* %8, null
  br i1 %9, label %10, label %33

10:                                               ; preds = %1
  %11 = load i64, i64* %2, align 8
  %12 = call i64 @emutls_new_data_array_size(i64 %11)
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @emutls_asize(i64 %13)
  %15 = call i64 @malloc(i32 %14)
  %16 = inttoptr i64 %15 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %3, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %10
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %4, align 8
  %24 = mul i64 %23, 8
  %25 = call i32 @memset(i64 %22, i32 0, i64 %24)
  %26 = load i32, i32* @EMUTLS_SKIP_DESTRUCTOR_ROUNDS, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  br label %29

29:                                               ; preds = %19, %10
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @emutls_check_array_set_size(%struct.TYPE_6__* %30, i64 %31)
  br label %68

33:                                               ; preds = %1
  %34 = load i64, i64* %2, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ugt i64 %34, %37
  br i1 %38, label %39, label %67

39:                                               ; preds = %33
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %2, align 8
  %44 = call i64 @emutls_new_data_array_size(i64 %43)
  store i64 %44, i64* %6, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @emutls_asize(i64 %46)
  %48 = call i64 @realloc(%struct.TYPE_6__* %45, i32 %47)
  %49 = inttoptr i64 %48 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %49, %struct.TYPE_6__** %3, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %51 = icmp ne %struct.TYPE_6__* %50, null
  br i1 %51, label %52, label %63

52:                                               ; preds = %39
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %5, align 8
  %57 = add i64 %55, %56
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* %5, align 8
  %60 = sub i64 %58, %59
  %61 = mul i64 %60, 8
  %62 = call i32 @memset(i64 %57, i32 0, i64 %61)
  br label %63

63:                                               ; preds = %52, %39
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @emutls_check_array_set_size(%struct.TYPE_6__* %64, i64 %65)
  br label %67

67:                                               ; preds = %63, %33
  br label %68

68:                                               ; preds = %67, %29
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %69
}

declare dso_local %struct.TYPE_6__* @emutls_getspecific(...) #1

declare dso_local i64 @emutls_new_data_array_size(i64) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @emutls_asize(i64) #1

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i32 @emutls_check_array_set_size(%struct.TYPE_6__*, i64) #1

declare dso_local i64 @realloc(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
