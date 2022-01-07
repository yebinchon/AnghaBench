; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_cipso_ipv4.c_cipso_v4_parsetag_rbm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_cipso_ipv4.c_cipso_v4_parsetag_rbm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cipso_v4_doi = type { i32 }
%struct.netlbl_lsm_secattr = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32 }

@NETLBL_SECATTR_MLS_LVL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NETLBL_SECATTR_MLS_CAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cipso_v4_doi*, i8*, %struct.netlbl_lsm_secattr*)* @cipso_v4_parsetag_rbm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cipso_v4_parsetag_rbm(%struct.cipso_v4_doi* %0, i8* %1, %struct.netlbl_lsm_secattr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cipso_v4_doi*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.netlbl_lsm_secattr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cipso_v4_doi* %0, %struct.cipso_v4_doi** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.netlbl_lsm_secattr* %2, %struct.netlbl_lsm_secattr** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 1
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  store i32 %14, i32* %9, align 4
  %15 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 3
  %18 = load i8, i8* %17, align 1
  %19 = call i32 @cipso_v4_map_lvl_ntoh(%struct.cipso_v4_doi* %15, i8 zeroext %18, i32* %10)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %4, align 4
  br label %78

24:                                               ; preds = %3
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %7, align 8
  %27 = getelementptr inbounds %struct.netlbl_lsm_secattr, %struct.netlbl_lsm_secattr* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i32 %25, i32* %29, align 8
  %30 = load i32, i32* @NETLBL_SECATTR_MLS_LVL, align 4
  %31 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %7, align 8
  %32 = getelementptr inbounds %struct.netlbl_lsm_secattr, %struct.netlbl_lsm_secattr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load i32, i32* %9, align 4
  %36 = icmp sgt i32 %35, 4
  br i1 %36, label %37, label %77

37:                                               ; preds = %24
  %38 = load i32, i32* @GFP_ATOMIC, align 4
  %39 = call i32* @netlbl_secattr_catmap_alloc(i32 %38)
  %40 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %7, align 8
  %41 = getelementptr inbounds %struct.netlbl_lsm_secattr, %struct.netlbl_lsm_secattr* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32* %39, i32** %43, align 8
  %44 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %7, align 8
  %45 = getelementptr inbounds %struct.netlbl_lsm_secattr, %struct.netlbl_lsm_secattr* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %37
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %78

53:                                               ; preds = %37
  %54 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %5, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 4
  %57 = load i32, i32* %9, align 4
  %58 = sub nsw i32 %57, 4
  %59 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %7, align 8
  %60 = call i32 @cipso_v4_map_cat_rbm_ntoh(%struct.cipso_v4_doi* %54, i8* %56, i32 %58, %struct.netlbl_lsm_secattr* %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %53
  %64 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %7, align 8
  %65 = getelementptr inbounds %struct.netlbl_lsm_secattr, %struct.netlbl_lsm_secattr* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @netlbl_secattr_catmap_free(i32* %68)
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %4, align 4
  br label %78

71:                                               ; preds = %53
  %72 = load i32, i32* @NETLBL_SECATTR_MLS_CAT, align 4
  %73 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %7, align 8
  %74 = getelementptr inbounds %struct.netlbl_lsm_secattr, %struct.netlbl_lsm_secattr* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  br label %77

77:                                               ; preds = %71, %24
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %63, %50, %22
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @cipso_v4_map_lvl_ntoh(%struct.cipso_v4_doi*, i8 zeroext, i32*) #1

declare dso_local i32* @netlbl_secattr_catmap_alloc(i32) #1

declare dso_local i32 @cipso_v4_map_cat_rbm_ntoh(%struct.cipso_v4_doi*, i8*, i32, %struct.netlbl_lsm_secattr*) #1

declare dso_local i32 @netlbl_secattr_catmap_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
