; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_objc-lang.c_find_implementation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_objc-lang.c_find_implementation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objc_object = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @find_implementation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_implementation(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.objc_object, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i64 0, i64* %3, align 8
  br label %22

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @read_objc_object(i64 %11, %struct.objc_object* %6)
  %13 = getelementptr inbounds %struct.objc_object, %struct.objc_object* %6, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i64 0, i64* %3, align 8
  br label %22

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.objc_object, %struct.objc_object* %6, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @find_implementation_from_class(i64 %19, i64 %20)
  store i64 %21, i64* %3, align 8
  br label %22

22:                                               ; preds = %17, %16, %9
  %23 = load i64, i64* %3, align 8
  ret i64 %23
}

declare dso_local i32 @read_objc_object(i64, %struct.objc_object*) #1

declare dso_local i64 @find_implementation_from_class(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
