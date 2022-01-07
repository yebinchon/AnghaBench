; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/libfdt/extr_fdt_rw.c_fdt_open_into.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/libfdt/extr_fdt_rw.c_fdt_open_into.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FDT_END = common dso_local global i64 0, align 8
@FDT_ERR_NOSPACE = common dso_local global i32 0, align 4
@FDT_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdt_open_into(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %12, align 8
  %16 = load i8*, i8** %12, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @fdt_totalsize(i8* %17)
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %16, i64 %19
  store i8* %20, i8** %13, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @FDT_CHECK_HEADER(i8* %21)
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @fdt_num_mem_rsv(i8* %23)
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 4
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %9, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @fdt_version(i8* %29)
  %31 = icmp sge i32 %30, 17
  br i1 %31, label %32, label %35

32:                                               ; preds = %3
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @fdt_size_dt_struct(i8* %33)
  store i32 %34, i32* %10, align 4
  br label %44

35:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %42, %35
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i64 @fdt_next_tag(i8* %37, i32 %38, i32* %10)
  %40 = load i64, i64* @FDT_END, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %36

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %32
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @_fdt_blocks_misordered(i8* %45, i32 %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %68, label %50

50:                                               ; preds = %44
  %51 = load i8*, i8** %5, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @fdt_move(i8* %51, i8* %52, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %4, align 4
  br label %136

59:                                               ; preds = %50
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @fdt_set_version(i8* %60, i32 17)
  %62 = load i8*, i8** %6, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @fdt_set_size_dt_struct(i8* %62, i32 %63)
  %65 = load i8*, i8** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @fdt_set_totalsize(i8* %65, i32 %66)
  store i32 0, i32* %4, align 4
  br label %136

68:                                               ; preds = %44
  %69 = call i32 @FDT_ALIGN(i32 4, i32 8)
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %69, %70
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %71, %72
  %74 = load i8*, i8** %5, align 8
  %75 = call i32 @fdt_size_dt_strings(i8* %74)
  %76 = add nsw i32 %73, %75
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %68
  %81 = load i32, i32* @FDT_ERR_NOSPACE, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %136

83:                                               ; preds = %68
  %84 = load i8*, i8** %6, align 8
  store i8* %84, i8** %14, align 8
  %85 = load i8*, i8** %14, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = load i8*, i8** %12, align 8
  %90 = icmp ugt i8* %88, %89
  br i1 %90, label %91, label %112

91:                                               ; preds = %83
  %92 = load i8*, i8** %14, align 8
  %93 = load i8*, i8** %13, align 8
  %94 = icmp ult i8* %92, %93
  br i1 %94, label %95, label %112

95:                                               ; preds = %91
  %96 = load i8*, i8** %13, align 8
  %97 = ptrtoint i8* %96 to i64
  %98 = inttoptr i64 %97 to i8*
  store i8* %98, i8** %14, align 8
  %99 = load i8*, i8** %14, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  %103 = load i8*, i8** %6, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = icmp ugt i8* %102, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %95
  %109 = load i32, i32* @FDT_ERR_NOSPACE, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %4, align 4
  br label %136

111:                                              ; preds = %95
  br label %112

112:                                              ; preds = %111, %91, %83
  %113 = load i8*, i8** %5, align 8
  %114 = load i8*, i8** %14, align 8
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @_fdt_packblocks(i8* %113, i8* %114, i32 %115, i32 %116)
  %118 = load i8*, i8** %6, align 8
  %119 = load i8*, i8** %14, align 8
  %120 = load i32, i32* %11, align 4
  %121 = call i32 @memmove(i8* %118, i8* %119, i32 %120)
  %122 = load i8*, i8** %6, align 8
  %123 = load i32, i32* @FDT_MAGIC, align 4
  %124 = call i32 @fdt_set_magic(i8* %122, i32 %123)
  %125 = load i8*, i8** %6, align 8
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @fdt_set_totalsize(i8* %125, i32 %126)
  %128 = load i8*, i8** %6, align 8
  %129 = call i32 @fdt_set_version(i8* %128, i32 17)
  %130 = load i8*, i8** %6, align 8
  %131 = call i32 @fdt_set_last_comp_version(i8* %130, i32 16)
  %132 = load i8*, i8** %6, align 8
  %133 = load i8*, i8** %5, align 8
  %134 = call i32 @fdt_boot_cpuid_phys(i8* %133)
  %135 = call i32 @fdt_set_boot_cpuid_phys(i8* %132, i32 %134)
  store i32 0, i32* %4, align 4
  br label %136

136:                                              ; preds = %112, %108, %80, %59, %57
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i32 @fdt_totalsize(i8*) #1

declare dso_local i32 @FDT_CHECK_HEADER(i8*) #1

declare dso_local i32 @fdt_num_mem_rsv(i8*) #1

declare dso_local i32 @fdt_version(i8*) #1

declare dso_local i32 @fdt_size_dt_struct(i8*) #1

declare dso_local i64 @fdt_next_tag(i8*, i32, i32*) #1

declare dso_local i32 @_fdt_blocks_misordered(i8*, i32, i32) #1

declare dso_local i32 @fdt_move(i8*, i8*, i32) #1

declare dso_local i32 @fdt_set_version(i8*, i32) #1

declare dso_local i32 @fdt_set_size_dt_struct(i8*, i32) #1

declare dso_local i32 @fdt_set_totalsize(i8*, i32) #1

declare dso_local i32 @FDT_ALIGN(i32, i32) #1

declare dso_local i32 @fdt_size_dt_strings(i8*) #1

declare dso_local i32 @_fdt_packblocks(i8*, i8*, i32, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @fdt_set_magic(i8*, i32) #1

declare dso_local i32 @fdt_set_last_comp_version(i8*, i32) #1

declare dso_local i32 @fdt_set_boot_cpuid_phys(i8*, i32) #1

declare dso_local i32 @fdt_boot_cpuid_phys(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
