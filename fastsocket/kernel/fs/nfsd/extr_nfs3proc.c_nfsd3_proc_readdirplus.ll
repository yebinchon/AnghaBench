; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3proc.c_nfsd3_proc_readdirplus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3proc.c_nfsd3_proc_readdirplus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32, i32* }
%struct.nfsd3_readdirargs = type { i32, i32, i32, i64, i32 }
%struct.nfsd3_readdirres = type { i32, i32, i8**, i8**, i64, i32, %struct.TYPE_2__, i32, %struct.svc_rqst* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"nfsd: READDIR+(3) %s %d bytes at %d\0A\00", align 1
@nfs_ok = common dso_local global i32 0, align 4
@nfs3svc_encode_entry_plus = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirres*)* @nfsd3_proc_readdirplus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd3_proc_readdirplus(%struct.svc_rqst* %0, %struct.nfsd3_readdirargs* %1, %struct.nfsd3_readdirres* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd3_readdirargs*, align 8
  %7 = alloca %struct.nfsd3_readdirres*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd3_readdirargs* %1, %struct.nfsd3_readdirargs** %6, align 8
  store %struct.nfsd3_readdirres* %2, %struct.nfsd3_readdirres** %7, align 8
  store i32 0, i32* %9, align 4
  store i64 0, i64* %12, align 8
  %13 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %6, align 8
  %14 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %13, i32 0, i32 4
  %15 = call i32 @SVCFH_fmt(i32* %14)
  %16 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %6, align 8
  %17 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %6, align 8
  %20 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dprintk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i32 %21)
  %23 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %6, align 8
  %24 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = ashr i32 %25, 2
  %27 = sub nsw i32 %26, 2
  %28 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %7, align 8
  %29 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %7, align 8
  %31 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %30, i32 0, i32 7
  %32 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %6, align 8
  %33 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %32, i32 0, i32 4
  %34 = call i32 @fh_copy(i32* %31, i32* %33)
  %35 = load i32, i32* @nfs_ok, align 4
  %36 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %7, align 8
  %37 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %36, i32 0, i32 6
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  %39 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %6, align 8
  %40 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %7, align 8
  %43 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %42, i32 0, i32 4
  store i64 %41, i64* %43, align 8
  %44 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %7, align 8
  %45 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %7, align 8
  %48 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %50 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %7, align 8
  %51 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %50, i32 0, i32 8
  store %struct.svc_rqst* %49, %struct.svc_rqst** %51, align 8
  %52 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %6, align 8
  %53 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %10, align 4
  %55 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %56 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %7, align 8
  %57 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %56, i32 0, i32 7
  %58 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %7, align 8
  %59 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %58, i32 0, i32 6
  %60 = load i32, i32* @nfs3svc_encode_entry_plus, align 4
  %61 = call i32 @nfsd_readdir(%struct.svc_rqst* %55, i32* %57, i32* %10, %struct.TYPE_2__* %59, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %7, align 8
  %63 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %6, align 8
  %66 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @memcpy(i32 %64, i32 %67, i32 8)
  store i32 1, i32* %11, align 4
  br label %69

69:                                               ; preds = %113, %3
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %72 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %116

75:                                               ; preds = %69
  %76 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %77 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @page_address(i32 %82)
  store i64 %83, i64* %12, align 8
  %84 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %7, align 8
  %85 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %12, align 8
  %88 = icmp sge i64 %86, %87
  br i1 %88, label %89, label %107

89:                                               ; preds = %75
  %90 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %7, align 8
  %91 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %12, align 8
  %94 = load i64, i64* @PAGE_SIZE, align 8
  %95 = add nsw i64 %93, %94
  %96 = icmp slt i64 %92, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %89
  %98 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %7, align 8
  %99 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %12, align 8
  %102 = sub nsw i64 %100, %101
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %102
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %9, align 4
  br label %116

107:                                              ; preds = %89, %75
  %108 = load i64, i64* @PAGE_SIZE, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %110, %108
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %9, align 4
  br label %113

113:                                              ; preds = %107
  %114 = load i32, i32* %11, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %11, align 4
  br label %69

116:                                              ; preds = %97, %69
  %117 = load i32, i32* %9, align 4
  %118 = ashr i32 %117, 2
  %119 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %7, align 8
  %120 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %7, align 8
  %122 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %121, i32 0, i32 2
  %123 = load i8**, i8*** %122, align 8
  %124 = icmp ne i8** %123, null
  br i1 %124, label %125, label %152

125:                                              ; preds = %116
  %126 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %7, align 8
  %127 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %126, i32 0, i32 3
  %128 = load i8**, i8*** %127, align 8
  %129 = call i64 @unlikely(i8** %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %145

131:                                              ; preds = %125
  %132 = load i32, i32* %10, align 4
  %133 = ashr i32 %132, 32
  %134 = call i8* @htonl(i32 %133)
  %135 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %7, align 8
  %136 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %135, i32 0, i32 2
  %137 = load i8**, i8*** %136, align 8
  store i8* %134, i8** %137, align 8
  %138 = load i32, i32* %10, align 4
  %139 = call i8* @htonl(i32 %138)
  %140 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %7, align 8
  %141 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %140, i32 0, i32 3
  %142 = load i8**, i8*** %141, align 8
  store i8* %139, i8** %142, align 8
  %143 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %7, align 8
  %144 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %143, i32 0, i32 3
  store i8** null, i8*** %144, align 8
  br label %151

145:                                              ; preds = %125
  %146 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %7, align 8
  %147 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %146, i32 0, i32 2
  %148 = load i8**, i8*** %147, align 8
  %149 = load i32, i32* %10, align 4
  %150 = call i32 @xdr_encode_hyper(i8** %148, i32 %149)
  br label %151

151:                                              ; preds = %145, %131
  br label %152

152:                                              ; preds = %151, %116
  %153 = load i32, i32* %8, align 4
  %154 = call i32 @RETURN_STATUS(i32 %153)
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local i32 @dprintk(i8*, i32, i32, i32) #1

declare dso_local i32 @SVCFH_fmt(i32*) #1

declare dso_local i32 @fh_copy(i32*, i32*) #1

declare dso_local i32 @nfsd_readdir(%struct.svc_rqst*, i32*, i32*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @page_address(i32) #1

declare dso_local i64 @unlikely(i8**) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @xdr_encode_hyper(i8**, i32) #1

declare dso_local i32 @RETURN_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
