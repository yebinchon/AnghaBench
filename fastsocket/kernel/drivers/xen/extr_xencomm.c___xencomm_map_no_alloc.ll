; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_xencomm.c___xencomm_map_no_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_xencomm.c___xencomm_map_no_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xencomm_handle = type { i32 }
%struct.xencomm_mini = type { i32 }
%struct.xencomm_desc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xencomm_handle* @__xencomm_map_no_alloc(i8* %0, i64 %1, %struct.xencomm_mini* %2) #0 {
  %4 = alloca %struct.xencomm_handle*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.xencomm_mini*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.xencomm_desc*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.xencomm_mini* %2, %struct.xencomm_mini** %7, align 8
  store %struct.xencomm_desc* null, %struct.xencomm_desc** %9, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = ptrtoint i8* %10 to i64
  %12 = call i64 @xencomm_is_phys_contiguous(i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = call %struct.xencomm_handle* @xencomm_create_inline(i8* %15)
  store %struct.xencomm_handle* %16, %struct.xencomm_handle** %4, align 8
  br label %28

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.xencomm_mini*, %struct.xencomm_mini** %7, align 8
  %21 = call i32 @xencomm_create_mini(i8* %18, i64 %19, %struct.xencomm_mini* %20, %struct.xencomm_desc** %9)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store %struct.xencomm_handle* null, %struct.xencomm_handle** %4, align 8
  br label %28

25:                                               ; preds = %17
  %26 = load %struct.xencomm_desc*, %struct.xencomm_desc** %9, align 8
  %27 = call %struct.xencomm_handle* @xencomm_pa(%struct.xencomm_desc* %26)
  store %struct.xencomm_handle* %27, %struct.xencomm_handle** %4, align 8
  br label %28

28:                                               ; preds = %25, %24, %14
  %29 = load %struct.xencomm_handle*, %struct.xencomm_handle** %4, align 8
  ret %struct.xencomm_handle* %29
}

declare dso_local i64 @xencomm_is_phys_contiguous(i64) #1

declare dso_local %struct.xencomm_handle* @xencomm_create_inline(i8*) #1

declare dso_local i32 @xencomm_create_mini(i8*, i64, %struct.xencomm_mini*, %struct.xencomm_desc**) #1

declare dso_local %struct.xencomm_handle* @xencomm_pa(%struct.xencomm_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
