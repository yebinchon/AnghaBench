; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_modpost.c_export_from_sec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_modpost.c_export_from_sec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_info = type { i64, i64, i64, i64, i64 }

@export_plain = common dso_local global i32 0, align 4
@export_unused = common dso_local global i32 0, align 4
@export_gpl = common dso_local global i32 0, align 4
@export_unused_gpl = common dso_local global i32 0, align 4
@export_gpl_future = common dso_local global i32 0, align 4
@export_unknown = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elf_info*, i64)* @export_from_sec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @export_from_sec(%struct.elf_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.elf_info*, align 8
  %5 = alloca i64, align 8
  store %struct.elf_info* %0, %struct.elf_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %8 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %6, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @export_plain, align 4
  store i32 %12, i32* %3, align 4
  br label %47

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %16 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* @export_unused, align 4
  store i32 %20, i32* %3, align 4
  br label %47

21:                                               ; preds = %13
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %24 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @export_gpl, align 4
  store i32 %28, i32* %3, align 4
  br label %47

29:                                               ; preds = %21
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %32 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @export_unused_gpl, align 4
  store i32 %36, i32* %3, align 4
  br label %47

37:                                               ; preds = %29
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %40 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @export_gpl_future, align 4
  store i32 %44, i32* %3, align 4
  br label %47

45:                                               ; preds = %37
  %46 = load i32, i32* @export_unknown, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %43, %35, %27, %19, %11
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
