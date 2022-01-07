; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-iv.c_iv_neg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-iv.c_iv_neg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtx_iv = type { i64, i32, i8*, i8*, i8*, i8* }

@UNKNOWN = common dso_local global i64 0, align 8
@NEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtx_iv*)* @iv_neg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iv_neg(%struct.rtx_iv* %0) #0 {
  %2 = alloca %struct.rtx_iv*, align 8
  store %struct.rtx_iv* %0, %struct.rtx_iv** %2, align 8
  %3 = load %struct.rtx_iv*, %struct.rtx_iv** %2, align 8
  %4 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @UNKNOWN, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %35

8:                                                ; preds = %1
  %9 = load i32, i32* @NEG, align 4
  %10 = load %struct.rtx_iv*, %struct.rtx_iv** %2, align 8
  %11 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.rtx_iv*, %struct.rtx_iv** %2, align 8
  %14 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %13, i32 0, i32 5
  %15 = load i8*, i8** %14, align 8
  %16 = load %struct.rtx_iv*, %struct.rtx_iv** %2, align 8
  %17 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i8* @simplify_gen_unary(i32 %9, i32 %12, i8* %15, i32 %18)
  %20 = load %struct.rtx_iv*, %struct.rtx_iv** %2, align 8
  %21 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %20, i32 0, i32 5
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* @NEG, align 4
  %23 = load %struct.rtx_iv*, %struct.rtx_iv** %2, align 8
  %24 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.rtx_iv*, %struct.rtx_iv** %2, align 8
  %27 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %26, i32 0, i32 4
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.rtx_iv*, %struct.rtx_iv** %2, align 8
  %30 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i8* @simplify_gen_unary(i32 %22, i32 %25, i8* %28, i32 %31)
  %33 = load %struct.rtx_iv*, %struct.rtx_iv** %2, align 8
  %34 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %33, i32 0, i32 4
  store i8* %32, i8** %34, align 8
  br label %62

35:                                               ; preds = %1
  %36 = load i32, i32* @NEG, align 4
  %37 = load %struct.rtx_iv*, %struct.rtx_iv** %2, align 8
  %38 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.rtx_iv*, %struct.rtx_iv** %2, align 8
  %41 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %40, i32 0, i32 3
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.rtx_iv*, %struct.rtx_iv** %2, align 8
  %44 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i8* @simplify_gen_unary(i32 %36, i32 %39, i8* %42, i32 %45)
  %47 = load %struct.rtx_iv*, %struct.rtx_iv** %2, align 8
  %48 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %47, i32 0, i32 3
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* @NEG, align 4
  %50 = load %struct.rtx_iv*, %struct.rtx_iv** %2, align 8
  %51 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.rtx_iv*, %struct.rtx_iv** %2, align 8
  %54 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.rtx_iv*, %struct.rtx_iv** %2, align 8
  %57 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i8* @simplify_gen_unary(i32 %49, i32 %52, i8* %55, i32 %58)
  %60 = load %struct.rtx_iv*, %struct.rtx_iv** %2, align 8
  %61 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  br label %62

62:                                               ; preds = %35, %8
  ret i32 1
}

declare dso_local i8* @simplify_gen_unary(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
