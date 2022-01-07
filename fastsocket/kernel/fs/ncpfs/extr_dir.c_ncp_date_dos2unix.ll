; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_dir.c_ncp_date_dos2unix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_dir.c_ncp_date_dos2unix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@day_n = common dso_local global i16* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncp_date_dos2unix(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call zeroext i16 @le16_to_cpu(i32 %10)
  store i16 %11, i16* %5, align 2
  %12 = load i32, i32* %4, align 4
  %13 = call zeroext i16 @le16_to_cpu(i32 %12)
  store i16 %13, i16* %6, align 2
  %14 = load i16, i16* %6, align 2
  %15 = zext i16 %14 to i32
  %16 = ashr i32 %15, 5
  %17 = sub nsw i32 %16, 1
  %18 = and i32 %17, 15
  store i32 %18, i32* %7, align 4
  %19 = load i16, i16* %6, align 2
  %20 = zext i16 %19 to i32
  %21 = ashr i32 %20, 9
  store i32 %21, i32* %8, align 4
  %22 = load i16, i16* %5, align 2
  %23 = zext i16 %22 to i32
  %24 = and i32 %23, 31
  %25 = mul nsw i32 %24, 2
  %26 = load i16, i16* %5, align 2
  %27 = zext i16 %26 to i32
  %28 = ashr i32 %27, 5
  %29 = and i32 %28, 63
  %30 = mul nsw i32 60, %29
  %31 = add nsw i32 %25, %30
  %32 = load i16, i16* %5, align 2
  %33 = zext i16 %32 to i32
  %34 = ashr i32 %33, 11
  %35 = mul nsw i32 %34, 3600
  %36 = add nsw i32 %31, %35
  %37 = load i16, i16* %6, align 2
  %38 = zext i16 %37 to i32
  %39 = and i32 %38, 31
  %40 = sub nsw i32 %39, 1
  %41 = load i16*, i16** @day_n, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i16, i16* %41, i64 %43
  %45 = load i16, i16* %44, align 2
  %46 = zext i16 %45 to i32
  %47 = add nsw i32 %40, %46
  %48 = load i32, i32* %8, align 4
  %49 = sdiv i32 %48, 4
  %50 = add nsw i32 %47, %49
  %51 = load i32, i32* %8, align 4
  %52 = mul nsw i32 %51, 365
  %53 = add nsw i32 %50, %52
  %54 = load i32, i32* %8, align 4
  %55 = and i32 %54, 3
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %2
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %58, 2
  br label %60

60:                                               ; preds = %57, %2
  %61 = phi i1 [ false, %2 ], [ %59, %57 ]
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 1, i32 0
  %64 = sub nsw i32 %53, %63
  %65 = add nsw i32 %64, 3653
  %66 = mul nsw i32 86400, %65
  %67 = add nsw i32 %36, %66
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @local2utc(i32 %68)
  ret i32 %69
}

declare dso_local zeroext i16 @le16_to_cpu(i32) #1

declare dso_local i32 @local2utc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
