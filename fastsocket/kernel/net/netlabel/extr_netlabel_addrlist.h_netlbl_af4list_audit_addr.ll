; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_addrlist.h_netlbl_af4list_audit_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_addrlist.h_netlbl_af4list_audit_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audit_buffer*, i32, i8*, i32, i32)* @netlbl_af4list_audit_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netlbl_af4list_audit_addr(%struct.audit_buffer* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.audit_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.audit_buffer* %0, %struct.audit_buffer** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
