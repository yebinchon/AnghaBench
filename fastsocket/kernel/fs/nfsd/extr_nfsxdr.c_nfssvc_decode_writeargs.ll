; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsxdr.c_nfssvc_decode_writeargs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsxdr.c_nfssvc_decode_writeargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.TYPE_6__*, i32*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i8* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.nfsd_writeargs = type { i32, i32, i8*, i32 }

@NFSSVC_MAXBLKSIZE_V2 = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfssvc_decode_writeargs(%struct.svc_rqst* %0, i32* %1, %struct.nfsd_writeargs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nfsd_writeargs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.nfsd_writeargs* %2, %struct.nfsd_writeargs** %7, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load %struct.nfsd_writeargs*, %struct.nfsd_writeargs** %7, align 8
  %14 = getelementptr inbounds %struct.nfsd_writeargs, %struct.nfsd_writeargs* %13, i32 0, i32 3
  %15 = call i32* @decode_fh(i32* %12, i32* %14)
  store i32* %15, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %156

18:                                               ; preds = %3
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %6, align 8
  %23 = load i32, i32* %21, align 4
  %24 = call i8* @ntohl(i32 %23)
  %25 = load %struct.nfsd_writeargs*, %struct.nfsd_writeargs** %7, align 8
  %26 = getelementptr inbounds %struct.nfsd_writeargs, %struct.nfsd_writeargs* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %6, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %6, align 8
  %31 = load i32, i32* %29, align 4
  %32 = call i8* @ntohl(i32 %31)
  %33 = ptrtoint i8* %32 to i32
  %34 = load %struct.nfsd_writeargs*, %struct.nfsd_writeargs** %7, align 8
  %35 = getelementptr inbounds %struct.nfsd_writeargs, %struct.nfsd_writeargs* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  store i32 %33, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @NFSSVC_MAXBLKSIZE_V2, align 4
  %38 = icmp ugt i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %156

40:                                               ; preds = %18
  %41 = load i32*, i32** %6, align 8
  %42 = bitcast i32* %41 to i8*
  %43 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %44 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = ptrtoint i8* %42 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %9, align 4
  %54 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %55 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %62 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add i32 %60, %64
  %66 = load i32, i32* %9, align 4
  %67 = sub i32 %65, %66
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @XDR_QUADLEN(i32 %69)
  %71 = mul nsw i32 %70, 4
  %72 = icmp ult i32 %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %156

74:                                               ; preds = %40
  %75 = load i32*, i32** %6, align 8
  %76 = bitcast i32* %75 to i8*
  %77 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %78 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  store i8* %76, i8** %81, align 8
  %82 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %83 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sub i32 %88, %89
  %91 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %92 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i64 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  store i32 %90, i32* %95, align 8
  store i32 0, i32* %11, align 4
  br label %96

96:                                               ; preds = %107, %74
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %99 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %98, i32 0, i32 0
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp ugt i32 %97, %105
  br i1 %106, label %107, label %143

107:                                              ; preds = %96
  %108 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %109 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %108, i32 0, i32 0
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sub i32 %116, %115
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %11, align 4
  %120 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %121 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = call i8* @page_address(i32 %126)
  %128 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %129 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %128, i32 0, i32 0
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  store i8* %127, i8** %134, align 8
  %135 = load i32, i32* @PAGE_SIZE, align 4
  %136 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %137 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %136, i32 0, i32 0
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  store i32 %135, i32* %142, align 8
  br label %96

143:                                              ; preds = %96
  %144 = load i32, i32* %8, align 4
  %145 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %146 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %145, i32 0, i32 0
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = load i32, i32* %11, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  store i32 %144, i32* %151, align 8
  %152 = load i32, i32* %11, align 4
  %153 = add nsw i32 %152, 1
  %154 = load %struct.nfsd_writeargs*, %struct.nfsd_writeargs** %7, align 8
  %155 = getelementptr inbounds %struct.nfsd_writeargs, %struct.nfsd_writeargs* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 4
  store i32 1, i32* %4, align 4
  br label %156

156:                                              ; preds = %143, %73, %39, %17
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local i32* @decode_fh(i32*, i32*) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @XDR_QUADLEN(i32) #1

declare dso_local i8* @page_address(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
