; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_input.c___sctp_hash_established.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_input.c___sctp_hash_established.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_hashbucket = type { i32, i32 }
%struct.sctp_association = type { %struct.TYPE_4__, %struct.sctp_ep_common }
%struct.TYPE_4__ = type { i32 }
%struct.sctp_ep_common = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@sctp_assoc_hashtable = common dso_local global %struct.sctp_hashbucket* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_association*)* @__sctp_hash_established to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__sctp_hash_established(%struct.sctp_association* %0) #0 {
  %2 = alloca %struct.sctp_association*, align 8
  %3 = alloca %struct.sctp_ep_common*, align 8
  %4 = alloca %struct.sctp_hashbucket*, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %2, align 8
  %5 = load %struct.sctp_association*, %struct.sctp_association** %2, align 8
  %6 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %5, i32 0, i32 1
  store %struct.sctp_ep_common* %6, %struct.sctp_ep_common** %3, align 8
  %7 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %3, align 8
  %8 = getelementptr inbounds %struct.sctp_ep_common, %struct.sctp_ep_common* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.sctp_association*, %struct.sctp_association** %2, align 8
  %12 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @sctp_assoc_hashfn(i32 %10, i32 %14)
  %16 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %3, align 8
  %17 = getelementptr inbounds %struct.sctp_ep_common, %struct.sctp_ep_common* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.sctp_hashbucket*, %struct.sctp_hashbucket** @sctp_assoc_hashtable, align 8
  %19 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %3, align 8
  %20 = getelementptr inbounds %struct.sctp_ep_common, %struct.sctp_ep_common* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.sctp_hashbucket, %struct.sctp_hashbucket* %18, i64 %21
  store %struct.sctp_hashbucket* %22, %struct.sctp_hashbucket** %4, align 8
  %23 = load %struct.sctp_hashbucket*, %struct.sctp_hashbucket** %4, align 8
  %24 = getelementptr inbounds %struct.sctp_hashbucket, %struct.sctp_hashbucket* %23, i32 0, i32 0
  %25 = call i32 @sctp_write_lock(i32* %24)
  %26 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %3, align 8
  %27 = getelementptr inbounds %struct.sctp_ep_common, %struct.sctp_ep_common* %26, i32 0, i32 1
  %28 = load %struct.sctp_hashbucket*, %struct.sctp_hashbucket** %4, align 8
  %29 = getelementptr inbounds %struct.sctp_hashbucket, %struct.sctp_hashbucket* %28, i32 0, i32 1
  %30 = call i32 @hlist_add_head(i32* %27, i32* %29)
  %31 = load %struct.sctp_hashbucket*, %struct.sctp_hashbucket** %4, align 8
  %32 = getelementptr inbounds %struct.sctp_hashbucket, %struct.sctp_hashbucket* %31, i32 0, i32 0
  %33 = call i32 @sctp_write_unlock(i32* %32)
  ret void
}

declare dso_local i64 @sctp_assoc_hashfn(i32, i32) #1

declare dso_local i32 @sctp_write_lock(i32*) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

declare dso_local i32 @sctp_write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
