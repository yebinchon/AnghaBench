; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_keys.c_get_hash_impl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_keys.c_get_hash_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i64 }

@br_md5sha1_vtable = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@hash_functions = common dso_local global %struct.TYPE_6__* null, align 8
@BR_HASHDESC_ID_OFF = common dso_local global i32 0, align 4
@BR_HASHDESC_ID_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @get_hash_impl(i32 %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.TYPE_5__* @br_md5sha1_vtable, %struct.TYPE_5__** %2, align 8
  br label %41

10:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %11

11:                                               ; preds = %37, %10
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hash_functions, align 8
  %13 = load i64, i64* %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %11
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hash_functions, align 8
  %20 = load i64, i64* %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %5, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @BR_HASHDESC_ID_OFF, align 4
  %28 = ashr i32 %26, %27
  %29 = load i32, i32* @BR_HASHDESC_ID_MASK, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %18
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %2, align 8
  br label %41

36:                                               ; preds = %18
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %4, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %4, align 8
  br label %11

40:                                               ; preds = %11
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %41

41:                                               ; preds = %40, %34, %9
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret %struct.TYPE_5__* %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
