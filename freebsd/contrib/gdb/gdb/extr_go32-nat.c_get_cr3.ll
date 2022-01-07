; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_go32-nat.c_get_cr3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_go32-nat.c_get_cr3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtr_reg = type { i32 }

@pdbr = common dso_local global i32 0, align 4
@_dos_ds = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @get_cr3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_cr3() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dtr_reg, align 4
  %7 = load i32, i32* @pdbr, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %0
  %10 = load i32, i32* @pdbr, align 4
  %11 = icmp sle i32 %10, 1048575
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, i32* @pdbr, align 4
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %1, align 8
  br label %59

15:                                               ; preds = %9, %0
  call void asm sideeffect "sgdt   $0", "=*m,~{dirflag},~{fpsr},~{flags}"(%struct.dtr_reg* %6) #2, !srcloc !2
  call void asm sideeffect "str    $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %3) #2, !srcloc !3
  %16 = getelementptr inbounds %struct.dtr_reg, %struct.dtr_reg* %6, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, 65528
  %20 = add i32 %17, %19
  %21 = add i32 %20, 2
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* %2, align 4
  %23 = icmp ugt i32 %22, 1048575
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  store i64 0, i64* %1, align 8
  br label %59

25:                                               ; preds = %15
  %26 = load i32, i32* @_dos_ds, align 4
  %27 = call i32 @_farsetsel(i32 %26)
  %28 = load i32, i32* %2, align 4
  %29 = zext i32 %28 to i64
  %30 = call i32 @_farnspeekl(i64 %29)
  %31 = and i32 %30, 16777215
  %32 = zext i32 %31 to i64
  store i64 %32, i64* %4, align 8
  %33 = load i32, i32* %2, align 4
  %34 = add i32 %33, 2
  %35 = zext i32 %34 to i64
  %36 = call i32 @_farnspeekl(i64 %35)
  %37 = and i32 %36, -16777216
  %38 = zext i32 %37 to i64
  %39 = load i64, i64* %4, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %4, align 8
  %41 = load i64, i64* %4, align 8
  %42 = icmp ugt i64 %41, 1048575
  br i1 %42, label %43, label %44

43:                                               ; preds = %25
  store i64 0, i64* %1, align 8
  br label %59

44:                                               ; preds = %25
  %45 = load i64, i64* %4, align 8
  %46 = add i64 %45, 28
  %47 = call i32 @_farnspeekl(i64 %46)
  %48 = and i32 %47, -4096
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %5, align 8
  %50 = load i64, i64* %5, align 8
  %51 = icmp ugt i64 %50, 1048575
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load i64, i64* %5, align 8
  %54 = icmp ugt i64 %53, 1048575
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i64 0, i64* %5, align 8
  br label %56

56:                                               ; preds = %55, %52
  br label %57

57:                                               ; preds = %56, %44
  %58 = load i64, i64* %5, align 8
  store i64 %58, i64* %1, align 8
  br label %59

59:                                               ; preds = %57, %43, %24, %12
  %60 = load i64, i64* %1, align 8
  ret i64 %60
}

declare dso_local i32 @_farsetsel(i32) #1

declare dso_local i32 @_farnspeekl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 500}
!3 = !{i32 555}
