; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_sort_syms.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_sort_syms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64, i64 }

@sort_syms_psecs = common dso_local global %struct.TYPE_5__** null, align 8
@sort_syms_syms = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @sort_syms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sort_syms(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__**, align 8
  %7 = alloca %struct.TYPE_6__**, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_6__**
  store %struct.TYPE_6__** %12, %struct.TYPE_6__*** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_6__**
  store %struct.TYPE_6__** %14, %struct.TYPE_6__*** %7, align 8
  %15 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @sort_syms_psecs, align 8
  %16 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sort_syms_syms, align 8
  %19 = ptrtoint %struct.TYPE_6__* %17 to i64
  %20 = ptrtoint %struct.TYPE_6__* %18 to i64
  %21 = sub i64 %19, %20
  %22 = sdiv exact i64 %21, 16
  %23 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %15, i64 %22
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %8, align 8
  %25 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @sort_syms_psecs, align 8
  %26 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sort_syms_syms, align 8
  %29 = ptrtoint %struct.TYPE_6__* %27 to i64
  %30 = ptrtoint %struct.TYPE_6__* %28 to i64
  %31 = sub i64 %29, %30
  %32 = sdiv exact i64 %31, 16
  %33 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %25, i64 %32
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %9, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %37 = icmp ne %struct.TYPE_5__* %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %2
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %41, %44
  store i32 %45, i32* %3, align 4
  br label %88

46:                                               ; preds = %2
  %47 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %50, %54
  store i64 %55, i64* %10, align 8
  %56 = load i64, i64* %10, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %46
  %59 = load i64, i64* %10, align 8
  %60 = icmp slt i64 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 -1, i32 1
  store i32 %62, i32* %3, align 4
  br label %88

63:                                               ; preds = %46
  %64 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %67, %71
  store i64 %72, i64* %10, align 8
  %73 = load i64, i64* %10, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %63
  %76 = load i64, i64* %10, align 8
  %77 = icmp slt i64 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 -1, i32 1
  store i32 %79, i32* %3, align 4
  br label %88

80:                                               ; preds = %63
  %81 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = icmp ult %struct.TYPE_6__* %82, %84
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 -1, i32 1
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %80, %75, %58, %38
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
