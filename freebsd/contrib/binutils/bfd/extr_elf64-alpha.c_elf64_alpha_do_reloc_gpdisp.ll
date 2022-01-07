; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-alpha.c_elf64_alpha_do_reloc_gpdisp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-alpha.c_elf64_alpha_do_reloc_gpdisp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bfd_reloc_ok = common dso_local global i32 0, align 4
@bfd_reloc_dangerous = common dso_local global i32 0, align 4
@bfd_reloc_overflow = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @elf64_alpha_do_reloc_gpdisp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf64_alpha_do_reloc_gpdisp(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i32, i32* @bfd_reloc_ok, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i64 @bfd_get_32(i32* %14, i32* %15)
  store i64 %16, i64* %11, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i64 @bfd_get_32(i32* %17, i32* %18)
  store i64 %19, i64* %12, align 8
  %20 = load i64, i64* %11, align 8
  %21 = lshr i64 %20, 26
  %22 = and i64 %21, 63
  %23 = icmp ne i64 %22, 9
  br i1 %23, label %29, label %24

24:                                               ; preds = %4
  %25 = load i64, i64* %12, align 8
  %26 = lshr i64 %25, 26
  %27 = and i64 %26, 63
  %28 = icmp ne i64 %27, 8
  br i1 %28, label %29, label %31

29:                                               ; preds = %24, %4
  %30 = load i32, i32* @bfd_reloc_dangerous, align 4
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %29, %24
  %32 = load i64, i64* %11, align 8
  %33 = and i64 %32, 65535
  %34 = shl i64 %33, 16
  %35 = load i64, i64* %12, align 8
  %36 = and i64 %35, 65535
  %37 = or i64 %34, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = xor i32 %39, -2147450880
  %41 = sub i32 %40, -2147450880
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp slt i64 %46, -2147483648
  br i1 %47, label %52, label %48

48:                                               ; preds = %31
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = icmp sge i64 %50, 2147450880
  br i1 %51, label %52, label %54

52:                                               ; preds = %48, %31
  %53 = load i32, i32* @bfd_reloc_overflow, align 4
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %52, %48
  %55 = load i64, i64* %11, align 8
  %56 = and i64 %55, 4294901760
  %57 = load i32, i32* %6, align 4
  %58 = ashr i32 %57, 16
  %59 = load i32, i32* %6, align 4
  %60 = ashr i32 %59, 15
  %61 = and i32 %60, 1
  %62 = add nsw i32 %58, %61
  %63 = and i32 %62, 65535
  %64 = sext i32 %63 to i64
  %65 = or i64 %56, %64
  store i64 %65, i64* %11, align 8
  %66 = load i64, i64* %12, align 8
  %67 = and i64 %66, 4294901760
  %68 = load i32, i32* %6, align 4
  %69 = and i32 %68, 65535
  %70 = sext i32 %69 to i64
  %71 = or i64 %67, %70
  store i64 %71, i64* %12, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = load i64, i64* %11, align 8
  %74 = trunc i64 %73 to i32
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @bfd_put_32(i32* %72, i32 %74, i32* %75)
  %77 = load i32*, i32** %5, align 8
  %78 = load i64, i64* %12, align 8
  %79 = trunc i64 %78 to i32
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @bfd_put_32(i32* %77, i32 %79, i32* %80)
  %82 = load i32, i32* %9, align 4
  ret i32 %82
}

declare dso_local i64 @bfd_get_32(i32*, i32*) #1

declare dso_local i32 @bfd_put_32(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
