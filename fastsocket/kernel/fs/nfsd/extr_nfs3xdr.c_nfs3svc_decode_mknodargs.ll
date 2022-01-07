; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3xdr.c_nfs3svc_decode_mknodargs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3xdr.c_nfs3svc_decode_mknodargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd3_mknodargs = type { i64, i8*, i8*, i32, i32, i32, i32 }

@NF3BLK = common dso_local global i64 0, align 8
@NF3CHR = common dso_local global i64 0, align 8
@NF3SOCK = common dso_local global i64 0, align 8
@NF3FIFO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs3svc_decode_mknodargs(%struct.svc_rqst* %0, i32* %1, %struct.nfsd3_mknodargs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nfsd3_mknodargs*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.nfsd3_mknodargs* %2, %struct.nfsd3_mknodargs** %7, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %7, align 8
  %10 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %9, i32 0, i32 6
  %11 = call i32* @decode_fh(i32* %8, i32* %10)
  store i32* %11, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %7, align 8
  %16 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %15, i32 0, i32 5
  %17 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %7, align 8
  %18 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %17, i32 0, i32 4
  %19 = call i32* @decode_filename(i32* %14, i32* %16, i32* %18)
  store i32* %19, i32** %6, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %13, %3
  store i32 0, i32* %4, align 4
  br label %87

22:                                               ; preds = %13
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %6, align 8
  %25 = load i32, i32* %23, align 4
  %26 = call i8* @ntohl(i32 %25)
  %27 = ptrtoint i8* %26 to i64
  %28 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %7, align 8
  %29 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %7, align 8
  %31 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @NF3BLK, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %53, label %35

35:                                               ; preds = %22
  %36 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %7, align 8
  %37 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @NF3CHR, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %53, label %41

41:                                               ; preds = %35
  %42 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %7, align 8
  %43 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @NF3SOCK, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %7, align 8
  %49 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @NF3FIFO, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %47, %41, %35, %22
  %54 = load i32*, i32** %6, align 8
  %55 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %7, align 8
  %56 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %55, i32 0, i32 3
  %57 = call i32* @decode_sattr3(i32* %54, i32* %56)
  store i32* %57, i32** %6, align 8
  br label %58

58:                                               ; preds = %53, %47
  %59 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %7, align 8
  %60 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @NF3BLK, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %70, label %64

64:                                               ; preds = %58
  %65 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %7, align 8
  %66 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @NF3CHR, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %64, %58
  %71 = load i32*, i32** %6, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %6, align 8
  %73 = load i32, i32* %71, align 4
  %74 = call i8* @ntohl(i32 %73)
  %75 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %7, align 8
  %76 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %75, i32 0, i32 2
  store i8* %74, i8** %76, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %6, align 8
  %79 = load i32, i32* %77, align 4
  %80 = call i8* @ntohl(i32 %79)
  %81 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %7, align 8
  %82 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  br label %83

83:                                               ; preds = %70, %64
  %84 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @xdr_argsize_check(%struct.svc_rqst* %84, i32* %85)
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %83, %21
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32* @decode_fh(i32*, i32*) #1

declare dso_local i32* @decode_filename(i32*, i32*, i32*) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32* @decode_sattr3(i32*, i32*) #1

declare dso_local i32 @xdr_argsize_check(%struct.svc_rqst*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
