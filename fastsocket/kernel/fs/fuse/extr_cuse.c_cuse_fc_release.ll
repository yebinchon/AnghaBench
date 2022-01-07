; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_cuse.c_cuse_fc_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_cuse.c_cuse_fc_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_conn = type { i32 }
%struct.cuse_conn = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fuse_conn*)* @cuse_fc_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cuse_fc_release(%struct.fuse_conn* %0) #0 {
  %2 = alloca %struct.fuse_conn*, align 8
  %3 = alloca %struct.cuse_conn*, align 8
  store %struct.fuse_conn* %0, %struct.fuse_conn** %2, align 8
  %4 = load %struct.fuse_conn*, %struct.fuse_conn** %2, align 8
  %5 = call %struct.cuse_conn* @fc_to_cc(%struct.fuse_conn* %4)
  store %struct.cuse_conn* %5, %struct.cuse_conn** %3, align 8
  %6 = load %struct.cuse_conn*, %struct.cuse_conn** %3, align 8
  %7 = call i32 @kfree(%struct.cuse_conn* %6)
  ret void
}

declare dso_local %struct.cuse_conn* @fc_to_cc(%struct.fuse_conn*) #1

declare dso_local i32 @kfree(%struct.cuse_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
