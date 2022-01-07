; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsfh.c_nfsd_mode_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsfh.c_nfsd_mode_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }

@S_IFMT = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@nfserr_symlink = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@nfserr_notdir = common dso_local global i32 0, align 4
@nfserr_isdir = common dso_local global i32 0, align 4
@nfserr_inval = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, i32, i32)* @nfsd_mode_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd_mode_check(%struct.svc_rqst* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %45

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @S_IFMT, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %45

16:                                               ; preds = %10
  %17 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %18 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 4
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @S_IFMT, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @S_IFLNK, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @nfserr_symlink, align 4
  store i32 %28, i32* %4, align 4
  br label %78

29:                                               ; preds = %21, %16
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @S_IFDIR, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @nfserr_notdir, align 4
  store i32 %34, i32* %4, align 4
  br label %78

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @S_IFMT, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @S_IFDIR, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @nfserr_isdir, align 4
  store i32 %42, i32* %4, align 4
  br label %78

43:                                               ; preds = %35
  %44 = load i32, i32* @nfserr_inval, align 4
  store i32 %44, i32* %4, align 4
  br label %78

45:                                               ; preds = %10, %3
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %77

48:                                               ; preds = %45
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @S_IFMT, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* %7, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %77

55:                                               ; preds = %48
  %56 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %57 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 4
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @S_IFMT, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* @S_IFLNK, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* @nfserr_symlink, align 4
  store i32 %67, i32* %4, align 4
  br label %78

68:                                               ; preds = %60, %55
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @S_IFDIR, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* @nfserr_isdir, align 4
  store i32 %74, i32* %4, align 4
  br label %78

75:                                               ; preds = %68
  %76 = load i32, i32* @nfserr_notdir, align 4
  store i32 %76, i32* %4, align 4
  br label %78

77:                                               ; preds = %48, %45
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %75, %73, %66, %43, %41, %33, %27
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
