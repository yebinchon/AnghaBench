; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3xdr.c_nfs3_xdr_symlinkargs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3xdr.c_nfs3_xdr_symlinkargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32, i32, i32 }
%struct.nfs3_symlinkargs = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, i32*, %struct.nfs3_symlinkargs*)* @nfs3_xdr_symlinkargs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_xdr_symlinkargs(%struct.rpc_rqst* %0, i32* %1, %struct.nfs3_symlinkargs* %2) #0 {
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfs3_symlinkargs*, align 8
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.nfs3_symlinkargs* %2, %struct.nfs3_symlinkargs** %6, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = load %struct.nfs3_symlinkargs*, %struct.nfs3_symlinkargs** %6, align 8
  %9 = getelementptr inbounds %struct.nfs3_symlinkargs, %struct.nfs3_symlinkargs* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = call i32* @xdr_encode_fhandle(i32* %7, i32 %10)
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load %struct.nfs3_symlinkargs*, %struct.nfs3_symlinkargs** %6, align 8
  %14 = getelementptr inbounds %struct.nfs3_symlinkargs, %struct.nfs3_symlinkargs* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.nfs3_symlinkargs*, %struct.nfs3_symlinkargs** %6, align 8
  %17 = getelementptr inbounds %struct.nfs3_symlinkargs, %struct.nfs3_symlinkargs* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32* @xdr_encode_array(i32* %12, i32 %15, i32 %18)
  store i32* %19, i32** %5, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.nfs3_symlinkargs*, %struct.nfs3_symlinkargs** %6, align 8
  %22 = getelementptr inbounds %struct.nfs3_symlinkargs, %struct.nfs3_symlinkargs* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32* @xdr_encode_sattr(i32* %20, i32 %23)
  store i32* %24, i32** %5, align 8
  %25 = load %struct.nfs3_symlinkargs*, %struct.nfs3_symlinkargs** %6, align 8
  %26 = getelementptr inbounds %struct.nfs3_symlinkargs, %struct.nfs3_symlinkargs* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @htonl(i32 %27)
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  %31 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %32 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @xdr_adjust_iovec(i32 %33, i32* %34)
  %36 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %37 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %39 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %38, i32 0, i32 0
  %40 = load %struct.nfs3_symlinkargs*, %struct.nfs3_symlinkargs** %6, align 8
  %41 = getelementptr inbounds %struct.nfs3_symlinkargs, %struct.nfs3_symlinkargs* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.nfs3_symlinkargs*, %struct.nfs3_symlinkargs** %6, align 8
  %44 = getelementptr inbounds %struct.nfs3_symlinkargs, %struct.nfs3_symlinkargs* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @xdr_encode_pages(i32* %39, i32 %42, i32 0, i32 %45)
  ret i32 0
}

declare dso_local i32* @xdr_encode_fhandle(i32*, i32) #1

declare dso_local i32* @xdr_encode_array(i32*, i32, i32) #1

declare dso_local i32* @xdr_encode_sattr(i32*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @xdr_adjust_iovec(i32, i32*) #1

declare dso_local i32 @xdr_encode_pages(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
