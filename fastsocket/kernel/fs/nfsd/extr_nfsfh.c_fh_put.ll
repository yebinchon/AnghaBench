; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsfh.c_fh_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsfh.c_fh_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_fh = type { %struct.svc_export*, i64, i64, %struct.dentry* }
%struct.svc_export = type { i32 }
%struct.dentry = type { i32 }

@svc_export_cache = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fh_put(%struct.svc_fh* %0) #0 {
  %2 = alloca %struct.svc_fh*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.svc_export*, align 8
  store %struct.svc_fh* %0, %struct.svc_fh** %2, align 8
  %5 = load %struct.svc_fh*, %struct.svc_fh** %2, align 8
  %6 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %5, i32 0, i32 3
  %7 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %7, %struct.dentry** %3, align 8
  %8 = load %struct.svc_fh*, %struct.svc_fh** %2, align 8
  %9 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %8, i32 0, i32 0
  %10 = load %struct.svc_export*, %struct.svc_export** %9, align 8
  store %struct.svc_export* %10, %struct.svc_export** %4, align 8
  %11 = load %struct.dentry*, %struct.dentry** %3, align 8
  %12 = icmp ne %struct.dentry* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.svc_fh*, %struct.svc_fh** %2, align 8
  %15 = call i32 @fh_unlock(%struct.svc_fh* %14)
  %16 = load %struct.svc_fh*, %struct.svc_fh** %2, align 8
  %17 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %16, i32 0, i32 3
  store %struct.dentry* null, %struct.dentry** %17, align 8
  %18 = load %struct.dentry*, %struct.dentry** %3, align 8
  %19 = call i32 @dput(%struct.dentry* %18)
  br label %20

20:                                               ; preds = %13, %1
  %21 = load %struct.svc_fh*, %struct.svc_fh** %2, align 8
  %22 = call i32 @fh_drop_write(%struct.svc_fh* %21)
  %23 = load %struct.svc_export*, %struct.svc_export** %4, align 8
  %24 = icmp ne %struct.svc_export* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.svc_export*, %struct.svc_export** %4, align 8
  %27 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %26, i32 0, i32 0
  %28 = call i32 @cache_put(i32* %27, i32* @svc_export_cache)
  %29 = load %struct.svc_fh*, %struct.svc_fh** %2, align 8
  %30 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %29, i32 0, i32 0
  store %struct.svc_export* null, %struct.svc_export** %30, align 8
  br label %31

31:                                               ; preds = %25, %20
  ret void
}

declare dso_local i32 @fh_unlock(%struct.svc_fh*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @fh_drop_write(%struct.svc_fh*) #1

declare dso_local i32 @cache_put(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
