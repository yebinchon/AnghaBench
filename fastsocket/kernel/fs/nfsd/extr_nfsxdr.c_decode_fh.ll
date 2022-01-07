; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsxdr.c_decode_fh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsxdr.c_decode_fh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_fh = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@NFS_FHSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.svc_fh*)* @decode_fh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @decode_fh(i32* %0, %struct.svc_fh* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.svc_fh*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %4, align 8
  %5 = load %struct.svc_fh*, %struct.svc_fh** %4, align 8
  %6 = load i32, i32* @NFS_FHSIZE, align 4
  %7 = call i32 @fh_init(%struct.svc_fh* %5, i32 %6)
  %8 = load %struct.svc_fh*, %struct.svc_fh** %4, align 8
  %9 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* @NFS_FHSIZE, align 4
  %13 = call i32 @memcpy(i32* %10, i32* %11, i32 %12)
  %14 = load i32, i32* @NFS_FHSIZE, align 4
  %15 = load %struct.svc_fh*, %struct.svc_fh** %4, align 8
  %16 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* @NFS_FHSIZE, align 4
  %20 = ashr i32 %19, 2
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  ret i32* %22
}

declare dso_local i32 @fh_init(%struct.svc_fh*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
