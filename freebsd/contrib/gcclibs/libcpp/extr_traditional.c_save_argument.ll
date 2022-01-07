; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_traditional.c_save_argument.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_traditional.c_save_argument.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fun_macro = type { i64, i64*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fun_macro*, i64)* @save_argument to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @save_argument(%struct.fun_macro* %0, i64 %1) #0 {
  %3 = alloca %struct.fun_macro*, align 8
  %4 = alloca i64, align 8
  store %struct.fun_macro* %0, %struct.fun_macro** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.fun_macro*, %struct.fun_macro** %3, align 8
  %6 = getelementptr inbounds %struct.fun_macro, %struct.fun_macro* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, 1
  store i64 %8, i64* %6, align 8
  %9 = load %struct.fun_macro*, %struct.fun_macro** %3, align 8
  %10 = getelementptr inbounds %struct.fun_macro, %struct.fun_macro* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.fun_macro*, %struct.fun_macro** %3, align 8
  %13 = getelementptr inbounds %struct.fun_macro, %struct.fun_macro* %12, i32 0, i32 2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ule i64 %11, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %2
  %22 = load i64, i64* %4, align 8
  %23 = load %struct.fun_macro*, %struct.fun_macro** %3, align 8
  %24 = getelementptr inbounds %struct.fun_macro, %struct.fun_macro* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = load %struct.fun_macro*, %struct.fun_macro** %3, align 8
  %27 = getelementptr inbounds %struct.fun_macro, %struct.fun_macro* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i64, i64* %25, i64 %28
  store i64 %22, i64* %29, align 8
  br label %30

30:                                               ; preds = %21, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
