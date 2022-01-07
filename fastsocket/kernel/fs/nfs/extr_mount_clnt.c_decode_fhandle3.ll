; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_mount_clnt.c_decode_fhandle3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_mount_clnt.c_decode_fhandle3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.mountres = type { %struct.nfs_fh* }
%struct.nfs_fh = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@NFS3_FHSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.mountres*)* @decode_fhandle3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_fhandle3(%struct.xdr_stream* %0, %struct.mountres* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.mountres*, align 8
  %6 = alloca %struct.nfs_fh*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.mountres* %1, %struct.mountres** %5, align 8
  %9 = load %struct.mountres*, %struct.mountres** %5, align 8
  %10 = getelementptr inbounds %struct.mountres, %struct.mountres* %9, i32 0, i32 0
  %11 = load %struct.nfs_fh*, %struct.nfs_fh** %10, align 8
  store %struct.nfs_fh* %11, %struct.nfs_fh** %6, align 8
  %12 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %13 = call i32* @xdr_inline_decode(%struct.xdr_stream* %12, i32 4)
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = icmp eq i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %58

22:                                               ; preds = %2
  %23 = load i32*, i32** %8, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %8, align 8
  %25 = load i32, i32* %23, align 4
  %26 = call i32 @ntohl(i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @NFS3_FHSIZE, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30, %22
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %58

36:                                               ; preds = %30
  %37 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32* @xdr_inline_decode(%struct.xdr_stream* %37, i32 %38)
  store i32* %39, i32** %8, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = icmp eq i32* %40, null
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %58

48:                                               ; preds = %36
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.nfs_fh*, %struct.nfs_fh** %6, align 8
  %51 = getelementptr inbounds %struct.nfs_fh, %struct.nfs_fh* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.nfs_fh*, %struct.nfs_fh** %6, align 8
  %53 = getelementptr inbounds %struct.nfs_fh, %struct.nfs_fh* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @memcpy(i32 %54, i32* %55, i32 %56)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %48, %45, %33, %19
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32* @xdr_inline_decode(%struct.xdr_stream*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
