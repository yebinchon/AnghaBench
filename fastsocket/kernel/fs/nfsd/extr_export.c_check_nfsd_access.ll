; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_export.c_check_nfsd_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_export.c_check_nfsd_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_export = type { i32, i64, %struct.exp_flavor_info* }
%struct.exp_flavor_info = type { i64 }
%struct.svc_rqst = type { i64, i64 }

@RPC_AUTH_NULL = common dso_local global i64 0, align 8
@RPC_AUTH_UNIX = common dso_local global i64 0, align 8
@nfserr_wrongsec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_nfsd_access(%struct.svc_export* %0, %struct.svc_rqst* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_export*, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.exp_flavor_info*, align 8
  %7 = alloca %struct.exp_flavor_info*, align 8
  store %struct.svc_export* %0, %struct.svc_export** %4, align 8
  store %struct.svc_rqst* %1, %struct.svc_rqst** %5, align 8
  %8 = load %struct.svc_export*, %struct.svc_export** %4, align 8
  %9 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %8, i32 0, i32 2
  %10 = load %struct.exp_flavor_info*, %struct.exp_flavor_info** %9, align 8
  %11 = load %struct.svc_export*, %struct.svc_export** %4, align 8
  %12 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.exp_flavor_info, %struct.exp_flavor_info* %10, i64 %14
  store %struct.exp_flavor_info* %15, %struct.exp_flavor_info** %7, align 8
  %16 = load %struct.svc_export*, %struct.svc_export** %4, align 8
  %17 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %20 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %66

24:                                               ; preds = %2
  %25 = load %struct.svc_export*, %struct.svc_export** %4, align 8
  %26 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %25, i32 0, i32 2
  %27 = load %struct.exp_flavor_info*, %struct.exp_flavor_info** %26, align 8
  store %struct.exp_flavor_info* %27, %struct.exp_flavor_info** %6, align 8
  br label %28

28:                                               ; preds = %42, %24
  %29 = load %struct.exp_flavor_info*, %struct.exp_flavor_info** %6, align 8
  %30 = load %struct.exp_flavor_info*, %struct.exp_flavor_info** %7, align 8
  %31 = icmp ult %struct.exp_flavor_info* %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = load %struct.exp_flavor_info*, %struct.exp_flavor_info** %6, align 8
  %34 = getelementptr inbounds %struct.exp_flavor_info, %struct.exp_flavor_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %37 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %66

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.exp_flavor_info*, %struct.exp_flavor_info** %6, align 8
  %44 = getelementptr inbounds %struct.exp_flavor_info, %struct.exp_flavor_info* %43, i32 1
  store %struct.exp_flavor_info* %44, %struct.exp_flavor_info** %6, align 8
  br label %28

45:                                               ; preds = %28
  %46 = load %struct.svc_export*, %struct.svc_export** %4, align 8
  %47 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %45
  %51 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %52 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @RPC_AUTH_NULL, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %58 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @RPC_AUTH_UNIX, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56, %50
  store i32 0, i32* %3, align 4
  br label %66

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %45
  %65 = load i32, i32* @nfserr_wrongsec, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %62, %40, %23
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
