; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_kapi.c_netlbl_cfg_cipsov4_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_kapi.c_netlbl_cfg_cipsov4_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cipso_v4_doi = type { i32 }
%struct.netlbl_audit = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netlbl_cfg_cipsov4_add(%struct.cipso_v4_doi* %0, %struct.netlbl_audit* %1) #0 {
  %3 = alloca %struct.cipso_v4_doi*, align 8
  %4 = alloca %struct.netlbl_audit*, align 8
  store %struct.cipso_v4_doi* %0, %struct.cipso_v4_doi** %3, align 8
  store %struct.netlbl_audit* %1, %struct.netlbl_audit** %4, align 8
  %5 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %3, align 8
  %6 = load %struct.netlbl_audit*, %struct.netlbl_audit** %4, align 8
  %7 = call i32 @cipso_v4_doi_add(%struct.cipso_v4_doi* %5, %struct.netlbl_audit* %6)
  ret i32 %7
}

declare dso_local i32 @cipso_v4_doi_add(%struct.cipso_v4_doi*, %struct.netlbl_audit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
