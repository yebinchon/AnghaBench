; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_decl_default_tls_model.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_decl_default_tls_model.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32)* }

@targetm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@flag_shlib = common dso_local global i32 0, align 4
@TLS_MODEL_LOCAL_EXEC = common dso_local global i32 0, align 4
@TLS_MODEL_INITIAL_EXEC = common dso_local global i32 0, align 4
@optimize = common dso_local global i64 0, align 8
@TLS_MODEL_LOCAL_DYNAMIC = common dso_local global i32 0, align 4
@TLS_MODEL_GLOBAL_DYNAMIC = common dso_local global i32 0, align 4
@flag_tls_default = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decl_default_tls_model(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @targetm, i32 0, i32 0), align 8
  %6 = load i32, i32* %2, align 4
  %7 = call i32 %5(i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @flag_shlib, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load i32, i32* @TLS_MODEL_LOCAL_EXEC, align 4
  store i32 %14, i32* %3, align 4
  br label %17

15:                                               ; preds = %10
  %16 = load i32, i32* @TLS_MODEL_INITIAL_EXEC, align 4
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %15, %13
  br label %29

18:                                               ; preds = %1
  %19 = load i64, i64* @optimize, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @TLS_MODEL_LOCAL_DYNAMIC, align 4
  store i32 %25, i32* %3, align 4
  br label %28

26:                                               ; preds = %21, %18
  %27 = load i32, i32* @TLS_MODEL_GLOBAL_DYNAMIC, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %26, %24
  br label %29

29:                                               ; preds = %28, %17
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @flag_tls_default, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @flag_tls_default, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %33, %29
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
