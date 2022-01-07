; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_des_ct.c_br_des_ct_skey_expand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_des_ct.c_br_des_ct_skey_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_des_ct_skey_expand(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = shl i32 %12, 4
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %18, %3
  %15 = load i32, i32* %5, align 4
  %16 = add i32 %15, -1
  store i32 %16, i32* %5, align 4
  %17 = icmp ugt i32 %15, 0
  br i1 %17, label %18, label %77

18:                                               ; preds = %14
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %6, align 8
  %21 = load i32, i32* %19, align 4
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, 286331153
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = ashr i32 %24, 1
  %26 = and i32 %25, 286331153
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %7, align 4
  %28 = ashr i32 %27, 2
  %29 = and i32 %28, 286331153
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %7, align 4
  %31 = ashr i32 %30, 3
  %32 = and i32 %31, 286331153
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %8, align 4
  %34 = shl i32 %33, 4
  %35 = load i32, i32* %8, align 4
  %36 = sub nsw i32 %34, %35
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %4, align 8
  store i32 %36, i32* %37, align 4
  %39 = load i32, i32* %9, align 4
  %40 = shl i32 %39, 4
  %41 = load i32, i32* %9, align 4
  %42 = sub nsw i32 %40, %41
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %4, align 8
  store i32 %42, i32* %43, align 4
  %45 = load i32, i32* %10, align 4
  %46 = shl i32 %45, 4
  %47 = load i32, i32* %10, align 4
  %48 = sub nsw i32 %46, %47
  %49 = load i32*, i32** %4, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %4, align 8
  store i32 %48, i32* %49, align 4
  %51 = load i32, i32* %11, align 4
  %52 = shl i32 %51, 4
  %53 = load i32, i32* %11, align 4
  %54 = sub nsw i32 %52, %53
  %55 = load i32*, i32** %4, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %4, align 8
  store i32 %54, i32* %55, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %6, align 8
  %59 = load i32, i32* %57, align 4
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = and i32 %60, 286331153
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %7, align 4
  %63 = ashr i32 %62, 1
  %64 = and i32 %63, 286331153
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %8, align 4
  %66 = shl i32 %65, 4
  %67 = load i32, i32* %8, align 4
  %68 = sub nsw i32 %66, %67
  %69 = load i32*, i32** %4, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %4, align 8
  store i32 %68, i32* %69, align 4
  %71 = load i32, i32* %9, align 4
  %72 = shl i32 %71, 4
  %73 = load i32, i32* %9, align 4
  %74 = sub nsw i32 %72, %73
  %75 = load i32*, i32** %4, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %4, align 8
  store i32 %74, i32* %75, align 4
  br label %14

77:                                               ; preds = %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
