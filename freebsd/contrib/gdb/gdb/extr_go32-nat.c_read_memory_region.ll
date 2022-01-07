; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_go32-nat.c_read_memory_region.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_go32-nat.c_read_memory_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_dos_ds = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i64)* @read_memory_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_memory_region(i64 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i32, i32* @_dos_ds, align 4
  %13 = call i64 @__dpmi_get_segment_limit(i32 %12)
  store i64 %13, i64* %7, align 8
  store i32 1, i32* %8, align 4
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = sub i64 %15, %16
  %18 = icmp ule i64 %14, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @dosmemget(i64 %20, i64 %21, i8* %22)
  br label %76

24:                                               ; preds = %3
  %25 = call i32 @__dpmi_allocate_ldt_descriptors(i32 1)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 0, i32* %8, align 4
  br label %75

29:                                               ; preds = %24
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @__dpmi_get_descriptor_access_rights(i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i64, i64* %6, align 8
  %33 = sub i64 %32, 1
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %6, align 8
  %35 = icmp ugt i64 %34, 1048576
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load i32, i32* %10, align 4
  %38 = or i32 %37, 32768
  store i32 %38, i32* %10, align 4
  %39 = load i64, i64* %11, align 8
  %40 = or i64 %39, 4095
  store i64 %40, i64* %11, align 8
  br label %44

41:                                               ; preds = %29
  %42 = load i32, i32* %10, align 4
  %43 = and i32 %42, -32769
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i32, i32* %9, align 4
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @__dpmi_set_segment_base_address(i32 %45, i64 %46)
  %48 = icmp ne i32 %47, -1
  br i1 %48, label %49, label %71

49:                                               ; preds = %44
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @__dpmi_set_descriptor_access_rights(i32 %50, i32 %51)
  %53 = icmp ne i32 %52, -1
  br i1 %53, label %54, label %71

54:                                               ; preds = %49
  %55 = load i32, i32* %9, align 4
  %56 = load i64, i64* %11, align 8
  %57 = call i32 @__dpmi_set_segment_limit(i32 %55, i64 %56)
  %58 = icmp ne i32 %57, -1
  br i1 %58, label %59, label %71

59:                                               ; preds = %54
  %60 = load i32, i32* %9, align 4
  %61 = call i64 @__dpmi_get_segment_limit(i32 %60)
  %62 = load i64, i64* %11, align 8
  %63 = icmp uge i64 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load i32, i32* %9, align 4
  %66 = call i32 (...) @_my_ds()
  %67 = load i8*, i8** %5, align 8
  %68 = ptrtoint i8* %67 to i32
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @movedata(i32 %65, i32 0, i32 %66, i32 %68, i64 %69)
  br label %72

71:                                               ; preds = %59, %54, %49, %44
  store i32 0, i32* %8, align 4
  br label %72

72:                                               ; preds = %71, %64
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @__dpmi_free_ldt_descriptor(i32 %73)
  br label %75

75:                                               ; preds = %72, %28
  br label %76

76:                                               ; preds = %75, %19
  %77 = load i32, i32* %8, align 4
  ret i32 %77
}

declare dso_local i64 @__dpmi_get_segment_limit(i32) #1

declare dso_local i32 @dosmemget(i64, i64, i8*) #1

declare dso_local i32 @__dpmi_allocate_ldt_descriptors(i32) #1

declare dso_local i32 @__dpmi_get_descriptor_access_rights(i32) #1

declare dso_local i32 @__dpmi_set_segment_base_address(i32, i64) #1

declare dso_local i32 @__dpmi_set_descriptor_access_rights(i32, i32) #1

declare dso_local i32 @__dpmi_set_segment_limit(i32, i64) #1

declare dso_local i32 @movedata(i32, i32, i32, i32, i64) #1

declare dso_local i32 @_my_ds(...) #1

declare dso_local i32 @__dpmi_free_ldt_descriptor(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
