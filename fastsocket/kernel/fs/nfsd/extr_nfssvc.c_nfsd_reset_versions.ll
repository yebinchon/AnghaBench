; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfssvc.c_nfsd_reset_versions.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfssvc.c_nfsd_reset_versions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64* }
%struct.TYPE_4__ = type { i32* }

@NFSD_MINVERS = common dso_local global i32 0, align 4
@NFSD_NRVERS = common dso_local global i32 0, align 4
@nfsd_program = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@nfsd_version = common dso_local global i64* null, align 8
@NFSD_ACL_MINVERS = common dso_local global i32 0, align 4
@NFSD_ACL_NRVERS = common dso_local global i32 0, align 4
@nfsd_acl_program = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@nfsd_acl_version = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfsd_reset_versions() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = load i32, i32* @NFSD_MINVERS, align 4
  store i32 %3, i32* %2, align 4
  br label %4

4:                                                ; preds = %17, %0
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @NFSD_NRVERS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = load i64*, i64** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @nfsd_program, i32 0, i32 0), align 8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i64, i64* %9, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  store i32 1, i32* %1, align 4
  br label %16

16:                                               ; preds = %15, %8
  br label %17

17:                                               ; preds = %16
  %18 = load i32, i32* %2, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %2, align 4
  br label %4

20:                                               ; preds = %4
  %21 = load i32, i32* %1, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %43, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* @NFSD_MINVERS, align 4
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %39, %23
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @NFSD_NRVERS, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = load i64*, i64** @nfsd_version, align 8
  %31 = load i32, i32* %2, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i64*, i64** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @nfsd_program, i32 0, i32 0), align 8
  %36 = load i32, i32* %2, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  store i64 %34, i64* %38, align 8
  br label %39

39:                                               ; preds = %29
  %40 = load i32, i32* %2, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %2, align 4
  br label %25

42:                                               ; preds = %25
  br label %43

43:                                               ; preds = %42, %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
