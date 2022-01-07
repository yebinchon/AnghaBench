; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_hashtab.c_find_empty_slot_for_expand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_hashtab.c_find_empty_slot_for_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64* }

@HTAB_EMPTY_ENTRY = common dso_local global i64 0, align 8
@HTAB_DELETED_ENTRY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (%struct.TYPE_6__*, i64)* @find_empty_slot_for_expand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @find_empty_slot_for_expand(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = call i64 @htab_mod(i64 %10, %struct.TYPE_6__* %11)
  store i64 %12, i64* %6, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = call i64 @htab_size(%struct.TYPE_6__* %13)
  store i64 %14, i64* %7, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  store i64* %19, i64** %8, align 8
  %20 = load i64*, i64** %8, align 8
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @HTAB_EMPTY_ENTRY, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i64*, i64** %8, align 8
  store i64* %25, i64** %3, align 8
  br label %70

26:                                               ; preds = %2
  %27 = load i64*, i64** %8, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @HTAB_DELETED_ENTRY, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = call i32 (...) @abort() #3
  unreachable

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = call i64 @htab_mod_m2(i64 %35, %struct.TYPE_6__* %36)
  store i64 %37, i64* %9, align 8
  br label %38

38:                                               ; preds = %69, %34
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %6, align 8
  %41 = add i64 %40, %39
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp uge i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %6, align 8
  %48 = sub i64 %47, %46
  store i64 %48, i64* %6, align 8
  br label %49

49:                                               ; preds = %45, %38
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load i64, i64* %6, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  store i64* %54, i64** %8, align 8
  %55 = load i64*, i64** %8, align 8
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @HTAB_EMPTY_ENTRY, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i64*, i64** %8, align 8
  store i64* %60, i64** %3, align 8
  br label %70

61:                                               ; preds = %49
  %62 = load i64*, i64** %8, align 8
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @HTAB_DELETED_ENTRY, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = call i32 (...) @abort() #3
  unreachable

68:                                               ; preds = %61
  br label %69

69:                                               ; preds = %68
  br label %38

70:                                               ; preds = %59, %24
  %71 = load i64*, i64** %3, align 8
  ret i64* %71
}

declare dso_local i64 @htab_mod(i64, %struct.TYPE_6__*) #1

declare dso_local i64 @htab_size(%struct.TYPE_6__*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @htab_mod_m2(i64, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
