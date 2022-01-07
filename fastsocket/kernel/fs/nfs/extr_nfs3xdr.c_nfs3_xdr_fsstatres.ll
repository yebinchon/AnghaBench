; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3xdr.c_nfs3_xdr_fsstatres.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3xdr.c_nfs3_xdr_fsstatres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.nfs_fsstat = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, i32*, %struct.nfs_fsstat*)* @nfs3_xdr_fsstatres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_xdr_fsstatres(%struct.rpc_rqst* %0, i32* %1, %struct.nfs_fsstat* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_rqst*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nfs_fsstat*, align 8
  %8 = alloca i32, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.nfs_fsstat* %2, %struct.nfs_fsstat** %7, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = getelementptr inbounds i32, i32* %9, i32 1
  store i32* %10, i32** %6, align 8
  %11 = load i32, i32* %9, align 4
  %12 = call i32 @ntohl(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = load %struct.nfs_fsstat*, %struct.nfs_fsstat** %7, align 8
  %15 = getelementptr inbounds %struct.nfs_fsstat, %struct.nfs_fsstat* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 4
  %17 = call i32* @xdr_decode_post_op_attr(i32* %13, i32 %16)
  store i32* %17, i32** %6, align 8
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @nfs_stat_to_errno(i32 %21)
  store i32 %22, i32* %4, align 4
  br label %48

23:                                               ; preds = %3
  %24 = load i32*, i32** %6, align 8
  %25 = load %struct.nfs_fsstat*, %struct.nfs_fsstat** %7, align 8
  %26 = getelementptr inbounds %struct.nfs_fsstat, %struct.nfs_fsstat* %25, i32 0, i32 5
  %27 = call i32* @xdr_decode_hyper(i32* %24, i32* %26)
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load %struct.nfs_fsstat*, %struct.nfs_fsstat** %7, align 8
  %30 = getelementptr inbounds %struct.nfs_fsstat, %struct.nfs_fsstat* %29, i32 0, i32 4
  %31 = call i32* @xdr_decode_hyper(i32* %28, i32* %30)
  store i32* %31, i32** %6, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load %struct.nfs_fsstat*, %struct.nfs_fsstat** %7, align 8
  %34 = getelementptr inbounds %struct.nfs_fsstat, %struct.nfs_fsstat* %33, i32 0, i32 3
  %35 = call i32* @xdr_decode_hyper(i32* %32, i32* %34)
  store i32* %35, i32** %6, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load %struct.nfs_fsstat*, %struct.nfs_fsstat** %7, align 8
  %38 = getelementptr inbounds %struct.nfs_fsstat, %struct.nfs_fsstat* %37, i32 0, i32 2
  %39 = call i32* @xdr_decode_hyper(i32* %36, i32* %38)
  store i32* %39, i32** %6, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load %struct.nfs_fsstat*, %struct.nfs_fsstat** %7, align 8
  %42 = getelementptr inbounds %struct.nfs_fsstat, %struct.nfs_fsstat* %41, i32 0, i32 1
  %43 = call i32* @xdr_decode_hyper(i32* %40, i32* %42)
  store i32* %43, i32** %6, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = load %struct.nfs_fsstat*, %struct.nfs_fsstat** %7, align 8
  %46 = getelementptr inbounds %struct.nfs_fsstat, %struct.nfs_fsstat* %45, i32 0, i32 0
  %47 = call i32* @xdr_decode_hyper(i32* %44, i32* %46)
  store i32* %47, i32** %6, align 8
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %23, %20
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32* @xdr_decode_post_op_attr(i32*, i32) #1

declare dso_local i32 @nfs_stat_to_errno(i32) #1

declare dso_local i32* @xdr_decode_hyper(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
