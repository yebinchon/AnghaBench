; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kgdb.c_gdb_cmd_setregs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kgdb.c_gdb_cmd_setregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgdb_state = type { i32 }

@remcom_in_buffer = common dso_local global i32* null, align 8
@gdb_regs = common dso_local global i64 0, align 8
@NUMREGBYTES = common dso_local global i32 0, align 4
@kgdb_usethread = common dso_local global i64 0, align 8
@current = common dso_local global i64 0, align 8
@remcom_out_buffer = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kgdb_state*)* @gdb_cmd_setregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdb_cmd_setregs(%struct.kgdb_state* %0) #0 {
  %2 = alloca %struct.kgdb_state*, align 8
  store %struct.kgdb_state* %0, %struct.kgdb_state** %2, align 8
  %3 = load i32*, i32** @remcom_in_buffer, align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 1
  %5 = load i64, i64* @gdb_regs, align 8
  %6 = inttoptr i64 %5 to i8*
  %7 = load i32, i32* @NUMREGBYTES, align 4
  %8 = call i32 @kgdb_hex2mem(i32* %4, i8* %6, i32 %7)
  %9 = load i64, i64* @kgdb_usethread, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load i64, i64* @kgdb_usethread, align 8
  %13 = load i64, i64* @current, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load i32, i32* @remcom_out_buffer, align 4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  %19 = call i32 @error_packet(i32 %16, i32 %18)
  br label %28

20:                                               ; preds = %11, %1
  %21 = load i64, i64* @gdb_regs, align 8
  %22 = load %struct.kgdb_state*, %struct.kgdb_state** %2, align 8
  %23 = getelementptr inbounds %struct.kgdb_state, %struct.kgdb_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @gdb_regs_to_pt_regs(i64 %21, i32 %24)
  %26 = load i32, i32* @remcom_out_buffer, align 4
  %27 = call i32 @strcpy(i32 %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %20, %15
  ret void
}

declare dso_local i32 @kgdb_hex2mem(i32*, i8*, i32) #1

declare dso_local i32 @error_packet(i32, i32) #1

declare dso_local i32 @gdb_regs_to_pt_regs(i64, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
