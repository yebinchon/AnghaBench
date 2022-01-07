; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-ia64.c_elfNN_ia64_relax_brl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-ia64.c_elfNN_ia64_relax_brl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @elfNN_ia64_relax_brl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elfNN_ia64_relax_brl(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = ptrtoint i32* %16 to i64
  %18 = and i64 %17, 3
  %19 = load i32*, i32** %6, align 8
  %20 = sub i64 0, %18
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @bfd_getl64(i32* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 8
  %26 = call i32 @bfd_getl64(i32* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = ashr i32 %27, 5
  %29 = sext i32 %28 to i64
  %30 = and i64 %29, 2199023255551
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %32 = load i32, i32* %8, align 4
  %33 = ashr i32 %32, 23
  %34 = sext i32 %33 to i64
  %35 = and i64 %34, 1099511627775
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, 1
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %2
  store i32 19, i32* %5, align 4
  br label %42

41:                                               ; preds = %2
  store i32 18, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %40
  %43 = load i32, i32* %10, align 4
  %44 = shl i32 %43, 46
  %45 = load i32, i32* %9, align 4
  %46 = shl i32 %45, 5
  %47 = or i32 %44, %46
  %48 = load i32, i32* %5, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %11, align 4
  %51 = shl i32 %50, 23
  %52 = load i32, i32* %10, align 4
  %53 = ashr i32 %52, 18
  %54 = or i32 %51, %53
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @bfd_putl64(i32 %55, i32* %56)
  %58 = load i32, i32* %8, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 8
  %61 = call i32 @bfd_putl64(i32 %58, i32* %60)
  ret void
}

declare dso_local i32 @bfd_getl64(i32*) #1

declare dso_local i32 @bfd_putl64(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
