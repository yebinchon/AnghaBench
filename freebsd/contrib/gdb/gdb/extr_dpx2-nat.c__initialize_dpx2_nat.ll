; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dpx2-nat.c__initialize_dpx2_nat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dpx2-nat.c__initialize_dpx2_nat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utsname = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"DPX/2200\00", align 1
@KERNEL_U_ADDR_200 = common dso_local global i32 0, align 4
@kernel_u_addr = common dso_local global i32 0, align 4
@KERNEL_U_ADDR_300 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_dpx2_nat() #0 {
  %1 = alloca %struct.utsname, align 4
  %2 = call i64 @uname(%struct.utsname* %1)
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.utsname, %struct.utsname* %1, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @strcmp(i32 %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = load i32, i32* @KERNEL_U_ADDR_200, align 4
  store i32 %10, i32* @kernel_u_addr, align 4
  br label %13

11:                                               ; preds = %4, %0
  %12 = load i32, i32* @KERNEL_U_ADDR_300, align 4
  store i32 %12, i32* @kernel_u_addr, align 4
  br label %13

13:                                               ; preds = %11, %9
  ret void
}

declare dso_local i64 @uname(%struct.utsname*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
