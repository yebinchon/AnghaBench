; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_mount_clnt.c_decode_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_mount_clnt.c_decode_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.xdr_stream = type { i32 }
%struct.mountres = type { i32 }

@EIO = common dso_local global i32 0, align 4
@mnt_errtbl = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"NFS: unrecognized MNT status code: %u\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.mountres*)* @decode_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_status(%struct.xdr_stream* %0, %struct.mountres* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.mountres*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.mountres* %1, %struct.mountres** %5, align 8
  %9 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %10 = call i32* @xdr_inline_decode(%struct.xdr_stream* %9, i32 8)
  store i32* %10, i32** %8, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = icmp eq i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %57

19:                                               ; preds = %2
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @ntohl(i32 %21)
  store i64 %22, i64* %7, align 8
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %47, %19
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mnt_errtbl, align 8
  %26 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %25)
  %27 = icmp ult i32 %24, %26
  br i1 %27, label %28, label %50

28:                                               ; preds = %23
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mnt_errtbl, align 8
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %28
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mnt_errtbl, align 8
  %39 = load i32, i32* %6, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.mountres*, %struct.mountres** %5, align 8
  %45 = getelementptr inbounds %struct.mountres, %struct.mountres* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  store i32 0, i32* %3, align 4
  br label %57

46:                                               ; preds = %28
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %6, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %23

50:                                               ; preds = %23
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @dprintk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %51)
  %53 = load i32, i32* @EACCES, align 4
  %54 = sub nsw i32 0, %53
  %55 = load %struct.mountres*, %struct.mountres** %5, align 8
  %56 = getelementptr inbounds %struct.mountres, %struct.mountres* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %50, %37, %16
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32* @xdr_inline_decode(%struct.xdr_stream*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @dprintk(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
