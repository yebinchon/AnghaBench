; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4namespace.c_nfs_find_best_sec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4namespace.c_nfs_find_best_sec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_secinfo_flavors = type { i32, %struct.nfs4_secinfo_flavor* }
%struct.nfs4_secinfo_flavor = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.gss_api_mech = type { i32 }
%struct.xdr_netobj = type { i32, i32 }

@RPC_AUTH_UNIX = common dso_local global i64 0, align 8
@RPC_AUTH_NULL = common dso_local global i64 0, align 8
@RPC_AUTH_GSS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfs_find_best_sec(%struct.nfs4_secinfo_flavors* %0) #0 {
  %2 = alloca %struct.nfs4_secinfo_flavors*, align 8
  %3 = alloca %struct.gss_api_mech*, align 8
  %4 = alloca %struct.xdr_netobj, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.nfs4_secinfo_flavor*, align 8
  store %struct.nfs4_secinfo_flavors* %0, %struct.nfs4_secinfo_flavors** %2, align 8
  %8 = load i64, i64* @RPC_AUTH_UNIX, align 8
  store i64 %8, i64* %6, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %71, %1
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.nfs4_secinfo_flavors*, %struct.nfs4_secinfo_flavors** %2, align 8
  %12 = getelementptr inbounds %struct.nfs4_secinfo_flavors, %struct.nfs4_secinfo_flavors* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %74

15:                                               ; preds = %9
  %16 = load %struct.nfs4_secinfo_flavors*, %struct.nfs4_secinfo_flavors** %2, align 8
  %17 = getelementptr inbounds %struct.nfs4_secinfo_flavors, %struct.nfs4_secinfo_flavors* %16, i32 0, i32 1
  %18 = load %struct.nfs4_secinfo_flavor*, %struct.nfs4_secinfo_flavor** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.nfs4_secinfo_flavor, %struct.nfs4_secinfo_flavor* %18, i64 %20
  store %struct.nfs4_secinfo_flavor* %21, %struct.nfs4_secinfo_flavor** %7, align 8
  %22 = load %struct.nfs4_secinfo_flavor*, %struct.nfs4_secinfo_flavor** %7, align 8
  %23 = getelementptr inbounds %struct.nfs4_secinfo_flavor, %struct.nfs4_secinfo_flavor* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @RPC_AUTH_NULL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %15
  %28 = load %struct.nfs4_secinfo_flavor*, %struct.nfs4_secinfo_flavor** %7, align 8
  %29 = getelementptr inbounds %struct.nfs4_secinfo_flavor, %struct.nfs4_secinfo_flavor* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @RPC_AUTH_UNIX, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27, %15
  %34 = load %struct.nfs4_secinfo_flavor*, %struct.nfs4_secinfo_flavor** %7, align 8
  %35 = getelementptr inbounds %struct.nfs4_secinfo_flavor, %struct.nfs4_secinfo_flavor* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %6, align 8
  br label %74

37:                                               ; preds = %27
  %38 = load %struct.nfs4_secinfo_flavor*, %struct.nfs4_secinfo_flavor** %7, align 8
  %39 = getelementptr inbounds %struct.nfs4_secinfo_flavor, %struct.nfs4_secinfo_flavor* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @RPC_AUTH_GSS, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %69

43:                                               ; preds = %37
  %44 = load %struct.nfs4_secinfo_flavor*, %struct.nfs4_secinfo_flavor** %7, align 8
  %45 = getelementptr inbounds %struct.nfs4_secinfo_flavor, %struct.nfs4_secinfo_flavor* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %4, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  %50 = load %struct.nfs4_secinfo_flavor*, %struct.nfs4_secinfo_flavor** %7, align 8
  %51 = getelementptr inbounds %struct.nfs4_secinfo_flavor, %struct.nfs4_secinfo_flavor* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %4, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = call %struct.gss_api_mech* @gss_mech_get_by_OID(%struct.xdr_netobj* %4)
  store %struct.gss_api_mech* %56, %struct.gss_api_mech** %3, align 8
  %57 = load %struct.gss_api_mech*, %struct.gss_api_mech** %3, align 8
  %58 = icmp ne %struct.gss_api_mech* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %43
  br label %71

60:                                               ; preds = %43
  %61 = load %struct.gss_api_mech*, %struct.gss_api_mech** %3, align 8
  %62 = load %struct.nfs4_secinfo_flavor*, %struct.nfs4_secinfo_flavor** %7, align 8
  %63 = getelementptr inbounds %struct.nfs4_secinfo_flavor, %struct.nfs4_secinfo_flavor* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @gss_svc_to_pseudoflavor(%struct.gss_api_mech* %61, i32 %65)
  store i64 %66, i64* %6, align 8
  %67 = load %struct.gss_api_mech*, %struct.gss_api_mech** %3, align 8
  %68 = call i32 @gss_mech_put(%struct.gss_api_mech* %67)
  br label %74

69:                                               ; preds = %37
  br label %70

70:                                               ; preds = %69
  br label %71

71:                                               ; preds = %70, %59
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %9

74:                                               ; preds = %60, %33, %9
  %75 = load i64, i64* %6, align 8
  ret i64 %75
}

declare dso_local %struct.gss_api_mech* @gss_mech_get_by_OID(%struct.xdr_netobj*) #1

declare dso_local i64 @gss_svc_to_pseudoflavor(%struct.gss_api_mech*, i32) #1

declare dso_local i32 @gss_mech_put(%struct.gss_api_mech*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
