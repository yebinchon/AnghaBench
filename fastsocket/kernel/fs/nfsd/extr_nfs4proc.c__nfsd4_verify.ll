; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4proc.c__nfsd4_verify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4proc.c__nfsd4_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.nfsd4_verify = type { i32*, i32, i32 }

@NFSD_MAY_NOP = common dso_local global i32 0, align 4
@FATTR4_WORD0_RDATTR_ERROR = common dso_local global i32 0, align 4
@NFSD_WRITEONLY_ATTRS_WORD1 = common dso_local global i32 0, align 4
@nfserr_inval = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@nfserr_resource = common dso_local global i64 0, align 8
@nfserr_not_same = common dso_local global i64 0, align 8
@nfserr_same = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*, %struct.nfsd4_compound_state*, %struct.nfsd4_verify*)* @_nfsd4_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_nfsd4_verify(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %struct.nfsd4_verify* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd4_compound_state*, align 8
  %7 = alloca %struct.nfsd4_verify*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %6, align 8
  store %struct.nfsd4_verify* %2, %struct.nfsd4_verify** %7, align 8
  %12 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %13 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %14 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %13, i32 0, i32 0
  %15 = load i32, i32* @NFSD_MAY_NOP, align 4
  %16 = call i64 @fh_verify(%struct.svc_rqst* %12, %struct.TYPE_3__* %14, i32 0, i32 %15)
  store i64 %16, i64* %11, align 8
  %17 = load i64, i64* %11, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i64, i64* %11, align 8
  store i64 %20, i64* %4, align 8
  br label %139

21:                                               ; preds = %3
  %22 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %23 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %24 = load %struct.nfsd4_verify*, %struct.nfsd4_verify** %7, align 8
  %25 = getelementptr inbounds %struct.nfsd4_verify, %struct.nfsd4_verify* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i64 @check_attr_support(%struct.svc_rqst* %22, %struct.nfsd4_compound_state* %23, i32* %26, i32* null)
  store i64 %27, i64* %11, align 8
  %28 = load i64, i64* %11, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i64, i64* %11, align 8
  store i64 %31, i64* %4, align 8
  br label %139

32:                                               ; preds = %21
  %33 = load %struct.nfsd4_verify*, %struct.nfsd4_verify** %7, align 8
  %34 = getelementptr inbounds %struct.nfsd4_verify, %struct.nfsd4_verify* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @FATTR4_WORD0_RDATTR_ERROR, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %32
  %42 = load %struct.nfsd4_verify*, %struct.nfsd4_verify** %7, align 8
  %43 = getelementptr inbounds %struct.nfsd4_verify, %struct.nfsd4_verify* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @NFSD_WRITEONLY_ATTRS_WORD1, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %41, %32
  %51 = load i64, i64* @nfserr_inval, align 8
  store i64 %51, i64* %4, align 8
  br label %139

52:                                               ; preds = %41
  %53 = load %struct.nfsd4_verify*, %struct.nfsd4_verify** %7, align 8
  %54 = getelementptr inbounds %struct.nfsd4_verify, %struct.nfsd4_verify* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %55, 3
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i64, i64* @nfserr_inval, align 8
  store i64 %59, i64* %4, align 8
  br label %139

60:                                               ; preds = %52
  %61 = load %struct.nfsd4_verify*, %struct.nfsd4_verify** %7, align 8
  %62 = getelementptr inbounds %struct.nfsd4_verify, %struct.nfsd4_verify* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = ashr i32 %63, 2
  %65 = add nsw i32 4, %64
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = shl i32 %66, 2
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call i64* @kmalloc(i32 %67, i32 %68)
  store i64* %69, i64** %8, align 8
  %70 = load i64*, i64** %8, align 8
  %71 = icmp ne i64* %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %60
  %73 = load i64, i64* @nfserr_resource, align 8
  store i64 %73, i64* %4, align 8
  br label %139

74:                                               ; preds = %60
  %75 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %76 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %75, i32 0, i32 0
  %77 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %78 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %82 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i64*, i64** %8, align 8
  %86 = load %struct.nfsd4_verify*, %struct.nfsd4_verify** %7, align 8
  %87 = getelementptr inbounds %struct.nfsd4_verify, %struct.nfsd4_verify* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %90 = call i64 @nfsd4_encode_fattr(%struct.TYPE_3__* %76, i32 %80, i32 %84, i64* %85, i32* %10, i32* %88, %struct.svc_rqst* %89, i32 0)
  store i64 %90, i64* %11, align 8
  %91 = load i64, i64* %11, align 8
  %92 = load i64, i64* @nfserr_resource, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %74
  %95 = load i32, i32* %10, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i64, i64* @nfserr_not_same, align 8
  store i64 %98, i64* %11, align 8
  br label %99

99:                                               ; preds = %97, %94, %74
  %100 = load i64, i64* %11, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  br label %135

103:                                              ; preds = %99
  %104 = load i64*, i64** %8, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 1
  %106 = load i64*, i64** %8, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @ntohl(i64 %108)
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %105, i64 %110
  store i64* %111, i64** %9, align 8
  %112 = load i64, i64* @nfserr_not_same, align 8
  store i64 %112, i64* %11, align 8
  %113 = load i64*, i64** %9, align 8
  %114 = getelementptr inbounds i64, i64* %113, i32 1
  store i64* %114, i64** %9, align 8
  %115 = load i64, i64* %113, align 8
  %116 = call i32 @ntohl(i64 %115)
  %117 = load %struct.nfsd4_verify*, %struct.nfsd4_verify** %7, align 8
  %118 = getelementptr inbounds %struct.nfsd4_verify, %struct.nfsd4_verify* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %116, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %103
  br label %135

122:                                              ; preds = %103
  %123 = load i64*, i64** %9, align 8
  %124 = load %struct.nfsd4_verify*, %struct.nfsd4_verify** %7, align 8
  %125 = getelementptr inbounds %struct.nfsd4_verify, %struct.nfsd4_verify* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.nfsd4_verify*, %struct.nfsd4_verify** %7, align 8
  %128 = getelementptr inbounds %struct.nfsd4_verify, %struct.nfsd4_verify* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @memcmp(i64* %123, i32 %126, i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %122
  %133 = load i64, i64* @nfserr_same, align 8
  store i64 %133, i64* %11, align 8
  br label %134

134:                                              ; preds = %132, %122
  br label %135

135:                                              ; preds = %134, %121, %102
  %136 = load i64*, i64** %8, align 8
  %137 = call i32 @kfree(i64* %136)
  %138 = load i64, i64* %11, align 8
  store i64 %138, i64* %4, align 8
  br label %139

139:                                              ; preds = %135, %72, %58, %50, %30, %19
  %140 = load i64, i64* %4, align 8
  ret i64 %140
}

declare dso_local i64 @fh_verify(%struct.svc_rqst*, %struct.TYPE_3__*, i32, i32) #1

declare dso_local i64 @check_attr_support(%struct.svc_rqst*, %struct.nfsd4_compound_state*, i32*, i32*) #1

declare dso_local i64* @kmalloc(i32, i32) #1

declare dso_local i64 @nfsd4_encode_fattr(%struct.TYPE_3__*, i32, i32, i64*, i32*, i32*, %struct.svc_rqst*, i32) #1

declare dso_local i32 @ntohl(i64) #1

declare dso_local i32 @memcmp(i64*, i32, i32) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
