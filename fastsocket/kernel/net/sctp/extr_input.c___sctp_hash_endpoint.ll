; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_input.c___sctp_hash_endpoint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_input.c___sctp_hash_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_hashbucket = type { i32, i32 }
%struct.sctp_endpoint = type { %struct.sctp_ep_common }
%struct.sctp_ep_common = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@sctp_ep_hashtable = common dso_local global %struct.sctp_hashbucket* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_endpoint*)* @__sctp_hash_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__sctp_hash_endpoint(%struct.sctp_endpoint* %0) #0 {
  %2 = alloca %struct.sctp_endpoint*, align 8
  %3 = alloca %struct.sctp_ep_common*, align 8
  %4 = alloca %struct.sctp_hashbucket*, align 8
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %2, align 8
  %5 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %2, align 8
  %6 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %5, i32 0, i32 0
  store %struct.sctp_ep_common* %6, %struct.sctp_ep_common** %3, align 8
  %7 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %3, align 8
  %8 = getelementptr inbounds %struct.sctp_ep_common, %struct.sctp_ep_common* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @sctp_ep_hashfn(i32 %10)
  %12 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %3, align 8
  %13 = getelementptr inbounds %struct.sctp_ep_common, %struct.sctp_ep_common* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load %struct.sctp_hashbucket*, %struct.sctp_hashbucket** @sctp_ep_hashtable, align 8
  %15 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %3, align 8
  %16 = getelementptr inbounds %struct.sctp_ep_common, %struct.sctp_ep_common* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.sctp_hashbucket, %struct.sctp_hashbucket* %14, i64 %17
  store %struct.sctp_hashbucket* %18, %struct.sctp_hashbucket** %4, align 8
  %19 = load %struct.sctp_hashbucket*, %struct.sctp_hashbucket** %4, align 8
  %20 = getelementptr inbounds %struct.sctp_hashbucket, %struct.sctp_hashbucket* %19, i32 0, i32 0
  %21 = call i32 @sctp_write_lock(i32* %20)
  %22 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %3, align 8
  %23 = getelementptr inbounds %struct.sctp_ep_common, %struct.sctp_ep_common* %22, i32 0, i32 1
  %24 = load %struct.sctp_hashbucket*, %struct.sctp_hashbucket** %4, align 8
  %25 = getelementptr inbounds %struct.sctp_hashbucket, %struct.sctp_hashbucket* %24, i32 0, i32 1
  %26 = call i32 @hlist_add_head(i32* %23, i32* %25)
  %27 = load %struct.sctp_hashbucket*, %struct.sctp_hashbucket** %4, align 8
  %28 = getelementptr inbounds %struct.sctp_hashbucket, %struct.sctp_hashbucket* %27, i32 0, i32 0
  %29 = call i32 @sctp_write_unlock(i32* %28)
  ret void
}

declare dso_local i64 @sctp_ep_hashfn(i32) #1

declare dso_local i32 @sctp_write_lock(i32*) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

declare dso_local i32 @sctp_write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
