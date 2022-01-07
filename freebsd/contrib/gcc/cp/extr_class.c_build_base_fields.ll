; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_build_base_fields.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_build_base_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i64*)* @build_base_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_base_fields(%struct.TYPE_4__* %0, i32 %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @TYPE_BINFO(i64 %14)
  %16 = call i32 @BINFO_N_BASE_BINFOS(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i64, i64* %7, align 8
  %18 = call i64 @CLASSTYPE_HAS_PRIMARY_BASE_P(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i64 @CLASSTYPE_PRIMARY_BINFO(i64 %22)
  %24 = load i32, i32* %5, align 4
  %25 = load i64*, i64** %6, align 8
  %26 = call i64* @build_base_field(%struct.TYPE_4__* %21, i64 %23, i32 %24, i64* %25)
  store i64* %26, i64** %6, align 8
  br label %27

27:                                               ; preds = %20, %3
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %53, %27
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %56

32:                                               ; preds = %28
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @TYPE_BINFO(i64 %33)
  %35 = load i32, i32* %9, align 4
  %36 = call i64 @BINFO_BASE_BINFO(i32 %34, i32 %35)
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i64 @CLASSTYPE_PRIMARY_BINFO(i64 %38)
  %40 = icmp eq i64 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %53

42:                                               ; preds = %32
  %43 = load i64, i64* %10, align 8
  %44 = call i64 @BINFO_VIRTUAL_P(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %53

47:                                               ; preds = %42
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i64*, i64** %6, align 8
  %52 = call i64* @build_base_field(%struct.TYPE_4__* %48, i64 %49, i32 %50, i64* %51)
  store i64* %52, i64** %6, align 8
  br label %53

53:                                               ; preds = %47, %46, %41
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %28

56:                                               ; preds = %28
  ret void
}

declare dso_local i32 @BINFO_N_BASE_BINFOS(i32) #1

declare dso_local i32 @TYPE_BINFO(i64) #1

declare dso_local i64 @CLASSTYPE_HAS_PRIMARY_BASE_P(i64) #1

declare dso_local i64* @build_base_field(%struct.TYPE_4__*, i64, i32, i64*) #1

declare dso_local i64 @CLASSTYPE_PRIMARY_BINFO(i64) #1

declare dso_local i64 @BINFO_BASE_BINFO(i32, i32) #1

declare dso_local i64 @BINFO_VIRTUAL_P(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
