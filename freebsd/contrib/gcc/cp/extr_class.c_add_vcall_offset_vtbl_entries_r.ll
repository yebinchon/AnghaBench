; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_add_vcall_offset_vtbl_entries_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_add_vcall_offset_vtbl_entries_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.TYPE_4__*)* @add_vcall_offset_vtbl_entries_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_vcall_offset_vtbl_entries_r(i64 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @BINFO_VIRTUAL_P(i64 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %3, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %47

18:                                               ; preds = %11, %2
  %19 = load i64, i64* %3, align 8
  %20 = call i64 @get_primary_binfo(i64 %19)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  call void @add_vcall_offset_vtbl_entries_r(i64 %24, %struct.TYPE_4__* %25)
  br label %26

26:                                               ; preds = %23, %18
  %27 = load i64, i64* %3, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = call i32 @add_vcall_offset_vtbl_entries_1(i64 %27, %struct.TYPE_4__* %28)
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %44, %26
  %31 = load i64, i64* %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i64, i64* %7, align 8
  %34 = call i64 @BINFO_BASE_ITERATE(i64 %31, i32 %32, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %30
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i64, i64* %7, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  call void @add_vcall_offset_vtbl_entries_r(i64 %41, %struct.TYPE_4__* %42)
  br label %43

43:                                               ; preds = %40, %36
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %30

47:                                               ; preds = %17, %30
  ret void
}

declare dso_local i64 @BINFO_VIRTUAL_P(i64) #1

declare dso_local i64 @get_primary_binfo(i64) #1

declare dso_local i32 @add_vcall_offset_vtbl_entries_1(i64, %struct.TYPE_4__*) #1

declare dso_local i64 @BINFO_BASE_ITERATE(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
