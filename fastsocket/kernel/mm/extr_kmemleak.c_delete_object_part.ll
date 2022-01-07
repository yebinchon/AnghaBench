; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_kmemleak.c_delete_object_part.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_kmemleak.c_delete_object_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmemleak_object = type { i64, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @delete_object_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_object_part(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.kmemleak_object*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call %struct.kmemleak_object* @find_and_get_object(i64 %8, i32 1)
  store %struct.kmemleak_object* %9, %struct.kmemleak_object** %5, align 8
  %10 = load %struct.kmemleak_object*, %struct.kmemleak_object** %5, align 8
  %11 = icmp ne %struct.kmemleak_object* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %62

13:                                               ; preds = %2
  %14 = load %struct.kmemleak_object*, %struct.kmemleak_object** %5, align 8
  %15 = call i32 @__delete_object(%struct.kmemleak_object* %14)
  %16 = load %struct.kmemleak_object*, %struct.kmemleak_object** %5, align 8
  %17 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %6, align 8
  %19 = load %struct.kmemleak_object*, %struct.kmemleak_object** %5, align 8
  %20 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.kmemleak_object*, %struct.kmemleak_object** %5, align 8
  %23 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %21, %24
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp ugt i64 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %13
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* %6, align 8
  %33 = sub i64 %31, %32
  %34 = load %struct.kmemleak_object*, %struct.kmemleak_object** %5, align 8
  %35 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i32 @create_object(i64 %30, i64 %33, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %29, %13
  %40 = load i64, i64* %3, align 8
  %41 = load i64, i64* %4, align 8
  %42 = add i64 %40, %41
  %43 = load i64, i64* %7, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %39
  %46 = load i64, i64* %3, align 8
  %47 = load i64, i64* %4, align 8
  %48 = add i64 %46, %47
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %3, align 8
  %51 = sub i64 %49, %50
  %52 = load i64, i64* %4, align 8
  %53 = sub i64 %51, %52
  %54 = load %struct.kmemleak_object*, %struct.kmemleak_object** %5, align 8
  %55 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call i32 @create_object(i64 %48, i64 %53, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %45, %39
  %60 = load %struct.kmemleak_object*, %struct.kmemleak_object** %5, align 8
  %61 = call i32 @put_object(%struct.kmemleak_object* %60)
  br label %62

62:                                               ; preds = %59, %12
  ret void
}

declare dso_local %struct.kmemleak_object* @find_and_get_object(i64, i32) #1

declare dso_local i32 @__delete_object(%struct.kmemleak_object*) #1

declare dso_local i32 @create_object(i64, i64, i32, i32) #1

declare dso_local i32 @put_object(%struct.kmemleak_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
