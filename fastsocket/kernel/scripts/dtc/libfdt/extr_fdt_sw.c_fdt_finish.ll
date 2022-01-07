; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/libfdt/extr_fdt_sw.c_fdt_finish.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/libfdt/extr_fdt_sw.c_fdt_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdt_property = type { i8* }

@FDT_ERR_NOSPACE = common dso_local global i32 0, align 4
@FDT_END = common dso_local global i64 0, align 8
@FDT_PROP = common dso_local global i64 0, align 8
@FDT_ERR_BADSTRUCTURE = common dso_local global i32 0, align 4
@FDT_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdt_finish(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fdt_property*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  store i8* %13, i8** %4, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @FDT_SW_CHECK_HEADER(i8* %14)
  %16 = load i8*, i8** %3, align 8
  %17 = call i64* @_fdt_grab_space(i8* %16, i32 8)
  store i64* %17, i64** %5, align 8
  %18 = load i64*, i64** %5, align 8
  %19 = icmp ne i64* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @FDT_ERR_NOSPACE, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %97

23:                                               ; preds = %1
  %24 = load i64, i64* @FDT_END, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i8* @cpu_to_fdt32(i32 %25)
  %27 = ptrtoint i8* %26 to i64
  %28 = load i64*, i64** %5, align 8
  store i64 %27, i64* %28, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @fdt_totalsize(i8* %29)
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @fdt_size_dt_strings(i8* %31)
  %33 = sub nsw i32 %30, %32
  store i32 %33, i32* %6, align 4
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @fdt_off_dt_struct(i8* %34)
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @fdt_size_dt_struct(i8* %36)
  %38 = add nsw i32 %35, %37
  store i32 %38, i32* %7, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8*, i8** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 @fdt_size_dt_strings(i8* %47)
  %49 = call i32 @memmove(i8* %42, i8* %46, i32 %48)
  %50 = load i8*, i8** %3, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @fdt_set_off_dt_strings(i8* %50, i32 %51)
  store i32 0, i32* %9, align 4
  br label %53

53:                                               ; preds = %85, %23
  %54 = load i8*, i8** %3, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i64 @fdt_next_tag(i8* %54, i32 %55, i32* %10)
  store i64 %56, i64* %8, align 8
  %57 = load i64, i64* @FDT_END, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %87

59:                                               ; preds = %53
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* @FDT_PROP, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %85

63:                                               ; preds = %59
  %64 = load i8*, i8** %3, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call %struct.fdt_property* @fdt_offset_ptr_w(i8* %64, i32 %65, i32 8)
  store %struct.fdt_property* %66, %struct.fdt_property** %11, align 8
  %67 = load %struct.fdt_property*, %struct.fdt_property** %11, align 8
  %68 = icmp ne %struct.fdt_property* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %63
  %70 = load i32, i32* @FDT_ERR_BADSTRUCTURE, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %97

72:                                               ; preds = %63
  %73 = load %struct.fdt_property*, %struct.fdt_property** %11, align 8
  %74 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @fdt32_to_cpu(i8* %75)
  store i32 %76, i32* %12, align 4
  %77 = load i8*, i8** %3, align 8
  %78 = call i32 @fdt_size_dt_strings(i8* %77)
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = call i8* @cpu_to_fdt32(i32 %81)
  %83 = load %struct.fdt_property*, %struct.fdt_property** %11, align 8
  %84 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  br label %85

85:                                               ; preds = %72, %59
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %9, align 4
  br label %53

87:                                               ; preds = %53
  %88 = load i8*, i8** %3, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load i8*, i8** %3, align 8
  %91 = call i32 @fdt_size_dt_strings(i8* %90)
  %92 = add nsw i32 %89, %91
  %93 = call i32 @fdt_set_totalsize(i8* %88, i32 %92)
  %94 = load i8*, i8** %3, align 8
  %95 = load i32, i32* @FDT_MAGIC, align 4
  %96 = call i32 @fdt_set_magic(i8* %94, i32 %95)
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %87, %69, %20
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @FDT_SW_CHECK_HEADER(i8*) #1

declare dso_local i64* @_fdt_grab_space(i8*, i32) #1

declare dso_local i8* @cpu_to_fdt32(i32) #1

declare dso_local i32 @fdt_totalsize(i8*) #1

declare dso_local i32 @fdt_size_dt_strings(i8*) #1

declare dso_local i32 @fdt_off_dt_struct(i8*) #1

declare dso_local i32 @fdt_size_dt_struct(i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @fdt_set_off_dt_strings(i8*, i32) #1

declare dso_local i64 @fdt_next_tag(i8*, i32, i32*) #1

declare dso_local %struct.fdt_property* @fdt_offset_ptr_w(i8*, i32, i32) #1

declare dso_local i32 @fdt32_to_cpu(i8*) #1

declare dso_local i32 @fdt_set_totalsize(i8*, i32) #1

declare dso_local i32 @fdt_set_magic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
