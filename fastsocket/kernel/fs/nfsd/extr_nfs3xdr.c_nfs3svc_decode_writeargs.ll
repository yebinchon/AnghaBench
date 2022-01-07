; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3xdr.c_nfs3svc_decode_writeargs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3xdr.c_nfs3svc_decode_writeargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.TYPE_6__*, i32*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i8* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.nfsd3_writeargs = type { i64, i32, i32, i8*, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs3svc_decode_writeargs(%struct.svc_rqst* %0, i32* %1, %struct.nfsd3_writeargs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nfsd3_writeargs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.nfsd3_writeargs* %2, %struct.nfsd3_writeargs** %7, align 8
  %13 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %14 = call i64 @svc_max_payload(%struct.svc_rqst* %13)
  store i64 %14, i64* %12, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load %struct.nfsd3_writeargs*, %struct.nfsd3_writeargs** %7, align 8
  %17 = getelementptr inbounds %struct.nfsd3_writeargs, %struct.nfsd3_writeargs* %16, i32 0, i32 5
  %18 = call i32* @decode_fh(i32* %15, i32* %17)
  store i32* %18, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %185

21:                                               ; preds = %3
  %22 = load i32*, i32** %6, align 8
  %23 = load %struct.nfsd3_writeargs*, %struct.nfsd3_writeargs** %7, align 8
  %24 = getelementptr inbounds %struct.nfsd3_writeargs, %struct.nfsd3_writeargs* %23, i32 0, i32 4
  %25 = call i32* @xdr_decode_hyper(i32* %22, i32* %24)
  store i32* %25, i32** %6, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %6, align 8
  %28 = load i32, i32* %26, align 4
  %29 = call i8* @ntohl(i32 %28)
  %30 = ptrtoint i8* %29 to i64
  %31 = load %struct.nfsd3_writeargs*, %struct.nfsd3_writeargs** %7, align 8
  %32 = getelementptr inbounds %struct.nfsd3_writeargs, %struct.nfsd3_writeargs* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %6, align 8
  %35 = load i32, i32* %33, align 4
  %36 = call i8* @ntohl(i32 %35)
  %37 = load %struct.nfsd3_writeargs*, %struct.nfsd3_writeargs** %7, align 8
  %38 = getelementptr inbounds %struct.nfsd3_writeargs, %struct.nfsd3_writeargs* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %6, align 8
  %41 = load i32, i32* %39, align 4
  %42 = call i8* @ntohl(i32 %41)
  %43 = ptrtoint i8* %42 to i32
  %44 = load %struct.nfsd3_writeargs*, %struct.nfsd3_writeargs** %7, align 8
  %45 = getelementptr inbounds %struct.nfsd3_writeargs, %struct.nfsd3_writeargs* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  store i32 %43, i32* %8, align 4
  %46 = load %struct.nfsd3_writeargs*, %struct.nfsd3_writeargs** %7, align 8
  %47 = getelementptr inbounds %struct.nfsd3_writeargs, %struct.nfsd3_writeargs* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.nfsd3_writeargs*, %struct.nfsd3_writeargs** %7, align 8
  %50 = getelementptr inbounds %struct.nfsd3_writeargs, %struct.nfsd3_writeargs* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = zext i32 %51 to i64
  %53 = icmp ne i64 %48, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %185

55:                                               ; preds = %21
  %56 = load i32*, i32** %6, align 8
  %57 = bitcast i32* %56 to i8*
  %58 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %59 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = ptrtoint i8* %57 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %10, align 4
  %69 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %70 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %77 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = add i32 %75, %79
  %81 = load i32, i32* %10, align 4
  %82 = sub i32 %80, %81
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @XDR_QUADLEN(i32 %84)
  %86 = mul nsw i32 %85, 4
  %87 = icmp ult i32 %83, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %185

89:                                               ; preds = %55
  %90 = load %struct.nfsd3_writeargs*, %struct.nfsd3_writeargs** %7, align 8
  %91 = getelementptr inbounds %struct.nfsd3_writeargs, %struct.nfsd3_writeargs* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %12, align 8
  %94 = icmp sgt i64 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %89
  %96 = load i64, i64* %12, align 8
  %97 = load %struct.nfsd3_writeargs*, %struct.nfsd3_writeargs** %7, align 8
  %98 = getelementptr inbounds %struct.nfsd3_writeargs, %struct.nfsd3_writeargs* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  %99 = load i64, i64* %12, align 8
  %100 = trunc i64 %99 to i32
  %101 = load %struct.nfsd3_writeargs*, %struct.nfsd3_writeargs** %7, align 8
  %102 = getelementptr inbounds %struct.nfsd3_writeargs, %struct.nfsd3_writeargs* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 8
  store i32 %100, i32* %8, align 4
  br label %103

103:                                              ; preds = %95, %89
  %104 = load i32*, i32** %6, align 8
  %105 = bitcast i32* %104 to i8*
  %106 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %107 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %106, i32 0, i32 0
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i64 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  store i8* %105, i8** %110, align 8
  %111 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %112 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i64 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sub i32 %117, %118
  %120 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %121 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %120, i32 0, i32 0
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i64 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  store i32 %119, i32* %124, align 8
  store i32 0, i32* %9, align 4
  br label %125

125:                                              ; preds = %136, %103
  %126 = load i32, i32* %8, align 4
  %127 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %128 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %127, i32 0, i32 0
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp ugt i32 %126, %134
  br i1 %135, label %136, label %172

136:                                              ; preds = %125
  %137 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %138 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %137, i32 0, i32 0
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = load i32, i32* %9, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %8, align 4
  %146 = sub i32 %145, %144
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* %9, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %9, align 4
  %149 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %150 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %9, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = call i8* @page_address(i32 %155)
  %157 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %158 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %157, i32 0, i32 0
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %158, align 8
  %160 = load i32, i32* %9, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 1
  store i8* %156, i8** %163, align 8
  %164 = load i32, i32* @PAGE_SIZE, align 4
  %165 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %166 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %165, i32 0, i32 0
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %166, align 8
  %168 = load i32, i32* %9, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  store i32 %164, i32* %171, align 8
  br label %125

172:                                              ; preds = %125
  %173 = load i32, i32* %8, align 4
  %174 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %175 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %174, i32 0, i32 0
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %175, align 8
  %177 = load i32, i32* %9, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  store i32 %173, i32* %180, align 8
  %181 = load i32, i32* %9, align 4
  %182 = add i32 %181, 1
  %183 = load %struct.nfsd3_writeargs*, %struct.nfsd3_writeargs** %7, align 8
  %184 = getelementptr inbounds %struct.nfsd3_writeargs, %struct.nfsd3_writeargs* %183, i32 0, i32 2
  store i32 %182, i32* %184, align 4
  store i32 1, i32* %4, align 4
  br label %185

185:                                              ; preds = %172, %88, %54, %20
  %186 = load i32, i32* %4, align 4
  ret i32 %186
}

declare dso_local i64 @svc_max_payload(%struct.svc_rqst*) #1

declare dso_local i32* @decode_fh(i32*, i32*) #1

declare dso_local i32* @xdr_decode_hyper(i32*, i32*) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @XDR_QUADLEN(i32) #1

declare dso_local i8* @page_address(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
