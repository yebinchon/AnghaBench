; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-tdep.c_ia64_unwind_dummy_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-tdep.c_ia64_unwind_dummy_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.frame_info = type { i32 }
%struct.frame_id = type { i32 }

@sp_regnum = common dso_local global i32 0, align 4
@IA64_BSP_REGNUM = common dso_local global i32 0, align 4
@gdbarch_debug = common dso_local global i32 0, align 4
@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"dummy frame id: code 0x%s, stack 0x%s, special 0x%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gdbarch*, %struct.frame_info*)* @ia64_unwind_dummy_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ia64_unwind_dummy_id(%struct.gdbarch* %0, %struct.frame_info* %1) #0 {
  %3 = alloca %struct.frame_id, align 4
  %4 = alloca %struct.gdbarch*, align 8
  %5 = alloca %struct.frame_info*, align 8
  %6 = alloca [8 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gdbarch* %0, %struct.gdbarch** %4, align 8
  store %struct.frame_info* %1, %struct.frame_info** %5, align 8
  %9 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %10 = load i32, i32* @sp_regnum, align 4
  %11 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %12 = call i32 @frame_unwind_register(%struct.frame_info* %9, i32 %10, i8* %11)
  %13 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %14 = call i32 @extract_unsigned_integer(i8* %13, i32 8)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %16 = load i32, i32* @IA64_BSP_REGNUM, align 4
  %17 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %18 = call i32 @frame_unwind_register(%struct.frame_info* %15, i32 %16, i8* %17)
  %19 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %20 = call i32 @extract_unsigned_integer(i8* %19, i32 8)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* @gdbarch_debug, align 4
  %22 = icmp sge i32 %21, 1
  br i1 %22, label %23, label %33

23:                                               ; preds = %2
  %24 = load i32, i32* @gdb_stdlog, align 4
  %25 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %26 = call i32 @frame_pc_unwind(%struct.frame_info* %25)
  %27 = call i32 @paddr_nz(i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @paddr_nz(i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @paddr_nz(i32 %30)
  %32 = call i32 @fprintf_unfiltered(i32 %24, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %29, i32 %31)
  br label %33

33:                                               ; preds = %23, %2
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %36 = call i32 @frame_pc_unwind(%struct.frame_info* %35)
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @frame_id_build_special(i32 %34, i32 %36, i32 %37)
  %39 = getelementptr inbounds %struct.frame_id, %struct.frame_id* %3, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds %struct.frame_id, %struct.frame_id* %3, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  ret i32 %41
}

declare dso_local i32 @frame_unwind_register(%struct.frame_info*, i32, i8*) #1

declare dso_local i32 @extract_unsigned_integer(i8*, i32) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @paddr_nz(i32) #1

declare dso_local i32 @frame_pc_unwind(%struct.frame_info*) #1

declare dso_local i32 @frame_id_build_special(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
