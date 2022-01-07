; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_dec_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_dec_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.nfs4_accessres = type { i32, i32, i32, i32, i32 }
%struct.xdr_stream = type { i32 }
%struct.compound_hdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, i32*, %struct.nfs4_accessres*)* @nfs4_xdr_dec_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_xdr_dec_access(%struct.rpc_rqst* %0, i32* %1, %struct.nfs4_accessres* %2) #0 {
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfs4_accessres*, align 8
  %7 = alloca %struct.xdr_stream, align 4
  %8 = alloca %struct.compound_hdr, align 4
  %9 = alloca i32, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.nfs4_accessres* %2, %struct.nfs4_accessres** %6, align 8
  %10 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %11 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %10, i32 0, i32 0
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @xdr_init_decode(%struct.xdr_stream* %7, i32* %11, i32* %12)
  %14 = call i32 @decode_compound_hdr(%struct.xdr_stream* %7, %struct.compound_hdr* %8)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %48

18:                                               ; preds = %3
  %19 = load %struct.nfs4_accessres*, %struct.nfs4_accessres** %6, align 8
  %20 = getelementptr inbounds %struct.nfs4_accessres, %struct.nfs4_accessres* %19, i32 0, i32 4
  %21 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %22 = call i32 @decode_sequence(%struct.xdr_stream* %7, i32* %20, %struct.rpc_rqst* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %48

26:                                               ; preds = %18
  %27 = call i32 @decode_putfh(%struct.xdr_stream* %7)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %48

31:                                               ; preds = %26
  %32 = load %struct.nfs4_accessres*, %struct.nfs4_accessres** %6, align 8
  %33 = getelementptr inbounds %struct.nfs4_accessres, %struct.nfs4_accessres* %32, i32 0, i32 3
  %34 = load %struct.nfs4_accessres*, %struct.nfs4_accessres** %6, align 8
  %35 = getelementptr inbounds %struct.nfs4_accessres, %struct.nfs4_accessres* %34, i32 0, i32 2
  %36 = call i32 @decode_access(%struct.xdr_stream* %7, i32* %33, i32* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %48

40:                                               ; preds = %31
  %41 = load %struct.nfs4_accessres*, %struct.nfs4_accessres** %6, align 8
  %42 = getelementptr inbounds %struct.nfs4_accessres, %struct.nfs4_accessres* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.nfs4_accessres*, %struct.nfs4_accessres** %6, align 8
  %45 = getelementptr inbounds %struct.nfs4_accessres, %struct.nfs4_accessres* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @decode_getfattr(%struct.xdr_stream* %7, i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %40, %39, %30, %25, %17
  %49 = load i32, i32* %9, align 4
  ret i32 %49
}

declare dso_local i32 @xdr_init_decode(%struct.xdr_stream*, i32*, i32*) #1

declare dso_local i32 @decode_compound_hdr(%struct.xdr_stream*, %struct.compound_hdr*) #1

declare dso_local i32 @decode_sequence(%struct.xdr_stream*, i32*, %struct.rpc_rqst*) #1

declare dso_local i32 @decode_putfh(%struct.xdr_stream*) #1

declare dso_local i32 @decode_access(%struct.xdr_stream*, i32*, i32*) #1

declare dso_local i32 @decode_getfattr(%struct.xdr_stream*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
