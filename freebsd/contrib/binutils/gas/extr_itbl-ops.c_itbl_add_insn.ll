; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_itbl-ops.c_itbl_add_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_itbl-ops.c_itbl_add_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.itbl_entry = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@e_insn = common dso_local global i32 0, align 4
@itbl_num_opcodes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.itbl_entry* @itbl_add_insn(i32 %0, i8* %1, i64 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.itbl_entry*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @get_processor(i32 %14)
  %16 = load i32, i32* @e_insn, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call %struct.itbl_entry* @alloc_entry(i32 %15, i32 %16, i8* %17, i64 %18)
  store %struct.itbl_entry* %19, %struct.itbl_entry** %13, align 8
  %20 = load %struct.itbl_entry*, %struct.itbl_entry** %13, align 8
  %21 = icmp ne %struct.itbl_entry* %20, null
  br i1 %21, label %22, label %36

22:                                               ; preds = %6
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.itbl_entry*, %struct.itbl_entry** %13, align 8
  %25 = getelementptr inbounds %struct.itbl_entry, %struct.itbl_entry* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.itbl_entry*, %struct.itbl_entry** %13, align 8
  %29 = getelementptr inbounds %struct.itbl_entry, %struct.itbl_entry* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  %31 = load i64, i64* %12, align 8
  %32 = load %struct.itbl_entry*, %struct.itbl_entry** %13, align 8
  %33 = getelementptr inbounds %struct.itbl_entry, %struct.itbl_entry* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load i32, i32* @itbl_num_opcodes, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* @itbl_num_opcodes, align 4
  br label %36

36:                                               ; preds = %22, %6
  %37 = load %struct.itbl_entry*, %struct.itbl_entry** %13, align 8
  ret %struct.itbl_entry* %37
}

declare dso_local %struct.itbl_entry* @alloc_entry(i32, i32, i8*, i64) #1

declare dso_local i32 @get_processor(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
