; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_secinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_secinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundres = type { i32 }
%struct.nfsd4_secinfo = type { %struct.svc_export* }
%struct.svc_export = type { i32, %struct.TYPE_6__*, %struct.exp_flavor_info* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.exp_flavor_info = type { i32 }
%struct.gss_api_mech = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@RPC_AUTH_UNIX = common dso_local global i64 0, align 8
@RPC_AUTH_NULL = common dso_local global i32 0, align 4
@RPC_AUTH_GSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nfsd4_compoundres*, i64, %struct.nfsd4_secinfo*)* @nfsd4_encode_secinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd4_encode_secinfo(%struct.nfsd4_compoundres* %0, i64 %1, %struct.nfsd4_secinfo* %2) #0 {
  %4 = alloca %struct.nfsd4_compoundres*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.nfsd4_secinfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.svc_export*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.exp_flavor_info*, align 8
  %11 = alloca [2 x %struct.exp_flavor_info], align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.gss_api_mech*, align 8
  store %struct.nfsd4_compoundres* %0, %struct.nfsd4_compoundres** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.nfsd4_secinfo* %2, %struct.nfsd4_secinfo** %6, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.nfsd4_secinfo*, %struct.nfsd4_secinfo** %6, align 8
  %16 = getelementptr inbounds %struct.nfsd4_secinfo, %struct.nfsd4_secinfo* %15, i32 0, i32 0
  %17 = load %struct.svc_export*, %struct.svc_export** %16, align 8
  store %struct.svc_export* %17, %struct.svc_export** %8, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %154

21:                                               ; preds = %3
  %22 = load %struct.svc_export*, %struct.svc_export** %8, align 8
  %23 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.svc_export*, %struct.svc_export** %8, align 8
  %28 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %27, i32 0, i32 2
  %29 = load %struct.exp_flavor_info*, %struct.exp_flavor_info** %28, align 8
  store %struct.exp_flavor_info* %29, %struct.exp_flavor_info** %10, align 8
  %30 = load %struct.svc_export*, %struct.svc_export** %8, align 8
  %31 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %9, align 4
  br label %87

33:                                               ; preds = %21
  %34 = getelementptr inbounds [2 x %struct.exp_flavor_info], [2 x %struct.exp_flavor_info]* %11, i64 0, i64 0
  store %struct.exp_flavor_info* %34, %struct.exp_flavor_info** %10, align 8
  %35 = load %struct.svc_export*, %struct.svc_export** %8, align 8
  %36 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @RPC_AUTH_UNIX, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %33
  store i32 2, i32* %9, align 4
  %45 = load i64, i64* @RPC_AUTH_UNIX, align 8
  %46 = trunc i64 %45 to i32
  %47 = load %struct.exp_flavor_info*, %struct.exp_flavor_info** %10, align 8
  %48 = getelementptr inbounds %struct.exp_flavor_info, %struct.exp_flavor_info* %47, i64 0
  %49 = getelementptr inbounds %struct.exp_flavor_info, %struct.exp_flavor_info* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* @RPC_AUTH_NULL, align 4
  %51 = load %struct.exp_flavor_info*, %struct.exp_flavor_info** %10, align 8
  %52 = getelementptr inbounds %struct.exp_flavor_info, %struct.exp_flavor_info* %51, i64 1
  %53 = getelementptr inbounds %struct.exp_flavor_info, %struct.exp_flavor_info* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  br label %86

54:                                               ; preds = %33
  %55 = load %struct.svc_export*, %struct.svc_export** %8, align 8
  %56 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %55, i32 0, i32 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* @RPC_AUTH_GSS, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp eq i64 %61, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %54
  store i32 1, i32* %9, align 4
  %66 = load %struct.svc_export*, %struct.svc_export** %8, align 8
  %67 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %66, i32 0, i32 1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = call i32 @svcauth_gss_flavor(%struct.TYPE_6__* %68)
  %70 = load %struct.exp_flavor_info*, %struct.exp_flavor_info** %10, align 8
  %71 = getelementptr inbounds %struct.exp_flavor_info, %struct.exp_flavor_info* %70, i64 0
  %72 = getelementptr inbounds %struct.exp_flavor_info, %struct.exp_flavor_info* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 4
  br label %85

73:                                               ; preds = %54
  store i32 1, i32* %9, align 4
  %74 = load %struct.svc_export*, %struct.svc_export** %8, align 8
  %75 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %74, i32 0, i32 1
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i32
  %82 = load %struct.exp_flavor_info*, %struct.exp_flavor_info** %10, align 8
  %83 = getelementptr inbounds %struct.exp_flavor_info, %struct.exp_flavor_info* %82, i64 0
  %84 = getelementptr inbounds %struct.exp_flavor_info, %struct.exp_flavor_info* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 4
  br label %85

85:                                               ; preds = %73, %65
  br label %86

86:                                               ; preds = %85, %44
  br label %87

87:                                               ; preds = %86, %26
  %88 = call i32 @RESERVE_SPACE(i32 4)
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @WRITE32(i32 %89)
  %91 = call i32 (...) @ADJUST_ARGS()
  store i32 0, i32* %7, align 4
  br label %92

92:                                               ; preds = %150, %87
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %153

96:                                               ; preds = %92
  %97 = load %struct.exp_flavor_info*, %struct.exp_flavor_info** %10, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.exp_flavor_info, %struct.exp_flavor_info* %97, i64 %99
  %101 = getelementptr inbounds %struct.exp_flavor_info, %struct.exp_flavor_info* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %13, align 4
  %104 = call %struct.gss_api_mech* @gss_mech_get_by_pseudoflavor(i32 %103)
  store %struct.gss_api_mech* %104, %struct.gss_api_mech** %14, align 8
  %105 = load %struct.gss_api_mech*, %struct.gss_api_mech** %14, align 8
  %106 = icmp ne %struct.gss_api_mech* %105, null
  br i1 %106, label %107, label %144

107:                                              ; preds = %96
  %108 = call i32 @RESERVE_SPACE(i32 4)
  %109 = load i32, i32* @RPC_AUTH_GSS, align 4
  %110 = call i32 @WRITE32(i32 %109)
  %111 = call i32 (...) @ADJUST_ARGS()
  %112 = load %struct.gss_api_mech*, %struct.gss_api_mech** %14, align 8
  %113 = getelementptr inbounds %struct.gss_api_mech, %struct.gss_api_mech* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 4, %115
  %117 = call i32 @RESERVE_SPACE(i32 %116)
  %118 = load %struct.gss_api_mech*, %struct.gss_api_mech** %14, align 8
  %119 = getelementptr inbounds %struct.gss_api_mech, %struct.gss_api_mech* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @WRITE32(i32 %121)
  %123 = load %struct.gss_api_mech*, %struct.gss_api_mech** %14, align 8
  %124 = getelementptr inbounds %struct.gss_api_mech, %struct.gss_api_mech* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.gss_api_mech*, %struct.gss_api_mech** %14, align 8
  %128 = getelementptr inbounds %struct.gss_api_mech, %struct.gss_api_mech* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @WRITEMEM(i32 %126, i32 %130)
  %132 = call i32 (...) @ADJUST_ARGS()
  %133 = call i32 @RESERVE_SPACE(i32 4)
  %134 = call i32 @WRITE32(i32 0)
  %135 = call i32 (...) @ADJUST_ARGS()
  %136 = call i32 @RESERVE_SPACE(i32 4)
  %137 = load %struct.gss_api_mech*, %struct.gss_api_mech** %14, align 8
  %138 = load i32, i32* %13, align 4
  %139 = call i32 @gss_pseudoflavor_to_service(%struct.gss_api_mech* %137, i32 %138)
  %140 = call i32 @WRITE32(i32 %139)
  %141 = call i32 (...) @ADJUST_ARGS()
  %142 = load %struct.gss_api_mech*, %struct.gss_api_mech** %14, align 8
  %143 = call i32 @gss_mech_put(%struct.gss_api_mech* %142)
  br label %149

144:                                              ; preds = %96
  %145 = call i32 @RESERVE_SPACE(i32 4)
  %146 = load i32, i32* %13, align 4
  %147 = call i32 @WRITE32(i32 %146)
  %148 = call i32 (...) @ADJUST_ARGS()
  br label %149

149:                                              ; preds = %144, %107
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %7, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %7, align 4
  br label %92

153:                                              ; preds = %92
  br label %154

154:                                              ; preds = %153, %20
  %155 = load %struct.svc_export*, %struct.svc_export** %8, align 8
  %156 = icmp ne %struct.svc_export* %155, null
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load %struct.svc_export*, %struct.svc_export** %8, align 8
  %159 = call i32 @exp_put(%struct.svc_export* %158)
  br label %160

160:                                              ; preds = %157, %154
  %161 = load i64, i64* %5, align 8
  ret i64 %161
}

declare dso_local i32 @svcauth_gss_flavor(%struct.TYPE_6__*) #1

declare dso_local i32 @RESERVE_SPACE(i32) #1

declare dso_local i32 @WRITE32(i32) #1

declare dso_local i32 @ADJUST_ARGS(...) #1

declare dso_local %struct.gss_api_mech* @gss_mech_get_by_pseudoflavor(i32) #1

declare dso_local i32 @WRITEMEM(i32, i32) #1

declare dso_local i32 @gss_pseudoflavor_to_service(%struct.gss_api_mech*, i32) #1

declare dso_local i32 @gss_mech_put(%struct.gss_api_mech*) #1

declare dso_local i32 @exp_put(%struct.svc_export*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
