; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_amd64-tdep.c_amd64_unwind_dummy_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_amd64-tdep.c_amd64_unwind_dummy_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.frame_info = type { i32 }
%struct.frame_id = type { i32 }

@AMD64_RBP_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gdbarch*, %struct.frame_info*)* @amd64_unwind_dummy_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd64_unwind_dummy_id(%struct.gdbarch* %0, %struct.frame_info* %1) #0 {
  %3 = alloca %struct.frame_id, align 4
  %4 = alloca %struct.gdbarch*, align 8
  %5 = alloca %struct.frame_info*, align 8
  %6 = alloca [8 x i8], align 1
  %7 = alloca i64, align 8
  store %struct.gdbarch* %0, %struct.gdbarch** %4, align 8
  store %struct.frame_info* %1, %struct.frame_info** %5, align 8
  %8 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %9 = load i32, i32* @AMD64_RBP_REGNUM, align 4
  %10 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %11 = call i32 @frame_unwind_register(%struct.frame_info* %8, i32 %9, i8* %10)
  %12 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %13 = call i64 @extract_unsigned_integer(i8* %12, i32 8)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = add nsw i64 %14, 16
  %16 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %17 = call i32 @frame_pc_unwind(%struct.frame_info* %16)
  %18 = call i32 @frame_id_build(i64 %15, i32 %17)
  %19 = getelementptr inbounds %struct.frame_id, %struct.frame_id* %3, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.frame_id, %struct.frame_id* %3, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  ret i32 %21
}

declare dso_local i32 @frame_unwind_register(%struct.frame_info*, i32, i8*) #1

declare dso_local i64 @extract_unsigned_integer(i8*, i32) #1

declare dso_local i32 @frame_id_build(i64, i32) #1

declare dso_local i32 @frame_pc_unwind(%struct.frame_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
