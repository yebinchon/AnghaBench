; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3xdr.c_nfs3svc_decode_symlinkargs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3xdr.c_nfs3svc_decode_symlinkargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.TYPE_2__, i32, i32* }
%struct.TYPE_2__ = type { i32, i32*, %struct.kvec* }
%struct.kvec = type { i32, i64 }
%struct.nfsd3_symlinkargs = type { i8*, i32, i32, i32, i32, i32 }

@NFS3_MAXPATHLEN = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs3svc_decode_symlinkargs(%struct.svc_rqst* %0, i32* %1, %struct.nfsd3_symlinkargs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nfsd3_symlinkargs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.kvec*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.nfsd3_symlinkargs* %2, %struct.nfsd3_symlinkargs** %7, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load %struct.nfsd3_symlinkargs*, %struct.nfsd3_symlinkargs** %7, align 8
  %15 = getelementptr inbounds %struct.nfsd3_symlinkargs, %struct.nfsd3_symlinkargs* %14, i32 0, i32 5
  %16 = call i32* @decode_fh(i32* %13, i32* %15)
  store i32* %16, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load i32*, i32** %6, align 8
  %20 = load %struct.nfsd3_symlinkargs*, %struct.nfsd3_symlinkargs** %7, align 8
  %21 = getelementptr inbounds %struct.nfsd3_symlinkargs, %struct.nfsd3_symlinkargs* %20, i32 0, i32 4
  %22 = load %struct.nfsd3_symlinkargs*, %struct.nfsd3_symlinkargs** %7, align 8
  %23 = getelementptr inbounds %struct.nfsd3_symlinkargs, %struct.nfsd3_symlinkargs* %22, i32 0, i32 3
  %24 = call i32* @decode_filename(i32* %19, i32* %21, i32* %23)
  store i32* %24, i32** %6, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %18, %3
  store i32 0, i32* %4, align 4
  br label %168

27:                                               ; preds = %18
  %28 = load i32*, i32** %6, align 8
  %29 = load %struct.nfsd3_symlinkargs*, %struct.nfsd3_symlinkargs** %7, align 8
  %30 = getelementptr inbounds %struct.nfsd3_symlinkargs, %struct.nfsd3_symlinkargs* %29, i32 0, i32 2
  %31 = call i32* @decode_sattr3(i32* %28, i32* %30)
  store i32* %31, i32** %6, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %6, align 8
  %34 = load i32, i32* %32, align 4
  %35 = call i32 @ntohl(i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %27
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @NFS3_MAXPATHLEN, align 4
  %41 = icmp ugt i32 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @PAGE_SIZE, align 4
  %45 = icmp uge i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %38, %27
  store i32 0, i32* %4, align 4
  br label %168

47:                                               ; preds = %42
  %48 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %49 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %52 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i32, i32* %50, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @page_address(i32 %57)
  store i8* %58, i8** %11, align 8
  %59 = load %struct.nfsd3_symlinkargs*, %struct.nfsd3_symlinkargs** %7, align 8
  %60 = getelementptr inbounds %struct.nfsd3_symlinkargs, %struct.nfsd3_symlinkargs* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.nfsd3_symlinkargs*, %struct.nfsd3_symlinkargs** %7, align 8
  %63 = getelementptr inbounds %struct.nfsd3_symlinkargs, %struct.nfsd3_symlinkargs* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = bitcast i32* %64 to i8*
  store i8* %65, i8** %10, align 8
  %66 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %67 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = load %struct.kvec*, %struct.kvec** %68, align 8
  %70 = getelementptr inbounds %struct.kvec, %struct.kvec* %69, i64 0
  store %struct.kvec* %70, %struct.kvec** %12, align 8
  %71 = load %struct.kvec*, %struct.kvec** %12, align 8
  %72 = getelementptr inbounds %struct.kvec, %struct.kvec* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = load i8*, i8** %10, align 8
  %76 = load %struct.kvec*, %struct.kvec** %12, align 8
  %77 = getelementptr inbounds %struct.kvec, %struct.kvec* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to i8*
  %80 = ptrtoint i8* %75 to i64
  %81 = ptrtoint i8* %79 to i64
  %82 = sub i64 %80, %81
  %83 = sub nsw i64 %74, %82
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %98, %47
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %85
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load i8*, i8** %10, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 0
  br label %96

96:                                               ; preds = %91, %88, %85
  %97 = phi i1 [ false, %88 ], [ false, %85 ], [ %95, %91 ]
  br i1 %97, label %98, label %108

98:                                               ; preds = %96
  %99 = load i8*, i8** %10, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %10, align 8
  %101 = load i8, i8* %99, align 1
  %102 = load i8*, i8** %11, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %11, align 8
  store i8 %101, i8* %102, align 1
  %104 = load i32, i32* %8, align 4
  %105 = add i32 %104, -1
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %9, align 4
  %107 = add i32 %106, -1
  store i32 %107, i32* %9, align 4
  br label %85

108:                                              ; preds = %96
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %138

111:                                              ; preds = %108
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %138, label %114

114:                                              ; preds = %111
  %115 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %116 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %138

120:                                              ; preds = %114
  %121 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %122 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* @PAGE_SIZE, align 4
  %127 = icmp ugt i32 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %120
  %129 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %129, i32* %9, align 4
  br label %130

130:                                              ; preds = %128, %120
  %131 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %132 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = call i8* @page_address(i32 %136)
  store i8* %137, i8** %10, align 8
  br label %138

138:                                              ; preds = %130, %114, %111, %108
  br label %139

139:                                              ; preds = %152, %138
  %140 = load i32, i32* %8, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %139
  %143 = load i32, i32* %9, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %142
  %146 = load i8*, i8** %10, align 8
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp ne i32 %148, 0
  br label %150

150:                                              ; preds = %145, %142, %139
  %151 = phi i1 [ false, %142 ], [ false, %139 ], [ %149, %145 ]
  br i1 %151, label %152, label %162

152:                                              ; preds = %150
  %153 = load i8*, i8** %10, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %154, i8** %10, align 8
  %155 = load i8, i8* %153, align 1
  %156 = load i8*, i8** %11, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %11, align 8
  store i8 %155, i8* %156, align 1
  %158 = load i32, i32* %8, align 4
  %159 = add i32 %158, -1
  store i32 %159, i32* %8, align 4
  %160 = load i32, i32* %9, align 4
  %161 = add i32 %160, -1
  store i32 %161, i32* %9, align 4
  br label %139

162:                                              ; preds = %150
  %163 = load i8*, i8** %11, align 8
  store i8 0, i8* %163, align 1
  %164 = load i32, i32* %8, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %162
  store i32 0, i32* %4, align 4
  br label %168

167:                                              ; preds = %162
  store i32 1, i32* %4, align 4
  br label %168

168:                                              ; preds = %167, %166, %46, %26
  %169 = load i32, i32* %4, align 4
  ret i32 %169
}

declare dso_local i32* @decode_fh(i32*, i32*) #1

declare dso_local i32* @decode_filename(i32*, i32*, i32*) #1

declare dso_local i32* @decode_sattr3(i32*, i32*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i8* @page_address(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
