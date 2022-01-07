; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_listing.c_listing_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_listing.c_listing_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@listing = common dso_local global i64 0, align 8
@listing_tail = common dso_local global %struct.TYPE_2__* null, align 8
@EDICT_LIST = common dso_local global i8* null, align 8
@EDICT_NONE = common dso_local global i8* null, align 8
@EDICT_NOLIST = common dso_local global i8* null, align 8
@EDICT_NOLIST_NEXT = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @listing_list(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* @listing, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %50

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  switch i32 %6, label %47 [
    i32 0, label %7
    i32 1, label %22
    i32 2, label %43
  ]

7:                                                ; preds = %5
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @listing_tail, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = load i8*, i8** @EDICT_LIST, align 8
  %12 = icmp eq i8* %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = load i8*, i8** @EDICT_NONE, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @listing_tail, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  br label %21

17:                                               ; preds = %7
  %18 = load i8*, i8** @EDICT_NOLIST, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @listing_tail, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  br label %21

21:                                               ; preds = %17, %13
  br label %49

22:                                               ; preds = %5
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @listing_tail, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i8*, i8** @EDICT_NOLIST, align 8
  %27 = icmp eq i8* %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @listing_tail, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load i8*, i8** @EDICT_NOLIST_NEXT, align 8
  %33 = icmp eq i8* %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28, %22
  %35 = load i8*, i8** @EDICT_NONE, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @listing_tail, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  br label %42

38:                                               ; preds = %28
  %39 = load i8*, i8** @EDICT_LIST, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @listing_tail, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  br label %42

42:                                               ; preds = %38, %34
  br label %49

43:                                               ; preds = %5
  %44 = load i8*, i8** @EDICT_NOLIST_NEXT, align 8
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @listing_tail, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  br label %49

47:                                               ; preds = %5
  %48 = call i32 (...) @abort() #2
  unreachable

49:                                               ; preds = %43, %42, %21
  br label %50

50:                                               ; preds = %49, %1
  ret void
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
