; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kgdb.c_gdb_cmd_detachkill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kgdb.c_gdb_cmd_detachkill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgdb_state = type { i32 }

@remcom_in_buffer = common dso_local global i8* null, align 8
@remcom_out_buffer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@kgdb_connected = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kgdb_state*)* @gdb_cmd_detachkill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdb_cmd_detachkill(%struct.kgdb_state* %0) #0 {
  %2 = alloca %struct.kgdb_state*, align 8
  %3 = alloca i32, align 4
  store %struct.kgdb_state* %0, %struct.kgdb_state** %2, align 8
  %4 = load i8*, i8** @remcom_in_buffer, align 8
  %5 = getelementptr inbounds i8, i8* %4, i64 0
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 68
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = call i32 (...) @remove_all_break()
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load i32, i32* @remcom_out_buffer, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @error_packet(i32 %14, i32 %15)
  br label %20

17:                                               ; preds = %9
  %18 = load i32, i32* @remcom_out_buffer, align 4
  %19 = call i32 @strcpy(i32 %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* @kgdb_connected, align 8
  br label %20

20:                                               ; preds = %17, %13
  %21 = load i32, i32* @remcom_out_buffer, align 4
  %22 = call i32 @put_packet(i32 %21)
  br label %25

23:                                               ; preds = %1
  %24 = call i32 (...) @remove_all_break()
  store i64 0, i64* @kgdb_connected, align 8
  br label %25

25:                                               ; preds = %23, %20
  ret void
}

declare dso_local i32 @remove_all_break(...) #1

declare dso_local i32 @error_packet(i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @put_packet(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
