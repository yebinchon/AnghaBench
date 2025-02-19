; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs2xdr.c_nfs_xdr_statfsres.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs2xdr.c_nfs_xdr_statfsres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.nfs2_fsstat = type { i8*, i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, i32*, %struct.nfs2_fsstat*)* @nfs_xdr_statfsres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_xdr_statfsres(%struct.rpc_rqst* %0, i32* %1, %struct.nfs2_fsstat* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_rqst*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nfs2_fsstat*, align 8
  %8 = alloca i32, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.nfs2_fsstat* %2, %struct.nfs2_fsstat** %7, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = getelementptr inbounds i32, i32* %9, i32 1
  store i32* %10, i32** %6, align 8
  %11 = load i32, i32* %9, align 4
  %12 = call i8* @ntohl(i32 %11)
  %13 = ptrtoint i8* %12 to i32
  store i32 %13, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @nfs_stat_to_errno(i32 %16)
  store i32 %17, i32* %4, align 4
  br label %49

18:                                               ; preds = %3
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %6, align 8
  %21 = load i32, i32* %19, align 4
  %22 = call i8* @ntohl(i32 %21)
  %23 = load %struct.nfs2_fsstat*, %struct.nfs2_fsstat** %7, align 8
  %24 = getelementptr inbounds %struct.nfs2_fsstat, %struct.nfs2_fsstat* %23, i32 0, i32 4
  store i8* %22, i8** %24, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %6, align 8
  %27 = load i32, i32* %25, align 4
  %28 = call i8* @ntohl(i32 %27)
  %29 = load %struct.nfs2_fsstat*, %struct.nfs2_fsstat** %7, align 8
  %30 = getelementptr inbounds %struct.nfs2_fsstat, %struct.nfs2_fsstat* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %6, align 8
  %33 = load i32, i32* %31, align 4
  %34 = call i8* @ntohl(i32 %33)
  %35 = load %struct.nfs2_fsstat*, %struct.nfs2_fsstat** %7, align 8
  %36 = getelementptr inbounds %struct.nfs2_fsstat, %struct.nfs2_fsstat* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %6, align 8
  %39 = load i32, i32* %37, align 4
  %40 = call i8* @ntohl(i32 %39)
  %41 = load %struct.nfs2_fsstat*, %struct.nfs2_fsstat** %7, align 8
  %42 = getelementptr inbounds %struct.nfs2_fsstat, %struct.nfs2_fsstat* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %6, align 8
  %45 = load i32, i32* %43, align 4
  %46 = call i8* @ntohl(i32 %45)
  %47 = load %struct.nfs2_fsstat*, %struct.nfs2_fsstat** %7, align 8
  %48 = getelementptr inbounds %struct.nfs2_fsstat, %struct.nfs2_fsstat* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %18, %15
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @nfs_stat_to_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
