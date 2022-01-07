; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_auth.c_nfsexp_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_auth.c_nfsexp_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i64 }
%struct.svc_export = type { i32, i32, %struct.exp_flavor_info* }
%struct.exp_flavor_info = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsexp_flags(%struct.svc_rqst* %0, %struct.svc_export* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.svc_export*, align 8
  %6 = alloca %struct.exp_flavor_info*, align 8
  %7 = alloca %struct.exp_flavor_info*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.svc_export* %1, %struct.svc_export** %5, align 8
  %8 = load %struct.svc_export*, %struct.svc_export** %5, align 8
  %9 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %8, i32 0, i32 2
  %10 = load %struct.exp_flavor_info*, %struct.exp_flavor_info** %9, align 8
  %11 = load %struct.svc_export*, %struct.svc_export** %5, align 8
  %12 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.exp_flavor_info, %struct.exp_flavor_info* %10, i64 %14
  store %struct.exp_flavor_info* %15, %struct.exp_flavor_info** %7, align 8
  %16 = load %struct.svc_export*, %struct.svc_export** %5, align 8
  %17 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %16, i32 0, i32 2
  %18 = load %struct.exp_flavor_info*, %struct.exp_flavor_info** %17, align 8
  store %struct.exp_flavor_info* %18, %struct.exp_flavor_info** %6, align 8
  br label %19

19:                                               ; preds = %36, %2
  %20 = load %struct.exp_flavor_info*, %struct.exp_flavor_info** %6, align 8
  %21 = load %struct.exp_flavor_info*, %struct.exp_flavor_info** %7, align 8
  %22 = icmp ult %struct.exp_flavor_info* %20, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %19
  %24 = load %struct.exp_flavor_info*, %struct.exp_flavor_info** %6, align 8
  %25 = getelementptr inbounds %struct.exp_flavor_info, %struct.exp_flavor_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %28 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load %struct.exp_flavor_info*, %struct.exp_flavor_info** %6, align 8
  %33 = getelementptr inbounds %struct.exp_flavor_info, %struct.exp_flavor_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %3, align 4
  br label %43

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.exp_flavor_info*, %struct.exp_flavor_info** %6, align 8
  %38 = getelementptr inbounds %struct.exp_flavor_info, %struct.exp_flavor_info* %37, i32 1
  store %struct.exp_flavor_info* %38, %struct.exp_flavor_info** %6, align 8
  br label %19

39:                                               ; preds = %19
  %40 = load %struct.svc_export*, %struct.svc_export** %5, align 8
  %41 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %31
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
