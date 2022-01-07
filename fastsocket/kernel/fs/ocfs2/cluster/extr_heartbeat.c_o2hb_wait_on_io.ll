; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_wait_on_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_wait_on_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2hb_region = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.o2hb_bio_wait_ctxt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.o2hb_region*, %struct.o2hb_bio_wait_ctxt*)* @o2hb_wait_on_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @o2hb_wait_on_io(%struct.o2hb_region* %0, %struct.o2hb_bio_wait_ctxt* %1) #0 {
  %3 = alloca %struct.o2hb_region*, align 8
  %4 = alloca %struct.o2hb_bio_wait_ctxt*, align 8
  %5 = alloca %struct.address_space*, align 8
  store %struct.o2hb_region* %0, %struct.o2hb_region** %3, align 8
  store %struct.o2hb_bio_wait_ctxt* %1, %struct.o2hb_bio_wait_ctxt** %4, align 8
  %6 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %7 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.address_space*, %struct.address_space** %11, align 8
  store %struct.address_space* %12, %struct.address_space** %5, align 8
  %13 = load %struct.address_space*, %struct.address_space** %5, align 8
  %14 = call i32 @blk_run_address_space(%struct.address_space* %13)
  %15 = load %struct.o2hb_bio_wait_ctxt*, %struct.o2hb_bio_wait_ctxt** %4, align 8
  %16 = call i32 @o2hb_bio_wait_dec(%struct.o2hb_bio_wait_ctxt* %15, i32 1)
  %17 = load %struct.o2hb_bio_wait_ctxt*, %struct.o2hb_bio_wait_ctxt** %4, align 8
  %18 = getelementptr inbounds %struct.o2hb_bio_wait_ctxt, %struct.o2hb_bio_wait_ctxt* %17, i32 0, i32 0
  %19 = call i32 @wait_for_completion(i32* %18)
  ret void
}

declare dso_local i32 @blk_run_address_space(%struct.address_space*) #1

declare dso_local i32 @o2hb_bio_wait_dec(%struct.o2hb_bio_wait_ctxt*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
