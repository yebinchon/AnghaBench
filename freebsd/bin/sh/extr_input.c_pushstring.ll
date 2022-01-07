; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_input.c_pushstring.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_input.c_pushstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.strpush, %struct.strpush* }
%struct.strpush = type { i8*, i32, %struct.alias*, i32, %struct.strpush* }
%struct.alias = type { i32 }

@INTOFF = common dso_local global i32 0, align 4
@parsefile = common dso_local global %struct.TYPE_2__* null, align 8
@parsenextc = common dso_local global i8* null, align 8
@parsenleft = common dso_local global i32 0, align 4
@parselleft = common dso_local global i32 0, align 4
@ALIASINUSE = common dso_local global i32 0, align 4
@INTON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pushstring(i8* %0, i32 %1, %struct.alias* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.alias*, align 8
  %7 = alloca %struct.strpush*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.alias* %2, %struct.alias** %6, align 8
  %8 = load i32, i32* @INTOFF, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @parsefile, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.strpush*, %struct.strpush** %10, align 8
  %12 = icmp ne %struct.strpush* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = call %struct.strpush* @ckmalloc(i32 40)
  store %struct.strpush* %14, %struct.strpush** %7, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @parsefile, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load %struct.strpush*, %struct.strpush** %16, align 8
  %18 = load %struct.strpush*, %struct.strpush** %7, align 8
  %19 = getelementptr inbounds %struct.strpush, %struct.strpush* %18, i32 0, i32 4
  store %struct.strpush* %17, %struct.strpush** %19, align 8
  %20 = load %struct.strpush*, %struct.strpush** %7, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @parsefile, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store %struct.strpush* %20, %struct.strpush** %22, align 8
  br label %28

23:                                               ; preds = %3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @parsefile, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @parsefile, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store %struct.strpush* %25, %struct.strpush** %27, align 8
  store %struct.strpush* %25, %struct.strpush** %7, align 8
  br label %28

28:                                               ; preds = %23, %13
  %29 = load i8*, i8** @parsenextc, align 8
  %30 = load %struct.strpush*, %struct.strpush** %7, align 8
  %31 = getelementptr inbounds %struct.strpush, %struct.strpush* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* @parsenleft, align 4
  %33 = load %struct.strpush*, %struct.strpush** %7, align 8
  %34 = getelementptr inbounds %struct.strpush, %struct.strpush* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @parselleft, align 4
  %36 = load %struct.strpush*, %struct.strpush** %7, align 8
  %37 = getelementptr inbounds %struct.strpush, %struct.strpush* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load %struct.alias*, %struct.alias** %6, align 8
  %39 = load %struct.strpush*, %struct.strpush** %7, align 8
  %40 = getelementptr inbounds %struct.strpush, %struct.strpush* %39, i32 0, i32 2
  store %struct.alias* %38, %struct.alias** %40, align 8
  %41 = load %struct.alias*, %struct.alias** %6, align 8
  %42 = icmp ne %struct.alias* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %28
  %44 = load i32, i32* @ALIASINUSE, align 4
  %45 = load %struct.alias*, %struct.alias** %6, align 8
  %46 = getelementptr inbounds %struct.alias, %struct.alias* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %43, %28
  %50 = load i8*, i8** %4, align 8
  store i8* %50, i8** @parsenextc, align 8
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* @parsenleft, align 4
  %52 = load i32, i32* @INTON, align 4
  ret void
}

declare dso_local %struct.strpush* @ckmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
