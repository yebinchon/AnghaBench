; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rddbg.c_save_stab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rddbg.c_save_stab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32*, i32 }

@saved_stabs = common dso_local global %struct.TYPE_2__* null, align 8
@saved_stabs_index = common dso_local global i64 0, align 8
@SAVE_STABS_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i8*)* @save_stab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @save_stab(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @saved_stabs, align 8
  %10 = load i64, i64* @saved_stabs_index, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @saved_stabs, align 8
  %17 = load i64, i64* @saved_stabs_index, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @free(i32* %20)
  br label %22

22:                                               ; preds = %15, %4
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @saved_stabs, align 8
  %25 = load i64, i64* @saved_stabs_index, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @saved_stabs, align 8
  %30 = load i64, i64* @saved_stabs_index, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i32 %28, i32* %32, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @saved_stabs, align 8
  %35 = load i64, i64* @saved_stabs_index, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  store i32 %33, i32* %37, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = call i32* @xstrdup(i8* %38)
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @saved_stabs, align 8
  %41 = load i64, i64* @saved_stabs_index, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  store i32* %39, i32** %43, align 8
  %44 = load i64, i64* @saved_stabs_index, align 8
  %45 = add i64 %44, 1
  %46 = load i64, i64* @SAVE_STABS_COUNT, align 8
  %47 = urem i64 %45, %46
  store i64 %47, i64* @saved_stabs_index, align 8
  ret void
}

declare dso_local i32 @free(i32*) #1

declare dso_local i32* @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
