; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_xdr4.h_set_change_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_xdr4.h_set_change_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_change_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.svc_fh = type { %struct.TYPE_8__, %struct.TYPE_6__, i32, i32, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfsd4_change_info*, %struct.svc_fh*)* @set_change_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_change_info(%struct.nfsd4_change_info* %0, %struct.svc_fh* %1) #0 {
  %3 = alloca %struct.nfsd4_change_info*, align 8
  %4 = alloca %struct.svc_fh*, align 8
  store %struct.nfsd4_change_info* %0, %struct.nfsd4_change_info** %3, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %4, align 8
  %5 = load %struct.svc_fh*, %struct.svc_fh** %4, align 8
  %6 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.svc_fh*, %struct.svc_fh** %4, align 8
  %13 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.nfsd4_change_info*, %struct.nfsd4_change_info** %3, align 8
  %16 = getelementptr inbounds %struct.nfsd4_change_info, %struct.nfsd4_change_info* %15, i32 0, i32 7
  store i32 %14, i32* %16, align 4
  %17 = load %struct.svc_fh*, %struct.svc_fh** %4, align 8
  %18 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %17, i32 0, i32 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @IS_I_VERSION(i32 %21)
  %23 = load %struct.nfsd4_change_info*, %struct.nfsd4_change_info** %3, align 8
  %24 = getelementptr inbounds %struct.nfsd4_change_info, %struct.nfsd4_change_info* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 4
  %25 = load %struct.svc_fh*, %struct.svc_fh** %4, align 8
  %26 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.nfsd4_change_info*, %struct.nfsd4_change_info** %3, align 8
  %29 = getelementptr inbounds %struct.nfsd4_change_info, %struct.nfsd4_change_info* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 4
  %30 = load %struct.svc_fh*, %struct.svc_fh** %4, align 8
  %31 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.nfsd4_change_info*, %struct.nfsd4_change_info** %3, align 8
  %34 = getelementptr inbounds %struct.nfsd4_change_info, %struct.nfsd4_change_info* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load %struct.svc_fh*, %struct.svc_fh** %4, align 8
  %36 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.nfsd4_change_info*, %struct.nfsd4_change_info** %3, align 8
  %40 = getelementptr inbounds %struct.nfsd4_change_info, %struct.nfsd4_change_info* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.svc_fh*, %struct.svc_fh** %4, align 8
  %42 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.nfsd4_change_info*, %struct.nfsd4_change_info** %3, align 8
  %46 = getelementptr inbounds %struct.nfsd4_change_info, %struct.nfsd4_change_info* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.svc_fh*, %struct.svc_fh** %4, align 8
  %48 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.nfsd4_change_info*, %struct.nfsd4_change_info** %3, align 8
  %53 = getelementptr inbounds %struct.nfsd4_change_info, %struct.nfsd4_change_info* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.svc_fh*, %struct.svc_fh** %4, align 8
  %55 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.nfsd4_change_info*, %struct.nfsd4_change_info** %3, align 8
  %60 = getelementptr inbounds %struct.nfsd4_change_info, %struct.nfsd4_change_info* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @IS_I_VERSION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
