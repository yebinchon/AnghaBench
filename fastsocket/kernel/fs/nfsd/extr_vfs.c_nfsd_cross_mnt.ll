; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_vfs.c_nfsd_cross_mnt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_vfs.c_nfsd_cross_mnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.dentry = type { i32 }
%struct.svc_export = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.path = type { %struct.dentry*, i32 }

@ENOENT = common dso_local global i32 0, align 4
@NFSEXP_V4ROOT = common dso_local global i32 0, align 4
@NFSEXP_CROSSMOUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd_cross_mnt(%struct.svc_rqst* %0, %struct.dentry** %1, %struct.svc_export** %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.dentry**, align 8
  %6 = alloca %struct.svc_export**, align 8
  %7 = alloca %struct.svc_export*, align 8
  %8 = alloca %struct.svc_export*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.path, align 8
  %11 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.dentry** %1, %struct.dentry*** %5, align 8
  store %struct.svc_export** %2, %struct.svc_export*** %6, align 8
  %12 = load %struct.svc_export**, %struct.svc_export*** %6, align 8
  %13 = load %struct.svc_export*, %struct.svc_export** %12, align 8
  store %struct.svc_export* %13, %struct.svc_export** %7, align 8
  store %struct.svc_export* null, %struct.svc_export** %8, align 8
  %14 = load %struct.dentry**, %struct.dentry*** %5, align 8
  %15 = load %struct.dentry*, %struct.dentry** %14, align 8
  store %struct.dentry* %15, %struct.dentry** %9, align 8
  %16 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 0
  %17 = load %struct.dentry*, %struct.dentry** %9, align 8
  %18 = call %struct.dentry* @dget(%struct.dentry* %17)
  store %struct.dentry* %18, %struct.dentry** %16, align 8
  %19 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 1
  %20 = load %struct.svc_export*, %struct.svc_export** %7, align 8
  %21 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @mntget(i32 %23)
  store i32 %24, i32* %19, align 8
  store i32 0, i32* %11, align 4
  %25 = call i32 @__follow_down(%struct.path* %10, i32 0)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  br label %80

29:                                               ; preds = %3
  %30 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %31 = call %struct.svc_export* @rqst_exp_get_by_name(%struct.svc_rqst* %30, %struct.path* %10)
  store %struct.svc_export* %31, %struct.svc_export** %8, align 8
  %32 = load %struct.svc_export*, %struct.svc_export** %8, align 8
  %33 = call i64 @IS_ERR(%struct.svc_export* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %29
  %36 = load %struct.svc_export*, %struct.svc_export** %8, align 8
  %37 = call i32 @PTR_ERR(%struct.svc_export* %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @ENOENT, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %35
  %43 = load %struct.svc_export*, %struct.svc_export** %7, align 8
  %44 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @NFSEXP_V4ROOT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  store i32 0, i32* %11, align 4
  br label %50

50:                                               ; preds = %49, %42, %35
  %51 = call i32 @path_put(%struct.path* %10)
  br label %80

52:                                               ; preds = %29
  %53 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %54 = call i64 @nfsd_v4client(%struct.svc_rqst* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %52
  %57 = load %struct.svc_export*, %struct.svc_export** %7, align 8
  %58 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @NFSEXP_CROSSMOUNT, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %56
  %64 = load %struct.svc_export*, %struct.svc_export** %8, align 8
  %65 = call i64 @EX_NOHIDE(%struct.svc_export* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %63, %56, %52
  %68 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 0
  %69 = load %struct.dentry*, %struct.dentry** %68, align 8
  %70 = load %struct.dentry**, %struct.dentry*** %5, align 8
  store %struct.dentry* %69, %struct.dentry** %70, align 8
  %71 = load %struct.dentry*, %struct.dentry** %9, align 8
  %72 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 0
  store %struct.dentry* %71, %struct.dentry** %72, align 8
  %73 = load %struct.svc_export*, %struct.svc_export** %8, align 8
  %74 = load %struct.svc_export**, %struct.svc_export*** %6, align 8
  store %struct.svc_export* %73, %struct.svc_export** %74, align 8
  %75 = load %struct.svc_export*, %struct.svc_export** %7, align 8
  store %struct.svc_export* %75, %struct.svc_export** %8, align 8
  br label %76

76:                                               ; preds = %67, %63
  %77 = call i32 @path_put(%struct.path* %10)
  %78 = load %struct.svc_export*, %struct.svc_export** %8, align 8
  %79 = call i32 @exp_put(%struct.svc_export* %78)
  br label %80

80:                                               ; preds = %76, %50, %28
  %81 = load i32, i32* %11, align 4
  ret i32 %81
}

declare dso_local %struct.dentry* @dget(%struct.dentry*) #1

declare dso_local i32 @mntget(i32) #1

declare dso_local i32 @__follow_down(%struct.path*, i32) #1

declare dso_local %struct.svc_export* @rqst_exp_get_by_name(%struct.svc_rqst*, %struct.path*) #1

declare dso_local i64 @IS_ERR(%struct.svc_export*) #1

declare dso_local i32 @PTR_ERR(%struct.svc_export*) #1

declare dso_local i32 @path_put(%struct.path*) #1

declare dso_local i64 @nfsd_v4client(%struct.svc_rqst*) #1

declare dso_local i64 @EX_NOHIDE(%struct.svc_export*) #1

declare dso_local i32 @exp_put(%struct.svc_export*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
