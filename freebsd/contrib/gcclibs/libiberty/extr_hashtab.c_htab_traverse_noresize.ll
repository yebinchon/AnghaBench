; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_hashtab.c_htab_traverse_noresize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_hashtab.c_htab_traverse_noresize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64* }

@HTAB_EMPTY_ENTRY = common dso_local global i64 0, align 8
@HTAB_DELETED_ENTRY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @htab_traverse_noresize(%struct.TYPE_4__* %0, i32 (i64*, i64)* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32 (i64*, i64)*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 (i64*, i64)* %1, i32 (i64*, i64)** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  store i64* %12, i64** %7, align 8
  %13 = load i64*, i64** %7, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = call i32 @htab_size(%struct.TYPE_4__* %14)
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %13, i64 %16
  store i64* %17, i64** %8, align 8
  br label %18

18:                                               ; preds = %37, %3
  %19 = load i64*, i64** %7, align 8
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @HTAB_EMPTY_ENTRY, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @HTAB_DELETED_ENTRY, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load i32 (i64*, i64)*, i32 (i64*, i64)** %5, align 8
  %30 = load i64*, i64** %7, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i32 %29(i64* %30, i64 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %42

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35, %24, %18
  br label %37

37:                                               ; preds = %36
  %38 = load i64*, i64** %7, align 8
  %39 = getelementptr inbounds i64, i64* %38, i32 1
  store i64* %39, i64** %7, align 8
  %40 = load i64*, i64** %8, align 8
  %41 = icmp ult i64* %39, %40
  br i1 %41, label %18, label %42

42:                                               ; preds = %37, %34
  ret void
}

declare dso_local i32 @htab_size(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
