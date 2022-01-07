; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_sendrecv.c_ddt_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_sendrecv.c_ddt_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__**, i32 }
%struct.TYPE_12__ = type { i64, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i32* }

@B_TRUE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_11__*, %struct.TYPE_10__*, i64, i32*)* @ddt_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ddt_update(i32* %0, %struct.TYPE_11__* %1, %struct.TYPE_10__* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_12__**, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @BF64_GET(i32 %18, i32 0, i32 %21)
  store i64 %22, i64* %12, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %24, align 8
  %26 = load i64, i64* %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %25, i64 %26
  store %struct.TYPE_12__** %27, %struct.TYPE_12__*** %13, align 8
  br label %28

28:                                               ; preds = %57, %5
  %29 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %13, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = icmp ne %struct.TYPE_12__* %30, null
  br i1 %31, label %32, label %61

32:                                               ; preds = %28
  %33 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %13, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i64 @ZIO_CHECKSUM_EQUAL(i32 %36, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %32
  %43 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %13, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %10, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %13, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32*, i32** %11, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* @B_TRUE, align 4
  store i32 %55, i32* %6, align 4
  br label %70

56:                                               ; preds = %42, %32
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %13, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 3
  store %struct.TYPE_12__** %60, %struct.TYPE_12__*** %13, align 8
  br label %28

61:                                               ; preds = %28
  %62 = load i32*, i32** %7, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %64 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %13, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = call i32 @ddt_hash_append(i32* %62, %struct.TYPE_11__* %63, %struct.TYPE_12__** %64, %struct.TYPE_10__* %65, i64 %66, i32* %67)
  %69 = load i32, i32* @B_FALSE, align 4
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %61, %49
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i64 @BF64_GET(i32, i32, i32) #1

declare dso_local i64 @ZIO_CHECKSUM_EQUAL(i32, i32*) #1

declare dso_local i32 @ddt_hash_append(i32*, %struct.TYPE_11__*, %struct.TYPE_12__**, %struct.TYPE_10__*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
