; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs2xdr.c_xdr_encode_fhandle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs2xdr.c_xdr_encode_fhandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_fh = type { i32 }

@NFS2_FHSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.nfs_fh*)* @xdr_encode_fhandle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xdr_encode_fhandle(i32* %0, %struct.nfs_fh* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.nfs_fh*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.nfs_fh* %1, %struct.nfs_fh** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load %struct.nfs_fh*, %struct.nfs_fh** %4, align 8
  %7 = getelementptr inbounds %struct.nfs_fh, %struct.nfs_fh* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @NFS2_FHSIZE, align 4
  %10 = call i32 @memcpy(i32* %5, i32 %8, i32 %9)
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* @NFS2_FHSIZE, align 4
  %13 = call i32 @XDR_QUADLEN(i32 %12)
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %11, i64 %14
  ret i32* %15
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @XDR_QUADLEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
