; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_sbitmap.c_sbitmap_vector_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_sbitmap.c_sbitmap_vector_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.anon = type { i8, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__** @sbitmap_vector_alloc(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__**, align 8
  %13 = alloca %struct.anon, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @SBITMAP_SET_SIZE(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = zext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = zext i32 %22 to i64
  %24 = add i64 4, %23
  %25 = sub i64 %24, 4
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %3, align 4
  %28 = zext i32 %27 to i64
  %29 = mul i64 %28, 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %11, align 4
  %31 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 1
  %32 = bitcast i32* %31 to i8*
  %33 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 0
  %34 = ptrtoint i8* %32 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %14, align 4
  %40 = add i32 %38, %39
  %41 = sub i32 %40, 1
  %42 = load i32, i32* %14, align 4
  %43 = sub nsw i32 %42, 1
  %44 = xor i32 %43, -1
  %45 = and i32 %41, %44
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %8, align 4
  %49 = mul i32 %47, %48
  %50 = add i32 %46, %49
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call %struct.TYPE_4__** @xmalloc(i32 %51)
  store %struct.TYPE_4__** %52, %struct.TYPE_4__*** %12, align 8
  store i32 0, i32* %5, align 4
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %79, %2
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %3, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %85

58:                                               ; preds = %54
  %59 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %12, align 8
  %60 = bitcast %struct.TYPE_4__** %59 to i8*
  %61 = load i32, i32* %7, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = bitcast i8* %63 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %64, %struct.TYPE_4__** %15, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %66 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %12, align 8
  %67 = load i32, i32* %5, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %66, i64 %68
  store %struct.TYPE_4__* %65, %struct.TYPE_4__** %69, align 8
  %70 = load i32, i32* %4, align 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %58
  %80 = load i32, i32* %5, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %7, align 4
  %84 = add i32 %83, %82
  store i32 %84, i32* %7, align 4
  br label %54

85:                                               ; preds = %54
  %86 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %12, align 8
  ret %struct.TYPE_4__** %86
}

declare dso_local i32 @SBITMAP_SET_SIZE(i32) #1

declare dso_local %struct.TYPE_4__** @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
