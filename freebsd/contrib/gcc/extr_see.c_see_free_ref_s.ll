; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_see_free_ref_s.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_see_free_ref_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.see_ref_s = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @see_free_ref_s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @see_free_ref_s(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.see_ref_s*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.see_ref_s*
  store %struct.see_ref_s* %5, %struct.see_ref_s** %3, align 8
  %6 = load %struct.see_ref_s*, %struct.see_ref_s** %3, align 8
  %7 = getelementptr inbounds %struct.see_ref_s, %struct.see_ref_s* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.see_ref_s*, %struct.see_ref_s** %3, align 8
  %12 = getelementptr inbounds %struct.see_ref_s, %struct.see_ref_s* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @htab_delete(i64 %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.see_ref_s*, %struct.see_ref_s** %3, align 8
  %17 = getelementptr inbounds %struct.see_ref_s, %struct.see_ref_s* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.see_ref_s*, %struct.see_ref_s** %3, align 8
  %22 = getelementptr inbounds %struct.see_ref_s, %struct.see_ref_s* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @htab_delete(i64 %23)
  br label %25

25:                                               ; preds = %20, %15
  %26 = load %struct.see_ref_s*, %struct.see_ref_s** %3, align 8
  %27 = getelementptr inbounds %struct.see_ref_s, %struct.see_ref_s* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.see_ref_s*, %struct.see_ref_s** %3, align 8
  %32 = getelementptr inbounds %struct.see_ref_s, %struct.see_ref_s* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @htab_delete(i64 %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.see_ref_s*, %struct.see_ref_s** %3, align 8
  %37 = call i32 @free(%struct.see_ref_s* %36)
  ret void
}

declare dso_local i32 @htab_delete(i64) #1

declare dso_local i32 @free(%struct.see_ref_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
