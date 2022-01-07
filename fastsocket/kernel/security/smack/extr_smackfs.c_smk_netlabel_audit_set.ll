; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/smack/extr_smackfs.c_smk_netlabel_audit_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/smack/extr_smackfs.c_smk_netlabel_audit_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlbl_audit = type { i32, i32, i32 }

@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netlbl_audit*)* @smk_netlabel_audit_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smk_netlabel_audit_set(%struct.netlbl_audit* %0) #0 {
  %2 = alloca %struct.netlbl_audit*, align 8
  store %struct.netlbl_audit* %0, %struct.netlbl_audit** %2, align 8
  %3 = load i32, i32* @current, align 4
  %4 = call i32 @audit_get_loginuid(i32 %3)
  %5 = load %struct.netlbl_audit*, %struct.netlbl_audit** %2, align 8
  %6 = getelementptr inbounds %struct.netlbl_audit, %struct.netlbl_audit* %5, i32 0, i32 2
  store i32 %4, i32* %6, align 4
  %7 = load i32, i32* @current, align 4
  %8 = call i32 @audit_get_sessionid(i32 %7)
  %9 = load %struct.netlbl_audit*, %struct.netlbl_audit** %2, align 8
  %10 = getelementptr inbounds %struct.netlbl_audit, %struct.netlbl_audit* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = call i32 (...) @current_security()
  %12 = call i32 @smack_to_secid(i32 %11)
  %13 = load %struct.netlbl_audit*, %struct.netlbl_audit** %2, align 8
  %14 = getelementptr inbounds %struct.netlbl_audit, %struct.netlbl_audit* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  ret void
}

declare dso_local i32 @audit_get_loginuid(i32) #1

declare dso_local i32 @audit_get_sessionid(i32) #1

declare dso_local i32 @smack_to_secid(i32) #1

declare dso_local i32 @current_security(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
