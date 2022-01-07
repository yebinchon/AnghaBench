; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfsd4_compound_in_session.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfsd4_compound_in_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_session = type { i32 }
%struct.nfs4_sessionid = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsd4_session*, %struct.nfs4_sessionid*)* @nfsd4_compound_in_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_compound_in_session(%struct.nfsd4_session* %0, %struct.nfs4_sessionid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfsd4_session*, align 8
  %5 = alloca %struct.nfs4_sessionid*, align 8
  store %struct.nfsd4_session* %0, %struct.nfsd4_session** %4, align 8
  store %struct.nfs4_sessionid* %1, %struct.nfs4_sessionid** %5, align 8
  %6 = load %struct.nfsd4_session*, %struct.nfsd4_session** %4, align 8
  %7 = icmp ne %struct.nfsd4_session* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %17

9:                                                ; preds = %2
  %10 = load %struct.nfs4_sessionid*, %struct.nfs4_sessionid** %5, align 8
  %11 = load %struct.nfsd4_session*, %struct.nfsd4_session** %4, align 8
  %12 = getelementptr inbounds %struct.nfsd4_session, %struct.nfsd4_session* %11, i32 0, i32 0
  %13 = call i32 @memcmp(%struct.nfs4_sessionid* %10, i32* %12, i32 4)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %9, %8
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i32 @memcmp(%struct.nfs4_sessionid*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
