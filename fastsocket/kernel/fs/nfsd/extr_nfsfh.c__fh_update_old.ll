; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsfh.c__fh_update_old.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsfh.c__fh_update_old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.svc_export = type { i32 }
%struct.knfsd_fh = type { i64, i32, i32 }

@NFSEXP_NOSUBTREECHECK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dentry*, %struct.svc_export*, %struct.knfsd_fh*)* @_fh_update_old to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_fh_update_old(%struct.dentry* %0, %struct.svc_export* %1, %struct.knfsd_fh* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.svc_export*, align 8
  %6 = alloca %struct.knfsd_fh*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.svc_export* %1, %struct.svc_export** %5, align 8
  store %struct.knfsd_fh* %2, %struct.knfsd_fh** %6, align 8
  %7 = load %struct.dentry*, %struct.dentry** %4, align 8
  %8 = getelementptr inbounds %struct.dentry, %struct.dentry* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ino_t_to_u32(i32 %11)
  %13 = load %struct.knfsd_fh*, %struct.knfsd_fh** %6, align 8
  %14 = getelementptr inbounds %struct.knfsd_fh, %struct.knfsd_fh* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load %struct.dentry*, %struct.dentry** %4, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.knfsd_fh*, %struct.knfsd_fh** %6, align 8
  %21 = getelementptr inbounds %struct.knfsd_fh, %struct.knfsd_fh* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load %struct.dentry*, %struct.dentry** %4, align 8
  %23 = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @S_ISDIR(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %3
  %30 = load %struct.svc_export*, %struct.svc_export** %5, align 8
  %31 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @NFSEXP_NOSUBTREECHECK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29, %3
  %37 = load %struct.knfsd_fh*, %struct.knfsd_fh** %6, align 8
  %38 = getelementptr inbounds %struct.knfsd_fh, %struct.knfsd_fh* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %36, %29
  ret void
}

declare dso_local i32 @ino_t_to_u32(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
