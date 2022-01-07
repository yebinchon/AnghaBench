; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_regcache.c_regcache_cooked_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_regcache.c_regcache_cooked_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regcache = type { %struct.TYPE_2__*, i64*, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @regcache_cooked_read(%struct.regcache* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.regcache*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.regcache* %0, %struct.regcache** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = icmp sge i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @gdb_assert(i32 %9)
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.regcache*, %struct.regcache** %4, align 8
  %13 = getelementptr inbounds %struct.regcache, %struct.regcache* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %11, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @gdb_assert(i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.regcache*, %struct.regcache** %4, align 8
  %22 = getelementptr inbounds %struct.regcache, %struct.regcache* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %20, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %3
  %28 = load %struct.regcache*, %struct.regcache** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @regcache_raw_read(%struct.regcache* %28, i32 %29, i8* %30)
  br label %80

32:                                               ; preds = %3
  %33 = load %struct.regcache*, %struct.regcache** %4, align 8
  %34 = getelementptr inbounds %struct.regcache, %struct.regcache* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %69

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.regcache*, %struct.regcache** %4, align 8
  %40 = getelementptr inbounds %struct.regcache, %struct.regcache* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %38, %43
  br i1 %44, label %45, label %69

45:                                               ; preds = %37
  %46 = load %struct.regcache*, %struct.regcache** %4, align 8
  %47 = getelementptr inbounds %struct.regcache, %struct.regcache* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %45
  %55 = load i8*, i8** %6, align 8
  %56 = load %struct.regcache*, %struct.regcache** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @register_buffer(%struct.regcache* %56, i32 %57)
  %59 = load %struct.regcache*, %struct.regcache** %4, align 8
  %60 = getelementptr inbounds %struct.regcache, %struct.regcache* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @memcpy(i8* %55, i32 %58, i32 %67)
  br label %79

69:                                               ; preds = %45, %37, %32
  %70 = load %struct.regcache*, %struct.regcache** %4, align 8
  %71 = getelementptr inbounds %struct.regcache, %struct.regcache* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.regcache*, %struct.regcache** %4, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load i8*, i8** %6, align 8
  %78 = call i32 @gdbarch_pseudo_register_read(i32 %74, %struct.regcache* %75, i32 %76, i8* %77)
  br label %79

79:                                               ; preds = %69, %54
  br label %80

80:                                               ; preds = %79, %27
  ret void
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @regcache_raw_read(%struct.regcache*, i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @register_buffer(%struct.regcache*, i32) #1

declare dso_local i32 @gdbarch_pseudo_register_read(i32, %struct.regcache*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
