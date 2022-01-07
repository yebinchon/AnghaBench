; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_build_shift.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_build_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips_integer_op = type { i32, i32 }

@ASHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mips_integer_op*, i32)* @mips_build_shift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_build_shift(%struct.mips_integer_op* %0, i32 %1) #0 {
  %3 = alloca %struct.mips_integer_op*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mips_integer_op* %0, %struct.mips_integer_op** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %11, %2
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = load i32, i32* %4, align 4
  %13 = sdiv i32 %12, 2
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add i32 %14, 1
  store i32 %15, i32* %6, align 4
  br label %7

16:                                               ; preds = %7
  %17 = load %struct.mips_integer_op*, %struct.mips_integer_op** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @mips_build_integer(%struct.mips_integer_op* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @ASHIFT, align 4
  %21 = load %struct.mips_integer_op*, %struct.mips_integer_op** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.mips_integer_op, %struct.mips_integer_op* %21, i64 %23
  %25 = getelementptr inbounds %struct.mips_integer_op, %struct.mips_integer_op* %24, i32 0, i32 1
  store i32 %20, i32* %25, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.mips_integer_op*, %struct.mips_integer_op** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.mips_integer_op, %struct.mips_integer_op* %27, i64 %29
  %31 = getelementptr inbounds %struct.mips_integer_op, %struct.mips_integer_op* %30, i32 0, i32 0
  store i32 %26, i32* %31, align 4
  %32 = load i32, i32* %5, align 4
  %33 = add i32 %32, 1
  ret i32 %33
}

declare dso_local i32 @mips_build_integer(%struct.mips_integer_op*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
