; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_regcache.c_regcache_cpy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_regcache.c_regcache_cpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regcache = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@do_cooked_read = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @regcache_cpy(%struct.regcache* %0, %struct.regcache* %1) #0 {
  %3 = alloca %struct.regcache*, align 8
  %4 = alloca %struct.regcache*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.regcache* %0, %struct.regcache** %3, align 8
  store %struct.regcache* %1, %struct.regcache** %4, align 8
  %7 = load %struct.regcache*, %struct.regcache** %4, align 8
  %8 = icmp ne %struct.regcache* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.regcache*, %struct.regcache** %3, align 8
  %11 = icmp ne %struct.regcache* %10, null
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi i1 [ false, %2 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @gdb_assert(i32 %14)
  %16 = load %struct.regcache*, %struct.regcache** %4, align 8
  %17 = getelementptr inbounds %struct.regcache, %struct.regcache* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.regcache*, %struct.regcache** %3, align 8
  %22 = getelementptr inbounds %struct.regcache, %struct.regcache* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %20, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @gdb_assert(i32 %27)
  %29 = load %struct.regcache*, %struct.regcache** %4, align 8
  %30 = load %struct.regcache*, %struct.regcache** %3, align 8
  %31 = icmp ne %struct.regcache* %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @gdb_assert(i32 %32)
  %34 = load %struct.regcache*, %struct.regcache** %4, align 8
  %35 = getelementptr inbounds %struct.regcache, %struct.regcache* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %12
  %39 = load %struct.regcache*, %struct.regcache** %3, align 8
  %40 = getelementptr inbounds %struct.regcache, %struct.regcache* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %38, %12
  %44 = phi i1 [ true, %12 ], [ %42, %38 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @gdb_assert(i32 %45)
  %47 = load %struct.regcache*, %struct.regcache** %4, align 8
  %48 = getelementptr inbounds %struct.regcache, %struct.regcache* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %43
  %52 = load %struct.regcache*, %struct.regcache** %3, align 8
  %53 = load i32, i32* @do_cooked_read, align 4
  %54 = load %struct.regcache*, %struct.regcache** %4, align 8
  %55 = call i32 @regcache_save(%struct.regcache* %52, i32 %53, %struct.regcache* %54)
  br label %71

56:                                               ; preds = %43
  %57 = load %struct.regcache*, %struct.regcache** %3, align 8
  %58 = getelementptr inbounds %struct.regcache, %struct.regcache* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load %struct.regcache*, %struct.regcache** %3, align 8
  %63 = load i32, i32* @do_cooked_read, align 4
  %64 = load %struct.regcache*, %struct.regcache** %4, align 8
  %65 = call i32 @regcache_restore(%struct.regcache* %62, i32 %63, %struct.regcache* %64)
  br label %70

66:                                               ; preds = %56
  %67 = load %struct.regcache*, %struct.regcache** %3, align 8
  %68 = load %struct.regcache*, %struct.regcache** %4, align 8
  %69 = call i32 @regcache_cpy_no_passthrough(%struct.regcache* %67, %struct.regcache* %68)
  br label %70

70:                                               ; preds = %66, %61
  br label %71

71:                                               ; preds = %70, %51
  ret void
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @regcache_save(%struct.regcache*, i32, %struct.regcache*) #1

declare dso_local i32 @regcache_restore(%struct.regcache*, i32, %struct.regcache*) #1

declare dso_local i32 @regcache_cpy_no_passthrough(%struct.regcache*, %struct.regcache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
