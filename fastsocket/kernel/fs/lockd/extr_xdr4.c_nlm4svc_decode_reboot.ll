; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_xdr4.c_nlm4svc_decode_reboot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_xdr4.c_nlm4svc_decode_reboot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nlm_reboot = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@SM_MAXSTRLEN = common dso_local global i32 0, align 4
@SM_PRIV_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlm4svc_decode_reboot(%struct.svc_rqst* %0, i32* %1, %struct.nlm_reboot* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nlm_reboot*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.nlm_reboot* %2, %struct.nlm_reboot** %7, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = load %struct.nlm_reboot*, %struct.nlm_reboot** %7, align 8
  %10 = getelementptr inbounds %struct.nlm_reboot, %struct.nlm_reboot* %9, i32 0, i32 3
  %11 = load %struct.nlm_reboot*, %struct.nlm_reboot** %7, align 8
  %12 = getelementptr inbounds %struct.nlm_reboot, %struct.nlm_reboot* %11, i32 0, i32 2
  %13 = load i32, i32* @SM_MAXSTRLEN, align 4
  %14 = call i32* @xdr_decode_string_inplace(i32* %8, i32* %10, i32* %12, i32 %13)
  store i32* %14, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %37

17:                                               ; preds = %3
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %6, align 8
  %20 = load i32, i32* %18, align 4
  %21 = call i32 @ntohl(i32 %20)
  %22 = load %struct.nlm_reboot*, %struct.nlm_reboot** %7, align 8
  %23 = getelementptr inbounds %struct.nlm_reboot, %struct.nlm_reboot* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.nlm_reboot*, %struct.nlm_reboot** %7, align 8
  %25 = getelementptr inbounds %struct.nlm_reboot, %struct.nlm_reboot* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @memcpy(i32* %26, i32* %27, i32 4)
  %29 = load i32, i32* @SM_PRIV_SIZE, align 4
  %30 = call i32 @XDR_QUADLEN(i32 %29)
  %31 = load i32*, i32** %6, align 8
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32* %33, i32** %6, align 8
  %34 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @xdr_argsize_check(%struct.svc_rqst* %34, i32* %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %17, %16
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32* @xdr_decode_string_inplace(i32*, i32*, i32*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @XDR_QUADLEN(i32) #1

declare dso_local i32 @xdr_argsize_check(%struct.svc_rqst*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
