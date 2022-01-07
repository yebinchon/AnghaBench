; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/compat/opensolaris/lib/libumem/extr_umem.c_umem_cache_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/compat/opensolaris/lib/libumem/extr_umem.c_umem_cache_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @umem_cache_create(i8* %0, i64 %1, i64 %2, i32* %3, i32* %4, i32* %5, i8* %6, i8* %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %11, align 8
  store i64 %1, i64* %12, align 8
  store i64 %2, i64* %13, align 8
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i8* %6, i8** %17, align 8
  store i8* %7, i8** %18, align 8
  store i32 %8, i32* %19, align 4
  %21 = load i8*, i8** %18, align 8
  %22 = icmp eq i8* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = call %struct.TYPE_4__* @malloc(i32 32)
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %20, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %27 = icmp eq %struct.TYPE_4__* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %9
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %10, align 8
  br label %43

29:                                               ; preds = %9
  %30 = load i32*, i32** %14, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  store i32* %30, i32** %32, align 8
  %33 = load i32*, i32** %15, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  store i32* %33, i32** %35, align 8
  %36 = load i8*, i8** %17, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  store %struct.TYPE_4__* %42, %struct.TYPE_4__** %10, align 8
  br label %43

43:                                               ; preds = %29, %28
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  ret %struct.TYPE_4__* %44
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_4__* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
