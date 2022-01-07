; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_objc-lang.c_resolve_msgsend_super_stret.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_objc-lang.c_resolve_msgsend_super_stret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objc_super = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64*)* @resolve_msgsend_super_stret to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resolve_msgsend_super_stret(i64 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.objc_super, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = call i64 @OBJC_FETCH_POINTER_ARGUMENT(i32 1)
  store i64 %10, i64* %7, align 8
  %11 = call i64 @OBJC_FETCH_POINTER_ARGUMENT(i32 2)
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @read_objc_super(i64 %12, %struct.objc_super* %6)
  %14 = getelementptr inbounds %struct.objc_super, %struct.objc_super* %6, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.objc_super, %struct.objc_super* %6, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i64 @find_implementation_from_class(i64 %20, i64 %21)
  store i64 %22, i64* %9, align 8
  %23 = load i64*, i64** %5, align 8
  %24 = icmp ne i64* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i64, i64* %9, align 8
  %27 = load i64*, i64** %5, align 8
  store i64 %26, i64* %27, align 8
  br label %28

28:                                               ; preds = %25, %18
  %29 = load i64, i64* %9, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %33

32:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %31, %17
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @OBJC_FETCH_POINTER_ARGUMENT(i32) #1

declare dso_local i32 @read_objc_super(i64, %struct.objc_super*) #1

declare dso_local i64 @find_implementation_from_class(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
