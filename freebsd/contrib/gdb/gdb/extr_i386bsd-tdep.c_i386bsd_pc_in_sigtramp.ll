; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386bsd-tdep.c_i386bsd_pc_in_sigtramp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386bsd-tdep.c_i386bsd_pc_in_sigtramp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch_tdep = type { i64, i64 }

@current_gdbarch = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i386bsd_pc_in_sigtramp(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.gdbarch_tdep*, align 8
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* @current_gdbarch, align 4
  %7 = call %struct.gdbarch_tdep* @gdbarch_tdep(i32 %6)
  store %struct.gdbarch_tdep* %7, %struct.gdbarch_tdep** %5, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %10 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sge i64 %8, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i64, i64* %3, align 8
  %15 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %16 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %14, %17
  br label %19

19:                                               ; preds = %13, %2
  %20 = phi i1 [ false, %2 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  ret i32 %21
}

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
