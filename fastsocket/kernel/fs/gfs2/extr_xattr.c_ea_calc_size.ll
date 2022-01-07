; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_xattr.c_ea_calc_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_xattr.c_ea_calc_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_sbd*, i32, i64, i32*)* @ea_calc_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ea_calc_size(%struct.gfs2_sbd* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gfs2_sbd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %12 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = zext i32 %14 to i64
  %16 = add i64 4, %15
  %17 = load i64, i64* %8, align 8
  %18 = add i64 %16, %17
  %19 = trunc i64 %18 to i32
  %20 = call i32 @ALIGN(i32 %19, i32 8)
  %21 = load i32*, i32** %9, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ule i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %40

27:                                               ; preds = %4
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = add i64 4, %29
  %31 = load i64, i64* %8, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @DIV_ROUND_UP(i64 %31, i32 %32)
  %34 = sext i32 %33 to i64
  %35 = mul i64 4, %34
  %36 = add i64 %30, %35
  %37 = trunc i64 %36 to i32
  %38 = call i32 @ALIGN(i32 %37, i32 8)
  %39 = load i32*, i32** %9, align 8
  store i32 %38, i32* %39, align 4
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %27, %26
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
