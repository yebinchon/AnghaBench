; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_vfs.c_nfsd_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_vfs.c_nfsd_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_fh = type { i32 }
%struct.svc_export = type { i32 }
%struct.dentry = type { i32 }

@nfserr_noent = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfsd_lookup(%struct.svc_rqst* %0, %struct.svc_fh* %1, i8* %2, i32 %3, %struct.svc_fh* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.svc_rqst*, align 8
  %8 = alloca %struct.svc_fh*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.svc_fh*, align 8
  %12 = alloca %struct.svc_export*, align 8
  %13 = alloca %struct.dentry*, align 8
  %14 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %7, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.svc_fh* %4, %struct.svc_fh** %11, align 8
  %15 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %16 = load %struct.svc_fh*, %struct.svc_fh** %8, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load i32, i32* %10, align 4
  %19 = call i64 @nfsd_lookup_dentry(%struct.svc_rqst* %15, %struct.svc_fh* %16, i8* %17, i32 %18, %struct.svc_export** %12, %struct.dentry** %13)
  store i64 %19, i64* %14, align 8
  %20 = load i64, i64* %14, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i64, i64* %14, align 8
  store i64 %23, i64* %6, align 8
  br label %53

24:                                               ; preds = %5
  %25 = load %struct.svc_export*, %struct.svc_export** %12, align 8
  %26 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %27 = call i64 @check_nfsd_access(%struct.svc_export* %25, %struct.svc_rqst* %26)
  store i64 %27, i64* %14, align 8
  %28 = load i64, i64* %14, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %47

31:                                               ; preds = %24
  %32 = load %struct.svc_fh*, %struct.svc_fh** %11, align 8
  %33 = load %struct.svc_export*, %struct.svc_export** %12, align 8
  %34 = load %struct.dentry*, %struct.dentry** %13, align 8
  %35 = load %struct.svc_fh*, %struct.svc_fh** %8, align 8
  %36 = call i64 @fh_compose(%struct.svc_fh* %32, %struct.svc_export* %33, %struct.dentry* %34, %struct.svc_fh* %35)
  store i64 %36, i64* %14, align 8
  %37 = load i64, i64* %14, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %31
  %40 = load %struct.dentry*, %struct.dentry** %13, align 8
  %41 = getelementptr inbounds %struct.dentry, %struct.dentry* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  %45 = load i64, i64* @nfserr_noent, align 8
  store i64 %45, i64* %14, align 8
  br label %46

46:                                               ; preds = %44, %39, %31
  br label %47

47:                                               ; preds = %46, %30
  %48 = load %struct.dentry*, %struct.dentry** %13, align 8
  %49 = call i32 @dput(%struct.dentry* %48)
  %50 = load %struct.svc_export*, %struct.svc_export** %12, align 8
  %51 = call i32 @exp_put(%struct.svc_export* %50)
  %52 = load i64, i64* %14, align 8
  store i64 %52, i64* %6, align 8
  br label %53

53:                                               ; preds = %47, %22
  %54 = load i64, i64* %6, align 8
  ret i64 %54
}

declare dso_local i64 @nfsd_lookup_dentry(%struct.svc_rqst*, %struct.svc_fh*, i8*, i32, %struct.svc_export**, %struct.dentry**) #1

declare dso_local i64 @check_nfsd_access(%struct.svc_export*, %struct.svc_rqst*) #1

declare dso_local i64 @fh_compose(%struct.svc_fh*, %struct.svc_export*, %struct.dentry*, %struct.svc_fh*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @exp_put(%struct.svc_export*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
