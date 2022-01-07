; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_xdr4.c_nlm4_decode_fh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_xdr4.c_nlm4_decode_fh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_fh = type { i64, i32 }

@NFS_MAXFHSIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"lockd: bad fhandle size %d (should be <=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.nfs_fh*)* @nlm4_decode_fh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @nlm4_decode_fh(i32* %0, %struct.nfs_fh* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.nfs_fh*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.nfs_fh* %1, %struct.nfs_fh** %5, align 8
  %6 = load %struct.nfs_fh*, %struct.nfs_fh** %5, align 8
  %7 = getelementptr inbounds %struct.nfs_fh, %struct.nfs_fh* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @memset(i32 %8, i32 0, i32 4)
  %10 = load i32*, i32** %4, align 8
  %11 = getelementptr inbounds i32, i32* %10, i32 1
  store i32* %11, i32** %4, align 8
  %12 = load i32, i32* %10, align 4
  %13 = call i64 @ntohl(i32 %12)
  %14 = load %struct.nfs_fh*, %struct.nfs_fh** %5, align 8
  %15 = getelementptr inbounds %struct.nfs_fh, %struct.nfs_fh* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.nfs_fh*, %struct.nfs_fh** %5, align 8
  %17 = getelementptr inbounds %struct.nfs_fh, %struct.nfs_fh* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NFS_MAXFHSIZE, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.nfs_fh*, %struct.nfs_fh** %5, align 8
  %23 = getelementptr inbounds %struct.nfs_fh, %struct.nfs_fh* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NFS_MAXFHSIZE, align 8
  %26 = call i32 @dprintk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %24, i64 %25)
  store i32* null, i32** %3, align 8
  br label %43

27:                                               ; preds = %2
  %28 = load %struct.nfs_fh*, %struct.nfs_fh** %5, align 8
  %29 = getelementptr inbounds %struct.nfs_fh, %struct.nfs_fh* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = load %struct.nfs_fh*, %struct.nfs_fh** %5, align 8
  %33 = getelementptr inbounds %struct.nfs_fh, %struct.nfs_fh* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @memcpy(i32 %30, i32* %31, i64 %34)
  %36 = load i32*, i32** %4, align 8
  %37 = load %struct.nfs_fh*, %struct.nfs_fh** %5, align 8
  %38 = getelementptr inbounds %struct.nfs_fh, %struct.nfs_fh* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @XDR_QUADLEN(i64 %39)
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %36, i64 %41
  store i32* %42, i32** %3, align 8
  br label %43

43:                                               ; preds = %27, %21
  %44 = load i32*, i32** %3, align 8
  ret i32* %44
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @dprintk(i8*, i64, i64) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @XDR_QUADLEN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
