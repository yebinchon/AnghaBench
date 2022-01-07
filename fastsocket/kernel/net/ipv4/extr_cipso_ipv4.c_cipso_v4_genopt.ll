; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_cipso_ipv4.c_cipso_v4_genopt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_cipso_ipv4.c_cipso_v4_genopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cipso_v4_doi = type { i32* }
%struct.netlbl_lsm_secattr = type { i32 }

@CIPSO_V4_HDR_LEN = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@CIPSO_V4_TAG_MAXCNT = common dso_local global i64 0, align 8
@CIPSO_V4_TAG_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.cipso_v4_doi*, %struct.netlbl_lsm_secattr*)* @cipso_v4_genopt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cipso_v4_genopt(i8* %0, i64 %1, %struct.cipso_v4_doi* %2, %struct.netlbl_lsm_secattr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.cipso_v4_doi*, align 8
  %9 = alloca %struct.netlbl_lsm_secattr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.cipso_v4_doi* %2, %struct.cipso_v4_doi** %8, align 8
  store %struct.netlbl_lsm_secattr* %3, %struct.netlbl_lsm_secattr** %9, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @CIPSO_V4_HDR_LEN, align 8
  %14 = icmp sle i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @ENOSPC, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %108

18:                                               ; preds = %4
  store i64 0, i64* %11, align 8
  br label %19

19:                                               ; preds = %91, %18
  %20 = load i8*, i8** %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @memset(i8* %20, i32 0, i64 %21)
  %23 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %8, align 8
  %24 = getelementptr inbounds %struct.cipso_v4_doi, %struct.cipso_v4_doi* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %11, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %69 [
    i32 128, label %29
    i32 131, label %39
    i32 129, label %49
    i32 130, label %59
  ]

29:                                               ; preds = %19
  %30 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %8, align 8
  %31 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %9, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i64, i64* @CIPSO_V4_HDR_LEN, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @CIPSO_V4_HDR_LEN, align 8
  %37 = sub nsw i64 %35, %36
  %38 = call i32 @cipso_v4_gentag_rbm(%struct.cipso_v4_doi* %30, %struct.netlbl_lsm_secattr* %31, i8* %34, i64 %37)
  store i32 %38, i32* %10, align 4
  br label %72

39:                                               ; preds = %19
  %40 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %8, align 8
  %41 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %9, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i64, i64* @CIPSO_V4_HDR_LEN, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* @CIPSO_V4_HDR_LEN, align 8
  %47 = sub nsw i64 %45, %46
  %48 = call i32 @cipso_v4_gentag_enum(%struct.cipso_v4_doi* %40, %struct.netlbl_lsm_secattr* %41, i8* %44, i64 %47)
  store i32 %48, i32* %10, align 4
  br label %72

49:                                               ; preds = %19
  %50 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %8, align 8
  %51 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %9, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load i64, i64* @CIPSO_V4_HDR_LEN, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* @CIPSO_V4_HDR_LEN, align 8
  %57 = sub nsw i64 %55, %56
  %58 = call i32 @cipso_v4_gentag_rng(%struct.cipso_v4_doi* %50, %struct.netlbl_lsm_secattr* %51, i8* %54, i64 %57)
  store i32 %58, i32* %10, align 4
  br label %72

59:                                               ; preds = %19
  %60 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %8, align 8
  %61 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %9, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = load i64, i64* @CIPSO_V4_HDR_LEN, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* @CIPSO_V4_HDR_LEN, align 8
  %67 = sub nsw i64 %65, %66
  %68 = call i32 @cipso_v4_gentag_loc(%struct.cipso_v4_doi* %60, %struct.netlbl_lsm_secattr* %61, i8* %64, i64 %67)
  store i32 %68, i32* %10, align 4
  br label %72

69:                                               ; preds = %19
  %70 = load i32, i32* @EPERM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %108

72:                                               ; preds = %59, %49, %39, %29
  %73 = load i64, i64* %11, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %11, align 8
  br label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %10, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %75
  %79 = load i64, i64* %11, align 8
  %80 = load i64, i64* @CIPSO_V4_TAG_MAXCNT, align 8
  %81 = icmp slt i64 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  %83 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %8, align 8
  %84 = getelementptr inbounds %struct.cipso_v4_doi, %struct.cipso_v4_doi* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* %11, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @CIPSO_V4_TAG_INVALID, align 4
  %90 = icmp ne i32 %88, %89
  br label %91

91:                                               ; preds = %82, %78, %75
  %92 = phi i1 [ false, %78 ], [ false, %75 ], [ %90, %82 ]
  br i1 %92, label %19, label %93

93:                                               ; preds = %91
  %94 = load i32, i32* %10, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* %5, align 4
  br label %108

98:                                               ; preds = %93
  %99 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %8, align 8
  %100 = load i8*, i8** %6, align 8
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @cipso_v4_gentag_hdr(%struct.cipso_v4_doi* %99, i8* %100, i32 %101)
  %103 = load i64, i64* @CIPSO_V4_HDR_LEN, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %103, %105
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %98, %96, %69, %15
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @cipso_v4_gentag_rbm(%struct.cipso_v4_doi*, %struct.netlbl_lsm_secattr*, i8*, i64) #1

declare dso_local i32 @cipso_v4_gentag_enum(%struct.cipso_v4_doi*, %struct.netlbl_lsm_secattr*, i8*, i64) #1

declare dso_local i32 @cipso_v4_gentag_rng(%struct.cipso_v4_doi*, %struct.netlbl_lsm_secattr*, i8*, i64) #1

declare dso_local i32 @cipso_v4_gentag_loc(%struct.cipso_v4_doi*, %struct.netlbl_lsm_secattr*, i8*, i64) #1

declare dso_local i32 @cipso_v4_gentag_hdr(%struct.cipso_v4_doi*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
