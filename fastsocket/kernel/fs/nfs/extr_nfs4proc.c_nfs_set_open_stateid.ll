; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs_set_open_stateid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs_set_open_stateid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_state*, i32*, i32)* @nfs_set_open_stateid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_set_open_stateid(%struct.nfs4_state* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.nfs4_state*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.nfs4_state* %0, %struct.nfs4_state** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %8 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %7, i32 0, i32 0
  %9 = call i32 @write_seqlock(i32* %8)
  %10 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @nfs_set_open_stateid_locked(%struct.nfs4_state* %10, i32* %11, i32 %12)
  %14 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %15 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %14, i32 0, i32 0
  %16 = call i32 @write_sequnlock(i32* %15)
  ret void
}

declare dso_local i32 @write_seqlock(i32*) #1

declare dso_local i32 @nfs_set_open_stateid_locked(%struct.nfs4_state*, i32*, i32) #1

declare dso_local i32 @write_sequnlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
