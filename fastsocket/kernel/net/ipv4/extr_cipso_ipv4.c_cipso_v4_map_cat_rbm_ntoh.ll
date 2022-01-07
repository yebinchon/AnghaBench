; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_cipso_ipv4.c_cipso_v4_map_cat_rbm_ntoh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_cipso_ipv4.c_cipso_v4_map_cat_rbm_ntoh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cipso_v4_doi = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32* }
%struct.netlbl_lsm_secattr = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@CIPSO_V4_INV_CAT = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cipso_v4_doi*, i8*, i32, %struct.netlbl_lsm_secattr*)* @cipso_v4_map_cat_rbm_ntoh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cipso_v4_map_cat_rbm_ntoh(%struct.cipso_v4_doi* %0, i8* %1, i32 %2, %struct.netlbl_lsm_secattr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cipso_v4_doi*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.netlbl_lsm_secattr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.cipso_v4_doi* %0, %struct.cipso_v4_doi** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.netlbl_lsm_secattr* %3, %struct.netlbl_lsm_secattr** %9, align 8
  store i32 -1, i32* %11, align 4
  %16 = load i32, i32* @CIPSO_V4_INV_CAT, align 4
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %8, align 4
  %18 = mul nsw i32 %17, 8
  store i32 %18, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32* null, i32** %15, align 8
  %19 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %6, align 8
  %20 = getelementptr inbounds %struct.cipso_v4_doi, %struct.cipso_v4_doi* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 128
  br i1 %22, label %23, label %38

23:                                               ; preds = %4
  %24 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %6, align 8
  %25 = getelementptr inbounds %struct.cipso_v4_doi, %struct.cipso_v4_doi* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %14, align 4
  %31 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %6, align 8
  %32 = getelementptr inbounds %struct.cipso_v4_doi, %struct.cipso_v4_doi* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %15, align 8
  br label %38

38:                                               ; preds = %23, %4
  br label %39

39:                                               ; preds = %93, %38
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, 1
  %44 = call i32 @cipso_v4_bitmap_walk(i8* %40, i32 %41, i32 %43, i32 1)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %39
  %48 = load i32, i32* %11, align 4
  %49 = icmp eq i32 %48, -2
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* @EFAULT, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %94

53:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  br label %94

54:                                               ; preds = %39
  %55 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %6, align 8
  %56 = getelementptr inbounds %struct.cipso_v4_doi, %struct.cipso_v4_doi* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  switch i32 %57, label %80 [
    i32 129, label %58
    i32 128, label %60
  ]

58:                                               ; preds = %54
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %12, align 4
  br label %80

60:                                               ; preds = %54
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32, i32* @EPERM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %94

67:                                               ; preds = %60
  %68 = load i32*, i32** %15, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @CIPSO_V4_INV_CAT, align 4
  %75 = icmp sge i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %67
  %77 = load i32, i32* @EPERM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %94

79:                                               ; preds = %67
  br label %80

80:                                               ; preds = %54, %79, %58
  %81 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %9, align 8
  %82 = getelementptr inbounds %struct.netlbl_lsm_secattr, %struct.netlbl_lsm_secattr* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @GFP_ATOMIC, align 4
  %88 = call i32 @netlbl_secattr_catmap_setbit(i32 %85, i32 %86, i32 %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %80
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %5, align 4
  br label %94

93:                                               ; preds = %80
  br label %39

94:                                               ; preds = %91, %76, %64, %53, %50
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @cipso_v4_bitmap_walk(i8*, i32, i32, i32) #1

declare dso_local i32 @netlbl_secattr_catmap_setbit(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
