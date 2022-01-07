; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_mon.c_encode_my_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_mon.c_encode_my_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nsm_args = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.nsm_args*)* @encode_my_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_my_id(%struct.xdr_stream* %0, %struct.nsm_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nsm_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nsm_args* %1, %struct.nsm_args** %5, align 8
  %8 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %9 = call %struct.TYPE_2__* (...) @utsname()
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @encode_nsm_string(%struct.xdr_stream* %8, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %53

20:                                               ; preds = %2
  %21 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %22 = call i32* @xdr_reserve_space(%struct.xdr_stream* %21, i32 12)
  store i32* %22, i32** %7, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = icmp eq i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %53

31:                                               ; preds = %20
  %32 = load %struct.nsm_args*, %struct.nsm_args** %5, align 8
  %33 = getelementptr inbounds %struct.nsm_args, %struct.nsm_args* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @htonl(i32 %34)
  %36 = ptrtoint i8* %35 to i32
  %37 = load i32*, i32** %7, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  %39 = load %struct.nsm_args*, %struct.nsm_args** %5, align 8
  %40 = getelementptr inbounds %struct.nsm_args, %struct.nsm_args* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @htonl(i32 %41)
  %43 = ptrtoint i8* %42 to i32
  %44 = load i32*, i32** %7, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  %46 = load %struct.nsm_args*, %struct.nsm_args** %5, align 8
  %47 = getelementptr inbounds %struct.nsm_args, %struct.nsm_args* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @htonl(i32 %48)
  %50 = ptrtoint i8* %49 to i32
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %7, align 8
  store i32 %50, i32* %51, align 4
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %31, %28, %18
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @encode_nsm_string(%struct.xdr_stream*, i32) #1

declare dso_local %struct.TYPE_2__* @utsname(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @xdr_reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i8* @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
