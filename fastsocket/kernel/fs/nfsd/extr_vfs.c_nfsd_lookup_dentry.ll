; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_vfs.c_nfsd_lookup_dentry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_vfs.c_nfsd_lookup_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_fh = type { %struct.svc_export*, %struct.dentry* }
%struct.svc_export = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dentry* }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"nfsd: nfsd_lookup(fh %s, %.*s)\0A\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@NFSD_MAY_EXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfsd_lookup_dentry(%struct.svc_rqst* %0, %struct.svc_fh* %1, i8* %2, i32 %3, %struct.svc_export** %4, %struct.dentry** %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.svc_rqst*, align 8
  %9 = alloca %struct.svc_fh*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.svc_export**, align 8
  %13 = alloca %struct.dentry**, align 8
  %14 = alloca %struct.svc_export*, align 8
  %15 = alloca %struct.dentry*, align 8
  %16 = alloca %struct.dentry*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %8, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.svc_export** %4, %struct.svc_export*** %12, align 8
  store %struct.dentry** %5, %struct.dentry*** %13, align 8
  %19 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %20 = call i32 @SVCFH_fmt(%struct.svc_fh* %19)
  %21 = load i32, i32* %11, align 4
  %22 = load i8*, i8** %10, align 8
  %23 = call i32 @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21, i8* %22)
  %24 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %25 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %26 = load i32, i32* @S_IFDIR, align 4
  %27 = load i32, i32* @NFSD_MAY_EXEC, align 4
  %28 = call i64 @fh_verify(%struct.svc_rqst* %24, %struct.svc_fh* %25, i32 %26, i32 %27)
  store i64 %28, i64* %17, align 8
  %29 = load i64, i64* %17, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %6
  %32 = load i64, i64* %17, align 8
  store i64 %32, i64* %7, align 8
  br label %121

33:                                               ; preds = %6
  %34 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %35 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %34, i32 0, i32 1
  %36 = load %struct.dentry*, %struct.dentry** %35, align 8
  store %struct.dentry* %36, %struct.dentry** %15, align 8
  %37 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %38 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %37, i32 0, i32 0
  %39 = load %struct.svc_export*, %struct.svc_export** %38, align 8
  store %struct.svc_export* %39, %struct.svc_export** %14, align 8
  %40 = load %struct.svc_export*, %struct.svc_export** %14, align 8
  %41 = call i32 @exp_get(%struct.svc_export* %40)
  %42 = load i8*, i8** %10, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i64 @isdotent(i8* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %84

46:                                               ; preds = %33
  %47 = load i32, i32* %11, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load %struct.dentry*, %struct.dentry** %15, align 8
  %51 = call %struct.dentry* @dget(%struct.dentry* %50)
  store %struct.dentry* %51, %struct.dentry** %16, align 8
  br label %83

52:                                               ; preds = %46
  %53 = load %struct.dentry*, %struct.dentry** %15, align 8
  %54 = load %struct.svc_export*, %struct.svc_export** %14, align 8
  %55 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load %struct.dentry*, %struct.dentry** %56, align 8
  %58 = icmp ne %struct.dentry* %53, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load %struct.dentry*, %struct.dentry** %15, align 8
  %61 = call %struct.dentry* @dget_parent(%struct.dentry* %60)
  store %struct.dentry* %61, %struct.dentry** %16, align 8
  br label %82

62:                                               ; preds = %52
  %63 = load %struct.svc_export*, %struct.svc_export** %14, align 8
  %64 = call i32 @EX_NOHIDE(%struct.svc_export* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %62
  %67 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %68 = call i32 @nfsd_v4client(%struct.svc_rqst* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  %71 = load %struct.dentry*, %struct.dentry** %15, align 8
  %72 = call %struct.dentry* @dget(%struct.dentry* %71)
  store %struct.dentry* %72, %struct.dentry** %16, align 8
  br label %81

73:                                               ; preds = %66, %62
  %74 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %75 = load %struct.dentry*, %struct.dentry** %15, align 8
  %76 = call i32 @nfsd_lookup_parent(%struct.svc_rqst* %74, %struct.dentry* %75, %struct.svc_export** %14, %struct.dentry** %16)
  store i32 %76, i32* %18, align 4
  %77 = load i32, i32* %18, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %116

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %80, %70
  br label %82

82:                                               ; preds = %81, %59
  br label %83

83:                                               ; preds = %82, %49
  br label %111

84:                                               ; preds = %33
  %85 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %86 = call i32 @fh_lock(%struct.svc_fh* %85)
  %87 = load i8*, i8** %10, align 8
  %88 = load %struct.dentry*, %struct.dentry** %15, align 8
  %89 = load i32, i32* %11, align 4
  %90 = call %struct.dentry* @lookup_one_len(i8* %87, %struct.dentry* %88, i32 %89)
  store %struct.dentry* %90, %struct.dentry** %16, align 8
  %91 = load %struct.dentry*, %struct.dentry** %16, align 8
  %92 = call i32 @PTR_ERR(%struct.dentry* %91)
  store i32 %92, i32* %18, align 4
  %93 = load %struct.dentry*, %struct.dentry** %16, align 8
  %94 = call i64 @IS_ERR(%struct.dentry* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %84
  br label %116

97:                                               ; preds = %84
  %98 = load %struct.dentry*, %struct.dentry** %16, align 8
  %99 = load %struct.svc_export*, %struct.svc_export** %14, align 8
  %100 = call i64 @nfsd_mountpoint(%struct.dentry* %98, %struct.svc_export* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %97
  %103 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %104 = call i32 @nfsd_cross_mnt(%struct.svc_rqst* %103, %struct.dentry** %16, %struct.svc_export** %14)
  store i32 %104, i32* %18, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load %struct.dentry*, %struct.dentry** %16, align 8
  %108 = call i32 @dput(%struct.dentry* %107)
  br label %116

109:                                              ; preds = %102
  br label %110

110:                                              ; preds = %109, %97
  br label %111

111:                                              ; preds = %110, %83
  %112 = load %struct.dentry*, %struct.dentry** %16, align 8
  %113 = load %struct.dentry**, %struct.dentry*** %13, align 8
  store %struct.dentry* %112, %struct.dentry** %113, align 8
  %114 = load %struct.svc_export*, %struct.svc_export** %14, align 8
  %115 = load %struct.svc_export**, %struct.svc_export*** %12, align 8
  store %struct.svc_export* %114, %struct.svc_export** %115, align 8
  store i64 0, i64* %7, align 8
  br label %121

116:                                              ; preds = %106, %96, %79
  %117 = load %struct.svc_export*, %struct.svc_export** %14, align 8
  %118 = call i32 @exp_put(%struct.svc_export* %117)
  %119 = load i32, i32* %18, align 4
  %120 = call i64 @nfserrno(i32 %119)
  store i64 %120, i64* %7, align 8
  br label %121

121:                                              ; preds = %116, %111, %31
  %122 = load i64, i64* %7, align 8
  ret i64 %122
}

declare dso_local i32 @dprintk(i8*, i32, i32, i8*) #1

declare dso_local i32 @SVCFH_fmt(%struct.svc_fh*) #1

declare dso_local i64 @fh_verify(%struct.svc_rqst*, %struct.svc_fh*, i32, i32) #1

declare dso_local i32 @exp_get(%struct.svc_export*) #1

declare dso_local i64 @isdotent(i8*, i32) #1

declare dso_local %struct.dentry* @dget(%struct.dentry*) #1

declare dso_local %struct.dentry* @dget_parent(%struct.dentry*) #1

declare dso_local i32 @EX_NOHIDE(%struct.svc_export*) #1

declare dso_local i32 @nfsd_v4client(%struct.svc_rqst*) #1

declare dso_local i32 @nfsd_lookup_parent(%struct.svc_rqst*, %struct.dentry*, %struct.svc_export**, %struct.dentry**) #1

declare dso_local i32 @fh_lock(%struct.svc_fh*) #1

declare dso_local %struct.dentry* @lookup_one_len(i8*, %struct.dentry*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i64 @nfsd_mountpoint(%struct.dentry*, %struct.svc_export*) #1

declare dso_local i32 @nfsd_cross_mnt(%struct.svc_rqst*, %struct.dentry**, %struct.svc_export**) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @exp_put(%struct.svc_export*) #1

declare dso_local i64 @nfserrno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
