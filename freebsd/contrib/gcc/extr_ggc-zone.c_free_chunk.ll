; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-zone.c_free_chunk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-zone.c_free_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.alloc_zone = type { i64, %struct.alloc_chunk** }
%struct.alloc_chunk = type { i64, %struct.alloc_chunk* }

@NUM_FREE_BINS = common dso_local global i64 0, align 8
@GGC_DEBUG_LEVEL = common dso_local global i32 0, align 4
@G = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [31 x i8] c"Deallocating object, chunk=%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, %struct.alloc_zone*)* @free_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_chunk(i8* %0, i64 %1, %struct.alloc_zone* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.alloc_zone*, align 8
  %7 = alloca %struct.alloc_chunk*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.alloc_zone* %2, %struct.alloc_zone** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.alloc_chunk*
  store %struct.alloc_chunk* %10, %struct.alloc_chunk** %7, align 8
  store i64 0, i64* %8, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i64 @SIZE_BIN_DOWN(i64 %11)
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @gcc_assert(i32 %15)
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @NUM_FREE_BINS, align 8
  %19 = icmp ugt i64 %17, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  %21 = load %struct.alloc_chunk*, %struct.alloc_chunk** %7, align 8
  %22 = call i32 @VALGRIND_MAKE_WRITABLE(%struct.alloc_chunk* %21, i32 16)
  %23 = call i32 @VALGRIND_DISCARD(i32 %22)
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.alloc_chunk*, %struct.alloc_chunk** %7, align 8
  %26 = getelementptr inbounds %struct.alloc_chunk, %struct.alloc_chunk* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.alloc_zone*, %struct.alloc_zone** %6, align 8
  %28 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %27, i32 0, i32 1
  %29 = load %struct.alloc_chunk**, %struct.alloc_chunk*** %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds %struct.alloc_chunk*, %struct.alloc_chunk** %29, i64 %30
  %32 = load %struct.alloc_chunk*, %struct.alloc_chunk** %31, align 8
  %33 = load %struct.alloc_chunk*, %struct.alloc_chunk** %7, align 8
  %34 = getelementptr inbounds %struct.alloc_chunk, %struct.alloc_chunk* %33, i32 0, i32 1
  store %struct.alloc_chunk* %32, %struct.alloc_chunk** %34, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 16
  %37 = load i64, i64* %5, align 8
  %38 = sub i64 %37, 16
  %39 = trunc i64 %38 to i32
  %40 = call i32 @VALGRIND_MAKE_NOACCESS(i8* %36, i32 %39)
  %41 = call i32 @VALGRIND_DISCARD(i32 %40)
  br label %61

42:                                               ; preds = %3
  %43 = load %struct.alloc_chunk*, %struct.alloc_chunk** %7, align 8
  %44 = call i32 @VALGRIND_MAKE_WRITABLE(%struct.alloc_chunk* %43, i32 8)
  %45 = call i32 @VALGRIND_DISCARD(i32 %44)
  %46 = load %struct.alloc_zone*, %struct.alloc_zone** %6, align 8
  %47 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %46, i32 0, i32 1
  %48 = load %struct.alloc_chunk**, %struct.alloc_chunk*** %47, align 8
  %49 = load i64, i64* %8, align 8
  %50 = getelementptr inbounds %struct.alloc_chunk*, %struct.alloc_chunk** %48, i64 %49
  %51 = load %struct.alloc_chunk*, %struct.alloc_chunk** %50, align 8
  %52 = load %struct.alloc_chunk*, %struct.alloc_chunk** %7, align 8
  %53 = getelementptr inbounds %struct.alloc_chunk, %struct.alloc_chunk* %52, i32 0, i32 1
  store %struct.alloc_chunk* %51, %struct.alloc_chunk** %53, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 8
  %56 = load i64, i64* %5, align 8
  %57 = sub i64 %56, 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 @VALGRIND_MAKE_NOACCESS(i8* %55, i32 %58)
  %60 = call i32 @VALGRIND_DISCARD(i32 %59)
  br label %61

61:                                               ; preds = %42, %20
  %62 = load %struct.alloc_chunk*, %struct.alloc_chunk** %7, align 8
  %63 = load %struct.alloc_zone*, %struct.alloc_zone** %6, align 8
  %64 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %63, i32 0, i32 1
  %65 = load %struct.alloc_chunk**, %struct.alloc_chunk*** %64, align 8
  %66 = load i64, i64* %8, align 8
  %67 = getelementptr inbounds %struct.alloc_chunk*, %struct.alloc_chunk** %65, i64 %66
  store %struct.alloc_chunk* %62, %struct.alloc_chunk** %67, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load %struct.alloc_zone*, %struct.alloc_zone** %6, align 8
  %70 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ugt i64 %68, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %61
  %74 = load i64, i64* %8, align 8
  %75 = load %struct.alloc_zone*, %struct.alloc_zone** %6, align 8
  %76 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %73, %61
  %78 = load i32, i32* @GGC_DEBUG_LEVEL, align 4
  %79 = icmp sge i32 %78, 3
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @G, i32 0, i32 0), align 4
  %82 = load %struct.alloc_chunk*, %struct.alloc_chunk** %7, align 8
  %83 = bitcast %struct.alloc_chunk* %82 to i8*
  %84 = call i32 @fprintf(i32 %81, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %83)
  br label %85

85:                                               ; preds = %80, %77
  ret void
}

declare dso_local i64 @SIZE_BIN_DOWN(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @VALGRIND_DISCARD(i32) #1

declare dso_local i32 @VALGRIND_MAKE_WRITABLE(%struct.alloc_chunk*, i32) #1

declare dso_local i32 @VALGRIND_MAKE_NOACCESS(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
