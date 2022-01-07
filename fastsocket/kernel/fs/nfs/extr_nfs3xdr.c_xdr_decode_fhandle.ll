; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3xdr.c_xdr_decode_fhandle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3xdr.c_xdr_decode_fhandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_fh = type { i32, i32 }

@NFS3_FHSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.nfs_fh*)* @xdr_decode_fhandle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xdr_decode_fhandle(i32* %0, %struct.nfs_fh* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.nfs_fh*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.nfs_fh* %1, %struct.nfs_fh** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = getelementptr inbounds i32, i32* %6, i32 1
  store i32* %7, i32** %4, align 8
  %8 = load i32, i32* %6, align 4
  %9 = call i32 @ntohl(i32 %8)
  %10 = load %struct.nfs_fh*, %struct.nfs_fh** %5, align 8
  %11 = getelementptr inbounds %struct.nfs_fh, %struct.nfs_fh* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @NFS3_FHSIZE, align 4
  %13 = icmp sle i32 %9, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %2
  %15 = load %struct.nfs_fh*, %struct.nfs_fh** %5, align 8
  %16 = getelementptr inbounds %struct.nfs_fh, %struct.nfs_fh* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.nfs_fh*, %struct.nfs_fh** %5, align 8
  %20 = getelementptr inbounds %struct.nfs_fh, %struct.nfs_fh* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @memcpy(i32 %17, i32* %18, i32 %21)
  %23 = load i32*, i32** %4, align 8
  %24 = load %struct.nfs_fh*, %struct.nfs_fh** %5, align 8
  %25 = getelementptr inbounds %struct.nfs_fh, %struct.nfs_fh* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @XDR_QUADLEN(i32 %26)
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %23, i64 %28
  store i32* %29, i32** %3, align 8
  br label %31

30:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %31

31:                                               ; preds = %30, %14
  %32 = load i32*, i32** %3, align 8
  ret i32* %32
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @XDR_QUADLEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
