; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_cipso_ipv4.c_cipso_v4_map_cat_rng_hton.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_cipso_ipv4.c_cipso_v4_map_cat_rng_hton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cipso_v4_doi = type { i32 }
%struct.netlbl_lsm_secattr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CIPSO_V4_TAG_RNG_CAT_MAX = common dso_local global i32 0, align 4
@CIPSO_V4_OPT_LEN_MAX = common dso_local global i64 0, align 8
@CIPSO_V4_HDR_LEN = common dso_local global i64 0, align 8
@CIPSO_V4_TAG_RNG_BLEN = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cipso_v4_doi*, %struct.netlbl_lsm_secattr*, i8*, i64)* @cipso_v4_map_cat_rng_hton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cipso_v4_map_cat_rng_hton(%struct.cipso_v4_doi* %0, %struct.netlbl_lsm_secattr* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cipso_v4_doi*, align 8
  %7 = alloca %struct.netlbl_lsm_secattr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.cipso_v4_doi* %0, %struct.cipso_v4_doi** %6, align 8
  store %struct.netlbl_lsm_secattr* %1, %struct.netlbl_lsm_secattr** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 -1, i32* %10, align 4
  %16 = load i32, i32* @CIPSO_V4_TAG_RNG_CAT_MAX, align 4
  %17 = mul nsw i32 %16, 2
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @CIPSO_V4_OPT_LEN_MAX, align 8
  %23 = load i64, i64* @CIPSO_V4_HDR_LEN, align 8
  %24 = sub nsw i64 %22, %23
  %25 = load i64, i64* @CIPSO_V4_TAG_RNG_BLEN, align 8
  %26 = sub nsw i64 %24, %25
  %27 = icmp sgt i64 %21, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i32, i32* @ENOSPC, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %127

31:                                               ; preds = %4
  br label %32

32:                                               ; preds = %83, %31
  %33 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %7, align 8
  %34 = getelementptr inbounds %struct.netlbl_lsm_secattr, %struct.netlbl_lsm_secattr* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 1
  %40 = call i32 @netlbl_secattr_catmap_walk(i32 %37, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %88

44:                                               ; preds = %32
  %45 = load i32, i32* %10, align 4
  %46 = icmp eq i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i64 0, i64 4
  %49 = load i64, i64* %14, align 8
  %50 = add i64 %49, %48
  store i64 %50, i64* %14, align 8
  %51 = load i64, i64* %14, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load i32, i32* @ENOSPC, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %127

57:                                               ; preds = %44
  %58 = load i32, i32* %10, align 4
  %59 = load i64, i64* %13, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %13, align 8
  %61 = getelementptr inbounds i32, i32* %20, i64 %59
  store i32 %58, i32* %61, align 4
  %62 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %7, align 8
  %63 = getelementptr inbounds %struct.netlbl_lsm_secattr, %struct.netlbl_lsm_secattr* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @netlbl_secattr_catmap_walk_rng(i32 %66, i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %57
  %72 = load i32, i32* @EFAULT, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %127

74:                                               ; preds = %57
  %75 = load i64, i64* %14, align 8
  %76 = add i64 %75, 4
  store i64 %76, i64* %14, align 8
  %77 = load i64, i64* %14, align 8
  %78 = load i64, i64* %9, align 8
  %79 = icmp sgt i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load i32, i32* @ENOSPC, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %127

83:                                               ; preds = %74
  %84 = load i32, i32* %10, align 4
  %85 = load i64, i64* %13, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %13, align 8
  %87 = getelementptr inbounds i32, i32* %20, i64 %85
  store i32 %84, i32* %87, align 4
  br label %32

88:                                               ; preds = %43
  store i32 0, i32* %10, align 4
  br label %89

89:                                               ; preds = %123, %88
  %90 = load i64, i64* %13, align 8
  %91 = icmp sgt i64 %90, 0
  br i1 %91, label %92, label %124

92:                                               ; preds = %89
  %93 = load i64, i64* %13, align 8
  %94 = add nsw i64 %93, -1
  store i64 %94, i64* %13, align 8
  %95 = getelementptr inbounds i32, i32* %20, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @htons(i32 %96)
  %98 = load i8*, i8** %8, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = bitcast i8* %101 to i32*
  store i32 %97, i32* %102, align 4
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 2
  store i32 %104, i32* %10, align 4
  %105 = load i64, i64* %13, align 8
  %106 = add nsw i64 %105, -1
  store i64 %106, i64* %13, align 8
  %107 = load i64, i64* %13, align 8
  %108 = getelementptr inbounds i32, i32* %20, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %123

111:                                              ; preds = %92
  %112 = load i64, i64* %13, align 8
  %113 = getelementptr inbounds i32, i32* %20, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @htons(i32 %114)
  %116 = load i8*, i8** %8, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  %120 = bitcast i8* %119 to i32*
  store i32 %115, i32* %120, align 4
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, 2
  store i32 %122, i32* %10, align 4
  br label %123

123:                                              ; preds = %111, %92
  br label %89

124:                                              ; preds = %89
  %125 = load i64, i64* %14, align 8
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %127

127:                                              ; preds = %124, %80, %71, %54, %28
  %128 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %128)
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @netlbl_secattr_catmap_walk(i32, i32) #2

declare dso_local i32 @netlbl_secattr_catmap_walk_rng(i32, i32) #2

declare dso_local i32 @htons(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
