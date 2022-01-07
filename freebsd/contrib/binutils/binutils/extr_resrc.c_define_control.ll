; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_define_control.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_define_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_3__* @define_control(i32 %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i32 %6, i8* %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %10, align 4
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  store i8* %8, i8** %18, align 8
  %20 = call i64 @res_alloc(i32 88)
  %21 = inttoptr i64 %20 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %19, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 11
  store i32* null, i32** %23, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 10
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** %17, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 9
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** %18, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 8
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 7
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %13, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 6
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** %14, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 5
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** %15, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 4
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* %16, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i32* null, i32** %52, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  ret %struct.TYPE_3__* %55
}

declare dso_local i64 @res_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
