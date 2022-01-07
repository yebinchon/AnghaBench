; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_buf.c_xfs_buf_associate_memory.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_buf.c_xfs_buf_associate_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i64, i64, i32, i32*, i8* }

@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@XBF_DONT_BLOCK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@XBF_MAPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_buf_associate_memory(%struct.TYPE_5__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = ptrtoint i8* %14 to i64
  %16 = load i64, i64* @PAGE_MASK, align 8
  %17 = and i64 %15, %16
  store i64 %17, i64* %10, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = ptrtoint i8* %18 to i64
  %20 = load i64, i64* %10, align 8
  %21 = sub i64 %19, %20
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %11, align 8
  %24 = add i64 %22, %23
  %25 = call i64 @PAGE_ALIGN(i64 %24)
  store i64 %25, i64* %12, align 8
  %26 = load i64, i64* %12, align 8
  %27 = load i64, i64* @PAGE_SHIFT, align 8
  %28 = lshr i64 %26, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %13, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 5
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %3
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = call i32 @_xfs_buf_free_pages(%struct.TYPE_5__* %35)
  br label %37

37:                                               ; preds = %34, %3
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 5
  store i32* null, i32** %39, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 6
  store i8* %40, i8** %42, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @XBF_DONT_BLOCK, align 4
  %46 = call i32 @_xfs_buf_get_pages(%struct.TYPE_5__* %43, i32 %44, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %89

51:                                               ; preds = %37
  %52 = load i64, i64* %11, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  store i32 0, i32* %9, align 4
  br label %55

55:                                               ; preds = %74, %51
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %55
  %62 = load i64, i64* %10, align 8
  %63 = inttoptr i64 %62 to i8*
  %64 = call i32 @mem_to_page(i8* %63)
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 5
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %64, i32* %70, align 4
  %71 = load i64, i64* @PAGE_SIZE, align 8
  %72 = load i64, i64* %10, align 8
  %73 = add i64 %72, %71
  store i64 %73, i64* %10, align 8
  br label %74

74:                                               ; preds = %61
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %55

77:                                               ; preds = %55
  %78 = load i64, i64* %7, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  store i64 %78, i64* %80, align 8
  %81 = load i64, i64* %12, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 3
  store i64 %81, i64* %83, align 8
  %84 = load i32, i32* @XBF_MAPPED, align 4
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %77, %49
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i32 @_xfs_buf_free_pages(%struct.TYPE_5__*) #1

declare dso_local i32 @_xfs_buf_get_pages(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @mem_to_page(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
