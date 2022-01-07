; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_send_message.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_send_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_mhandle = type { i32 }
%struct.dlm_message = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_mhandle*, %struct.dlm_message*)* @send_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_message(%struct.dlm_mhandle* %0, %struct.dlm_message* %1) #0 {
  %3 = alloca %struct.dlm_mhandle*, align 8
  %4 = alloca %struct.dlm_message*, align 8
  store %struct.dlm_mhandle* %0, %struct.dlm_mhandle** %3, align 8
  store %struct.dlm_message* %1, %struct.dlm_message** %4, align 8
  %5 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %6 = call i32 @dlm_message_out(%struct.dlm_message* %5)
  %7 = load %struct.dlm_mhandle*, %struct.dlm_mhandle** %3, align 8
  %8 = call i32 @dlm_lowcomms_commit_buffer(%struct.dlm_mhandle* %7)
  ret i32 0
}

declare dso_local i32 @dlm_message_out(%struct.dlm_message*) #1

declare dso_local i32 @dlm_lowcomms_commit_buffer(%struct.dlm_mhandle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
