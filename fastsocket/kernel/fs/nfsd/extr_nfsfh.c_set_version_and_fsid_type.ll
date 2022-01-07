; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsfh.c_set_version_and_fsid_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsfh.c_set_version_and_fsid_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_export = type { i32, i64 }
%struct.svc_fh = type { i32, %struct.TYPE_3__, %struct.svc_export* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@FSID_DEV = common dso_local global i32 0, align 4
@NFSEXP_FSID = common dso_local global i32 0, align 4
@FSID_NUM = common dso_local global i32 0, align 4
@FSID_UUID16 = common dso_local global i32 0, align 4
@FSID_UUID16_INUM = common dso_local global i32 0, align 4
@FSID_UUID8 = common dso_local global i32 0, align 4
@FSID_UUID4_INUM = common dso_local global i32 0, align 4
@FSID_ENCODE_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svc_fh*, %struct.svc_export*, %struct.svc_fh*)* @set_version_and_fsid_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_version_and_fsid_type(%struct.svc_fh* %0, %struct.svc_export* %1, %struct.svc_fh* %2) #0 {
  %4 = alloca %struct.svc_fh*, align 8
  %5 = alloca %struct.svc_export*, align 8
  %6 = alloca %struct.svc_fh*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.svc_fh* %0, %struct.svc_fh** %4, align 8
  store %struct.svc_export* %1, %struct.svc_export** %5, align 8
  store %struct.svc_fh* %2, %struct.svc_fh** %6, align 8
  br label %9

9:                                                ; preds = %37, %31, %3
  store i32 1, i32* %7, align 4
  %10 = load %struct.svc_fh*, %struct.svc_fh** %6, align 8
  %11 = icmp ne %struct.svc_fh* %10, null
  br i1 %11, label %12, label %39

12:                                               ; preds = %9
  %13 = load %struct.svc_fh*, %struct.svc_fh** %6, align 8
  %14 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %13, i32 0, i32 2
  %15 = load %struct.svc_export*, %struct.svc_export** %14, align 8
  %16 = load %struct.svc_export*, %struct.svc_export** %5, align 8
  %17 = icmp eq %struct.svc_export* %15, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %12
  %19 = load %struct.svc_fh*, %struct.svc_fh** %6, align 8
  %20 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load %struct.svc_fh*, %struct.svc_fh** %6, align 8
  %24 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  store %struct.svc_fh* null, %struct.svc_fh** %6, align 8
  %27 = load i32, i32* %7, align 4
  switch i32 %27, label %31 [
    i32 202, label %28
    i32 1, label %30
  ]

28:                                               ; preds = %18
  %29 = load i32, i32* @FSID_DEV, align 4
  store i32 %29, i32* %8, align 4
  br label %32

30:                                               ; preds = %18
  br label %32

31:                                               ; preds = %18
  br label %9

32:                                               ; preds = %30, %28
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.svc_export*, %struct.svc_export** %5, align 8
  %35 = call i32 @fsid_type_ok_for_exp(i32 %33, %struct.svc_export* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %9

38:                                               ; preds = %32
  br label %91

39:                                               ; preds = %12, %9
  %40 = load %struct.svc_export*, %struct.svc_export** %5, align 8
  %41 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @NFSEXP_FSID, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* @FSID_NUM, align 4
  store i32 %47, i32* %8, align 4
  br label %90

48:                                               ; preds = %39
  %49 = load %struct.svc_export*, %struct.svc_export** %5, align 8
  %50 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %77

53:                                               ; preds = %48
  %54 = load %struct.svc_fh*, %struct.svc_fh** %4, align 8
  %55 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp sge i32 %56, 64
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = load %struct.svc_export*, %struct.svc_export** %5, align 8
  %60 = call i64 @is_root_export(%struct.svc_export* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* @FSID_UUID16, align 4
  store i32 %63, i32* %8, align 4
  br label %66

64:                                               ; preds = %58
  %65 = load i32, i32* @FSID_UUID16_INUM, align 4
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %64, %62
  br label %76

67:                                               ; preds = %53
  %68 = load %struct.svc_export*, %struct.svc_export** %5, align 8
  %69 = call i64 @is_root_export(%struct.svc_export* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* @FSID_UUID8, align 4
  store i32 %72, i32* %8, align 4
  br label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @FSID_UUID4_INUM, align 4
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %73, %71
  br label %76

76:                                               ; preds = %75, %66
  br label %89

77:                                               ; preds = %48
  %78 = load %struct.svc_export*, %struct.svc_export** %5, align 8
  %79 = call %struct.TYPE_4__* @exp_sb(%struct.svc_export* %78)
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @old_valid_dev(i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %77
  %85 = load i32, i32* @FSID_ENCODE_DEV, align 4
  store i32 %85, i32* %8, align 4
  br label %88

86:                                               ; preds = %77
  %87 = load i32, i32* @FSID_DEV, align 4
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %86, %84
  br label %89

89:                                               ; preds = %88, %76
  br label %90

90:                                               ; preds = %89, %46
  br label %91

91:                                               ; preds = %90, %38
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.svc_fh*, %struct.svc_fh** %4, align 8
  %94 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %91
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.svc_fh*, %struct.svc_fh** %4, align 8
  %101 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  store i32 %99, i32* %102, align 4
  br label %103

103:                                              ; preds = %98, %91
  ret void
}

declare dso_local i32 @fsid_type_ok_for_exp(i32, %struct.svc_export*) #1

declare dso_local i64 @is_root_export(%struct.svc_export*) #1

declare dso_local i32 @old_valid_dev(i32) #1

declare dso_local %struct.TYPE_4__* @exp_sb(%struct.svc_export*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
