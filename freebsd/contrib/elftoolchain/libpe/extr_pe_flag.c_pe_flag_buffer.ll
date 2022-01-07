; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libpe/extr_pe_flag.c_pe_flag_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libpe/extr_pe_flag.c_pe_flag_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@PE_C_SET = common dso_local global i64 0, align 8
@PE_C_CLR = common dso_local global i64 0, align 8
@PE_F_DIRTY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pe_flag_buffer(i32* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %25, label %11

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @PE_C_SET, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @PE_C_CLR, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %15, %11
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @PE_F_DIRTY, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19, %15, %3
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %47

27:                                               ; preds = %19
  %28 = load i32*, i32** %5, align 8
  %29 = bitcast i32* %28 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %29, %struct.TYPE_2__** %8, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @PE_C_SET, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %46

39:                                               ; preds = %27
  %40 = load i32, i32* %7, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %39, %33
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %25
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
