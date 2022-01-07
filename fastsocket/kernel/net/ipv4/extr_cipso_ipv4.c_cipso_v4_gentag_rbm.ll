; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_cipso_ipv4.c_cipso_v4_gentag_rbm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_cipso_ipv4.c_cipso_v4_gentag_rbm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cipso_v4_doi = type { i32 }
%struct.netlbl_lsm_secattr = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@NETLBL_SECATTR_MLS_LVL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@NETLBL_SECATTR_MLS_CAT = common dso_local global i32 0, align 4
@cipso_v4_rbm_optfmt = common dso_local global i64 0, align 8
@CIPSO_V4_TAG_RBITMAP = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cipso_v4_doi*, %struct.netlbl_lsm_secattr*, i8*, i32)* @cipso_v4_gentag_rbm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cipso_v4_gentag_rbm(%struct.cipso_v4_doi* %0, %struct.netlbl_lsm_secattr* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cipso_v4_doi*, align 8
  %7 = alloca %struct.netlbl_lsm_secattr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cipso_v4_doi* %0, %struct.cipso_v4_doi** %6, align 8
  store %struct.netlbl_lsm_secattr* %1, %struct.netlbl_lsm_secattr** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %7, align 8
  %14 = getelementptr inbounds %struct.netlbl_lsm_secattr, %struct.netlbl_lsm_secattr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @NETLBL_SECATTR_MLS_LVL, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EPERM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %81

22:                                               ; preds = %4
  %23 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %6, align 8
  %24 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %7, align 8
  %25 = getelementptr inbounds %struct.netlbl_lsm_secattr, %struct.netlbl_lsm_secattr* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @cipso_v4_map_lvl_hton(%struct.cipso_v4_doi* %23, i32 %28, i32* %12)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %5, align 4
  br label %81

34:                                               ; preds = %22
  %35 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %7, align 8
  %36 = getelementptr inbounds %struct.netlbl_lsm_secattr, %struct.netlbl_lsm_secattr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @NETLBL_SECATTR_MLS_CAT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %67

41:                                               ; preds = %34
  %42 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %6, align 8
  %43 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %7, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 4
  %46 = load i32, i32* %9, align 4
  %47 = sub nsw i32 %46, 4
  %48 = call i32 @cipso_v4_map_cat_rbm_hton(%struct.cipso_v4_doi* %42, %struct.netlbl_lsm_secattr* %43, i8* %45, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %5, align 4
  br label %81

53:                                               ; preds = %41
  %54 = load i64, i64* @cipso_v4_rbm_optfmt, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load i32, i32* %10, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i32, i32* %10, align 4
  %61 = icmp sle i32 %60, 10
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 14, i32* %11, align 4
  br label %66

63:                                               ; preds = %59, %56, %53
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 4, %64
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %63, %62
  br label %68

67:                                               ; preds = %34
  store i32 4, i32* %11, align 4
  br label %68

68:                                               ; preds = %67, %66
  %69 = load i8, i8* @CIPSO_V4_TAG_RBITMAP, align 1
  %70 = load i8*, i8** %8, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  store i8 %69, i8* %71, align 1
  %72 = load i32, i32* %11, align 4
  %73 = trunc i32 %72 to i8
  %74 = load i8*, i8** %8, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  store i8 %73, i8* %75, align 1
  %76 = load i32, i32* %12, align 4
  %77 = trunc i32 %76 to i8
  %78 = load i8*, i8** %8, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 3
  store i8 %77, i8* %79, align 1
  %80 = load i32, i32* %11, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %68, %51, %32, %19
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @cipso_v4_map_lvl_hton(%struct.cipso_v4_doi*, i32, i32*) #1

declare dso_local i32 @cipso_v4_map_cat_rbm_hton(%struct.cipso_v4_doi*, %struct.netlbl_lsm_secattr*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
