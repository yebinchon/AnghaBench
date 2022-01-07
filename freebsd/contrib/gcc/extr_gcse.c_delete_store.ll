; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_delete_store.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_delete_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ls_expr = type { i64, i32 }

@NULL_RTX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ls_expr*, i32)* @delete_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_store(%struct.ls_expr* %0, i32 %1) #0 {
  %3 = alloca %struct.ls_expr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ls_expr* %0, %struct.ls_expr** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ls_expr*, %struct.ls_expr** %3, align 8
  %9 = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @NULL_RTX, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.ls_expr*, %struct.ls_expr** %3, align 8
  %15 = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @GET_MODE(i32 %16)
  %18 = call i64 @gen_reg_rtx(i32 %17)
  %19 = load %struct.ls_expr*, %struct.ls_expr** %3, align 8
  %20 = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  br label %21

21:                                               ; preds = %13, %2
  %22 = load %struct.ls_expr*, %struct.ls_expr** %3, align 8
  %23 = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %5, align 8
  %25 = load %struct.ls_expr*, %struct.ls_expr** %3, align 8
  %26 = call i64 @AVAIL_STORE_LIST(%struct.ls_expr* %25)
  store i64 %26, i64* %6, align 8
  br label %27

27:                                               ; preds = %44, %21
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %27
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @XEXP(i64 %31, i32 0)
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @BLOCK_FOR_INSN(i64 %33)
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.ls_expr*, %struct.ls_expr** %3, align 8
  %42 = call i32 @replace_store_insn(i64 %38, i64 %39, i32 %40, %struct.ls_expr* %41)
  br label %47

43:                                               ; preds = %30
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %6, align 8
  %46 = call i64 @XEXP(i64 %45, i32 1)
  store i64 %46, i64* %6, align 8
  br label %27

47:                                               ; preds = %37, %27
  ret void
}

declare dso_local i64 @gen_reg_rtx(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i64 @AVAIL_STORE_LIST(%struct.ls_expr*) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @BLOCK_FOR_INSN(i64) #1

declare dso_local i32 @replace_store_insn(i64, i64, i32, %struct.ls_expr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
