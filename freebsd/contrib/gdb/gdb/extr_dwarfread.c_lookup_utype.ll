; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_lookup_utype.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_lookup_utype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@dbroff = common dso_local global i32 0, align 4
@numutypes = common dso_local global i32 0, align 4
@DIE_ID = common dso_local global i32 0, align 4
@DIE_NAME = common dso_local global i32 0, align 4
@utypes = common dso_local global %struct.type** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.type* (i32)* @lookup_utype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.type* @lookup_utype(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.type*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store %struct.type* null, %struct.type** %3, align 8
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @dbroff, align 4
  %7 = sub nsw i32 %5, %6
  %8 = sdiv i32 %7, 4
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @numutypes, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %11, %1
  %16 = load i32, i32* @DIE_ID, align 4
  %17 = load i32, i32* @DIE_NAME, align 4
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @bad_die_ref_complaint(i32 %16, i32 %17, i32 %18)
  br label %26

20:                                               ; preds = %11
  %21 = load %struct.type**, %struct.type*** @utypes, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.type*, %struct.type** %21, i64 %23
  %25 = load %struct.type*, %struct.type** %24, align 8
  store %struct.type* %25, %struct.type** %3, align 8
  br label %26

26:                                               ; preds = %20, %15
  %27 = load %struct.type*, %struct.type** %3, align 8
  ret %struct.type* %27
}

declare dso_local i32 @bad_die_ref_complaint(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
