; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_callback_xdr.c_encode_attr_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_callback_xdr.c_encode_attr_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.timespec = type { i32, i32 }

@NFS4ERR_RESOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.timespec*)* @encode_attr_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_attr_time(%struct.xdr_stream* %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.timespec* %1, %struct.timespec** %5, align 8
  %7 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %8 = call i32* @xdr_reserve_space(%struct.xdr_stream* %7, i32 12)
  store i32* %8, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = icmp ne i32* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @NFS4ERR_RESOURCE, align 4
  %17 = call i32 @htonl(i32 %16)
  store i32 %17, i32* %3, align 4
  br label %29

18:                                               ; preds = %2
  %19 = load i32*, i32** %6, align 8
  %20 = load %struct.timespec*, %struct.timespec** %5, align 8
  %21 = getelementptr inbounds %struct.timespec, %struct.timespec* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32* @xdr_encode_hyper(i32* %19, i32 %22)
  store i32* %23, i32** %6, align 8
  %24 = load %struct.timespec*, %struct.timespec** %5, align 8
  %25 = getelementptr inbounds %struct.timespec, %struct.timespec* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @htonl(i32 %26)
  %28 = load i32*, i32** %6, align 8
  store i32 %27, i32* %28, align 4
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %18, %15
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32* @xdr_reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32* @xdr_encode_hyper(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
