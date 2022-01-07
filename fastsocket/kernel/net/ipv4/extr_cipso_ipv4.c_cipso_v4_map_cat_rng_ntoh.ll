; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_cipso_ipv4.c_cipso_v4_map_cat_rng_ntoh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_cipso_ipv4.c_cipso_v4_map_cat_rng_ntoh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cipso_v4_doi = type { i32 }
%struct.netlbl_lsm_secattr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cipso_v4_doi*, i8*, i32, %struct.netlbl_lsm_secattr*)* @cipso_v4_map_cat_rng_ntoh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cipso_v4_map_cat_rng_ntoh(%struct.cipso_v4_doi* %0, i8* %1, i32 %2, %struct.netlbl_lsm_secattr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cipso_v4_doi*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.netlbl_lsm_secattr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.cipso_v4_doi* %0, %struct.cipso_v4_doi** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.netlbl_lsm_secattr* %3, %struct.netlbl_lsm_secattr** %9, align 8
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %51, %4
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %54

18:                                               ; preds = %14
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = call i64 @get_unaligned_be16(i8* %22)
  store i64 %23, i64* %13, align 8
  %24 = load i32, i32* %11, align 4
  %25 = add nsw i32 %24, 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %18
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %11, align 4
  %31 = add nsw i32 %30, 2
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  %34 = call i64 @get_unaligned_be16(i8* %33)
  store i64 %34, i64* %12, align 8
  br label %36

35:                                               ; preds = %18
  store i64 0, i64* %12, align 8
  br label %36

36:                                               ; preds = %35, %28
  %37 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %9, align 8
  %38 = getelementptr inbounds %struct.netlbl_lsm_secattr, %struct.netlbl_lsm_secattr* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* %13, align 8
  %44 = load i32, i32* @GFP_ATOMIC, align 4
  %45 = call i32 @netlbl_secattr_catmap_setrng(i32 %41, i64 %42, i64 %43, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %36
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %5, align 4
  br label %55

50:                                               ; preds = %36
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 4
  store i32 %53, i32* %11, align 4
  br label %14

54:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %48
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i64 @get_unaligned_be16(i8*) #1

declare dso_local i32 @netlbl_secattr_catmap_setrng(i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
