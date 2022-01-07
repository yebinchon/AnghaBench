; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_ebitmap.h_ebitmap_netlbl_import.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_ebitmap.h_ebitmap_netlbl_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebitmap = type { i32 }
%struct.netlbl_lsm_secattr_catmap = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ebitmap*, %struct.netlbl_lsm_secattr_catmap*)* @ebitmap_netlbl_import to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebitmap_netlbl_import(%struct.ebitmap* %0, %struct.netlbl_lsm_secattr_catmap* %1) #0 {
  %3 = alloca %struct.ebitmap*, align 8
  %4 = alloca %struct.netlbl_lsm_secattr_catmap*, align 8
  store %struct.ebitmap* %0, %struct.ebitmap** %3, align 8
  store %struct.netlbl_lsm_secattr_catmap* %1, %struct.netlbl_lsm_secattr_catmap** %4, align 8
  %5 = load i32, i32* @ENOMEM, align 4
  %6 = sub nsw i32 0, %5
  ret i32 %6
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
