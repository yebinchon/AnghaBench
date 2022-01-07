; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_date_dos2unix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_date_dos2unix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_sb_info = type { i32 }

@day_n = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_sb_info*, i32, i32)* @date_dos2unix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @date_dos2unix(%struct.smb_sb_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.smb_sb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.smb_sb_info* %0, %struct.smb_sb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = ashr i32 %10, 5
  %12 = sub nsw i32 %11, 1
  %13 = and i32 %12, 15
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = ashr i32 %14, 9
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, 31
  %18 = mul nsw i32 %17, 2
  %19 = load i32, i32* %6, align 4
  %20 = ashr i32 %19, 5
  %21 = and i32 %20, 63
  %22 = mul nsw i32 60, %21
  %23 = add nsw i32 %18, %22
  %24 = load i32, i32* %6, align 4
  %25 = ashr i32 %24, 11
  %26 = mul nsw i32 %25, 3600
  %27 = add nsw i32 %23, %26
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, 31
  %30 = sub nsw i32 %29, 1
  %31 = load i32*, i32** @day_n, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %30, %35
  %37 = load i32, i32* %8, align 4
  %38 = sdiv i32 %37, 4
  %39 = add nsw i32 %36, %38
  %40 = load i32, i32* %8, align 4
  %41 = mul nsw i32 %40, 365
  %42 = add nsw i32 %39, %41
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, 3
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %3
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 2
  br label %49

49:                                               ; preds = %46, %3
  %50 = phi i1 [ false, %3 ], [ %48, %46 ]
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 1, i32 0
  %53 = sub nsw i32 %42, %52
  %54 = add nsw i32 %53, 3653
  %55 = mul nsw i32 86400, %54
  %56 = add nsw i32 %27, %55
  store i32 %56, i32* %9, align 4
  %57 = load %struct.smb_sb_info*, %struct.smb_sb_info** %4, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @local2utc(%struct.smb_sb_info* %57, i32 %58)
  ret i32 %59
}

declare dso_local i32 @local2utc(%struct.smb_sb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
