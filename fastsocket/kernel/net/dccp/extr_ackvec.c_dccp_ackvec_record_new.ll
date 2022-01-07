; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ackvec.c_dccp_ackvec_record_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ackvec.c_dccp_ackvec_record_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dccp_ackvec_record = type { i32 }

@dccp_ackvec_record_slab = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dccp_ackvec_record* ()* @dccp_ackvec_record_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dccp_ackvec_record* @dccp_ackvec_record_new() #0 {
  %1 = alloca %struct.dccp_ackvec_record*, align 8
  %2 = load i32, i32* @dccp_ackvec_record_slab, align 4
  %3 = load i32, i32* @GFP_ATOMIC, align 4
  %4 = call %struct.dccp_ackvec_record* @kmem_cache_alloc(i32 %2, i32 %3)
  store %struct.dccp_ackvec_record* %4, %struct.dccp_ackvec_record** %1, align 8
  %5 = load %struct.dccp_ackvec_record*, %struct.dccp_ackvec_record** %1, align 8
  %6 = icmp ne %struct.dccp_ackvec_record* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %0
  %8 = load %struct.dccp_ackvec_record*, %struct.dccp_ackvec_record** %1, align 8
  %9 = getelementptr inbounds %struct.dccp_ackvec_record, %struct.dccp_ackvec_record* %8, i32 0, i32 0
  %10 = call i32 @INIT_LIST_HEAD(i32* %9)
  br label %11

11:                                               ; preds = %7, %0
  %12 = load %struct.dccp_ackvec_record*, %struct.dccp_ackvec_record** %1, align 8
  ret %struct.dccp_ackvec_record* %12
}

declare dso_local %struct.dccp_ackvec_record* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
