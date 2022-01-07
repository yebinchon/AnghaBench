; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ackvec.c_dccp_ackvec_record_delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ackvec.c_dccp_ackvec_record_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dccp_ackvec_record = type { i32 }

@dccp_ackvec_record_slab = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dccp_ackvec_record*)* @dccp_ackvec_record_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dccp_ackvec_record_delete(%struct.dccp_ackvec_record* %0) #0 {
  %2 = alloca %struct.dccp_ackvec_record*, align 8
  store %struct.dccp_ackvec_record* %0, %struct.dccp_ackvec_record** %2, align 8
  %3 = load %struct.dccp_ackvec_record*, %struct.dccp_ackvec_record** %2, align 8
  %4 = icmp eq %struct.dccp_ackvec_record* %3, null
  %5 = zext i1 %4 to i32
  %6 = call i64 @unlikely(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %20

9:                                                ; preds = %1
  %10 = load %struct.dccp_ackvec_record*, %struct.dccp_ackvec_record** %2, align 8
  %11 = getelementptr inbounds %struct.dccp_ackvec_record, %struct.dccp_ackvec_record* %10, i32 0, i32 0
  %12 = call i32 @list_empty(i32* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load i32, i32* @dccp_ackvec_record_slab, align 4
  %18 = load %struct.dccp_ackvec_record*, %struct.dccp_ackvec_record** %2, align 8
  %19 = call i32 @kmem_cache_free(i32 %17, %struct.dccp_ackvec_record* %18)
  br label %20

20:                                               ; preds = %9, %8
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.dccp_ackvec_record*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
