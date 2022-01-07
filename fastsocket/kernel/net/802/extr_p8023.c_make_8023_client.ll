; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/802/extr_p8023.c_make_8023_client.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/802/extr_p8023.c_make_8023_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.datalink_proto = type { i32, i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@p8023_request = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.datalink_proto* @make_8023_client() #0 {
  %1 = alloca %struct.datalink_proto*, align 8
  %2 = load i32, i32* @GFP_ATOMIC, align 4
  %3 = call %struct.datalink_proto* @kmalloc(i32 16, i32 %2)
  store %struct.datalink_proto* %3, %struct.datalink_proto** %1, align 8
  %4 = load %struct.datalink_proto*, %struct.datalink_proto** %1, align 8
  %5 = icmp ne %struct.datalink_proto* %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %0
  %7 = load %struct.datalink_proto*, %struct.datalink_proto** %1, align 8
  %8 = getelementptr inbounds %struct.datalink_proto, %struct.datalink_proto* %7, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = load i32, i32* @p8023_request, align 4
  %10 = load %struct.datalink_proto*, %struct.datalink_proto** %1, align 8
  %11 = getelementptr inbounds %struct.datalink_proto, %struct.datalink_proto* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  br label %12

12:                                               ; preds = %6, %0
  %13 = load %struct.datalink_proto*, %struct.datalink_proto** %1, align 8
  ret %struct.datalink_proto* %13
}

declare dso_local %struct.datalink_proto* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
