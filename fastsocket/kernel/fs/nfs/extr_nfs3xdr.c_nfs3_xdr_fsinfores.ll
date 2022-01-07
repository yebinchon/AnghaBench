; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3xdr.c_nfs3_xdr_fsinfores.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3xdr.c_nfs3_xdr_fsinfores.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.nfs_fsinfo = type { i64, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, i32*, %struct.nfs_fsinfo*)* @nfs3_xdr_fsinfores to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_xdr_fsinfores(%struct.rpc_rqst* %0, i32* %1, %struct.nfs_fsinfo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_rqst*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nfs_fsinfo*, align 8
  %8 = alloca i32, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.nfs_fsinfo* %2, %struct.nfs_fsinfo** %7, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = getelementptr inbounds i32, i32* %9, i32 1
  store i32* %10, i32** %6, align 8
  %11 = load i32, i32* %9, align 4
  %12 = call i8* @ntohl(i32 %11)
  %13 = ptrtoint i8* %12 to i32
  store i32 %13, i32* %8, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %7, align 8
  %16 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %15, i32 0, i32 10
  %17 = load i32, i32* %16, align 8
  %18 = call i32* @xdr_decode_post_op_attr(i32* %14, i32 %17)
  store i32* %18, i32** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @nfs_stat_to_errno(i32 %22)
  store i32 %23, i32* %4, align 4
  br label %77

24:                                               ; preds = %3
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %6, align 8
  %27 = load i32, i32* %25, align 4
  %28 = call i8* @ntohl(i32 %27)
  %29 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %7, align 8
  %30 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %29, i32 0, i32 9
  store i8* %28, i8** %30, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %6, align 8
  %33 = load i32, i32* %31, align 4
  %34 = call i8* @ntohl(i32 %33)
  %35 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %7, align 8
  %36 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %35, i32 0, i32 8
  store i8* %34, i8** %36, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %6, align 8
  %39 = load i32, i32* %37, align 4
  %40 = call i8* @ntohl(i32 %39)
  %41 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %7, align 8
  %42 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %41, i32 0, i32 7
  store i8* %40, i8** %42, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %6, align 8
  %45 = load i32, i32* %43, align 4
  %46 = call i8* @ntohl(i32 %45)
  %47 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %7, align 8
  %48 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %47, i32 0, i32 6
  store i8* %46, i8** %48, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %6, align 8
  %51 = load i32, i32* %49, align 4
  %52 = call i8* @ntohl(i32 %51)
  %53 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %7, align 8
  %54 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %53, i32 0, i32 5
  store i8* %52, i8** %54, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %6, align 8
  %57 = load i32, i32* %55, align 4
  %58 = call i8* @ntohl(i32 %57)
  %59 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %7, align 8
  %60 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %59, i32 0, i32 4
  store i8* %58, i8** %60, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %6, align 8
  %63 = load i32, i32* %61, align 4
  %64 = call i8* @ntohl(i32 %63)
  %65 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %7, align 8
  %66 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %65, i32 0, i32 3
  store i8* %64, i8** %66, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %7, align 8
  %69 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %68, i32 0, i32 2
  %70 = call i32* @xdr_decode_hyper(i32* %67, i32* %69)
  store i32* %70, i32** %6, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %7, align 8
  %73 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %72, i32 0, i32 1
  %74 = call i32* @xdr_decode_time3(i32* %71, i32* %73)
  store i32* %74, i32** %6, align 8
  %75 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %7, align 8
  %76 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %24, %21
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32* @xdr_decode_post_op_attr(i32*, i32) #1

declare dso_local i32 @nfs_stat_to_errno(i32) #1

declare dso_local i32* @xdr_decode_hyper(i32*, i32*) #1

declare dso_local i32* @xdr_decode_time3(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
