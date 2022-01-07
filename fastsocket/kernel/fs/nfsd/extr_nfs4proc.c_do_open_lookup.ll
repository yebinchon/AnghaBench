; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4proc.c_do_open_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4proc.c_do_open_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_fh = type { i32 }
%struct.nfsd4_open = type { i32*, %struct.TYPE_8__*, i32, i32*, %struct.TYPE_6__, i32, i32, %struct.TYPE_5__, i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }

@NFS4_FHSIZE = common dso_local global i32 0, align 4
@NFS4_CREATE_EXCLUSIVE = common dso_local global i32 0, align 4
@FATTR4_WORD1_TIME_ACCESS = common dso_local global i32 0, align 4
@FATTR4_WORD1_TIME_MODIFY = common dso_local global i32 0, align 4
@NFSD_MAY_NOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*, %struct.svc_fh*, %struct.nfsd4_open*)* @do_open_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @do_open_lookup(%struct.svc_rqst* %0, %struct.svc_fh* %1, %struct.nfsd4_open* %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.svc_fh*, align 8
  %6 = alloca %struct.nfsd4_open*, align 8
  %7 = alloca %struct.svc_fh, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %5, align 8
  store %struct.nfsd4_open* %2, %struct.nfsd4_open** %6, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @NFS4_FHSIZE, align 4
  %11 = call i32 @fh_init(%struct.svc_fh* %7, i32 %10)
  %12 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %13 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %12, i32 0, i32 6
  store i32 0, i32* %13, align 4
  %14 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %15 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %14, i32 0, i32 9
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %59

18:                                               ; preds = %3
  %19 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %20 = load %struct.svc_fh*, %struct.svc_fh** %5, align 8
  %21 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %22 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %26 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %30 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %29, i32 0, i32 8
  %31 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %32 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %35 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %34, i32 0, i32 7
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i32*
  %39 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %40 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %39, i32 0, i32 6
  %41 = call i64 @nfsd_create_v3(%struct.svc_rqst* %19, %struct.svc_fh* %20, i32 %24, i32 %28, i32* %30, %struct.svc_fh* %7, i32 %33, i32* %38, i32* %40, i32* %9)
  store i64 %41, i64* %8, align 8
  %42 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %43 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @NFS4_CREATE_EXCLUSIVE, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %18
  %48 = load i64, i64* %8, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load i32, i32* @FATTR4_WORD1_TIME_ACCESS, align 4
  %52 = load i32, i32* @FATTR4_WORD1_TIME_MODIFY, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %55 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  store i32 %53, i32* %57, align 4
  br label %58

58:                                               ; preds = %50, %47, %18
  br label %73

59:                                               ; preds = %3
  %60 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %61 = load %struct.svc_fh*, %struct.svc_fh** %5, align 8
  %62 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %63 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %67 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @nfsd_lookup(%struct.svc_rqst* %60, %struct.svc_fh* %61, i32 %65, i32 %69, %struct.svc_fh* %7)
  store i64 %70, i64* %8, align 8
  %71 = load %struct.svc_fh*, %struct.svc_fh** %5, align 8
  %72 = call i32 @fh_unlock(%struct.svc_fh* %71)
  br label %73

73:                                               ; preds = %59, %58
  %74 = load i64, i64* %8, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %123

77:                                               ; preds = %73
  %78 = call i64 @nfsd_check_obj_isreg(%struct.svc_fh* %7)
  store i64 %78, i64* %8, align 8
  %79 = load i64, i64* %8, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %123

82:                                               ; preds = %77
  %83 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %84 = call i64 @is_create_with_attrs(%struct.nfsd4_open* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %82
  %87 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %88 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %87, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %100

91:                                               ; preds = %86
  %92 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %93 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %94 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %97 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @do_set_nfs4_acl(%struct.svc_rqst* %92, %struct.svc_fh* %7, i32* %95, i32* %98)
  br label %100

100:                                              ; preds = %91, %86, %82
  %101 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %102 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %101, i32 0, i32 2
  %103 = load %struct.svc_fh*, %struct.svc_fh** %5, align 8
  %104 = call i32 @set_change_info(i32* %102, %struct.svc_fh* %103)
  %105 = load %struct.svc_fh*, %struct.svc_fh** %5, align 8
  %106 = call i32 @fh_dup2(%struct.svc_fh* %105, %struct.svc_fh* %7)
  %107 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %108 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %107, i32 0, i32 1
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %7, i32 0, i32 0
  %113 = call i32 @fh_copy_shallow(i32* %111, i32* %112)
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %122, label %116

116:                                              ; preds = %100
  %117 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %118 = load %struct.svc_fh*, %struct.svc_fh** %5, align 8
  %119 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %120 = load i32, i32* @NFSD_MAY_NOP, align 4
  %121 = call i64 @do_open_permission(%struct.svc_rqst* %117, %struct.svc_fh* %118, %struct.nfsd4_open* %119, i32 %120)
  store i64 %121, i64* %8, align 8
  br label %122

122:                                              ; preds = %116, %100
  br label %123

123:                                              ; preds = %122, %81, %76
  %124 = call i32 @fh_put(%struct.svc_fh* %7)
  %125 = load i64, i64* %8, align 8
  ret i64 %125
}

declare dso_local i32 @fh_init(%struct.svc_fh*, i32) #1

declare dso_local i64 @nfsd_create_v3(%struct.svc_rqst*, %struct.svc_fh*, i32, i32, i32*, %struct.svc_fh*, i32, i32*, i32*, i32*) #1

declare dso_local i64 @nfsd_lookup(%struct.svc_rqst*, %struct.svc_fh*, i32, i32, %struct.svc_fh*) #1

declare dso_local i32 @fh_unlock(%struct.svc_fh*) #1

declare dso_local i64 @nfsd_check_obj_isreg(%struct.svc_fh*) #1

declare dso_local i64 @is_create_with_attrs(%struct.nfsd4_open*) #1

declare dso_local i32 @do_set_nfs4_acl(%struct.svc_rqst*, %struct.svc_fh*, i32*, i32*) #1

declare dso_local i32 @set_change_info(i32*, %struct.svc_fh*) #1

declare dso_local i32 @fh_dup2(%struct.svc_fh*, %struct.svc_fh*) #1

declare dso_local i32 @fh_copy_shallow(i32*, i32*) #1

declare dso_local i64 @do_open_permission(%struct.svc_rqst*, %struct.svc_fh*, %struct.nfsd4_open*, i32) #1

declare dso_local i32 @fh_put(%struct.svc_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
