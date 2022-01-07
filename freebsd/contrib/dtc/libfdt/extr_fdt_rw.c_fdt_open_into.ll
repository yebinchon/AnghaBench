; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/libfdt/extr_fdt_rw.c_fdt_open_into.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/libfdt/extr_fdt_rw.c_fdt_open_into.c"
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
  br label %49

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
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %4, align 4
  br label %141

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %48, %32
  %50 = load i8*, i8** %5, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @_fdt_blocks_misordered(i8* %50, i32 %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %73, label %55

55:                                               ; preds = %49
  %56 = load i8*, i8** %5, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @fdt_move(i8* %56, i8* %57, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %4, align 4
  br label %141

64:                                               ; preds = %55
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @fdt_set_version(i8* %65, i32 17)
  %67 = load i8*, i8** %6, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @fdt_set_size_dt_struct(i8* %67, i32 %68)
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @fdt_set_totalsize(i8* %70, i32 %71)
  store i32 0, i32* %4, align 4
  br label %141

73:                                               ; preds = %49
  %74 = call i32 @FDT_ALIGN(i32 4, i32 8)
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %74, %75
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %76, %77
  %79 = load i8*, i8** %5, align 8
  %80 = call i32 @fdt_size_dt_strings(i8* %79)
  %81 = add nsw i32 %78, %80
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %73
  %86 = load i32, i32* @FDT_ERR_NOSPACE, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %141

88:                                               ; preds = %73
  %89 = load i8*, i8** %6, align 8
  store i8* %89, i8** %14, align 8
  %90 = load i8*, i8** %14, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i8*, i8** %12, align 8
  %95 = icmp ugt i8* %93, %94
  br i1 %95, label %96, label %117

96:                                               ; preds = %88
  %97 = load i8*, i8** %14, align 8
  %98 = load i8*, i8** %13, align 8
  %99 = icmp ult i8* %97, %98
  br i1 %99, label %100, label %117

100:                                              ; preds = %96
  %101 = load i8*, i8** %13, align 8
  %102 = ptrtoint i8* %101 to i64
  %103 = inttoptr i64 %102 to i8*
  store i8* %103, i8** %14, align 8
  %104 = load i8*, i8** %14, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i8*, i8** %6, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = icmp ugt i8* %107, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %100
  %114 = load i32, i32* @FDT_ERR_NOSPACE, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %4, align 4
  br label %141

116:                                              ; preds = %100
  br label %117

117:                                              ; preds = %116, %96, %88
  %118 = load i8*, i8** %5, align 8
  %119 = load i8*, i8** %14, align 8
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @_fdt_packblocks(i8* %118, i8* %119, i32 %120, i32 %121)
  %123 = load i8*, i8** %6, align 8
  %124 = load i8*, i8** %14, align 8
  %125 = load i32, i32* %11, align 4
  %126 = call i32 @memmove(i8* %123, i8* %124, i32 %125)
  %127 = load i8*, i8** %6, align 8
  %128 = load i32, i32* @FDT_MAGIC, align 4
  %129 = call i32 @fdt_set_magic(i8* %127, i32 %128)
  %130 = load i8*, i8** %6, align 8
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @fdt_set_totalsize(i8* %130, i32 %131)
  %133 = load i8*, i8** %6, align 8
  %134 = call i32 @fdt_set_version(i8* %133, i32 17)
  %135 = load i8*, i8** %6, align 8
  %136 = call i32 @fdt_set_last_comp_version(i8* %135, i32 16)
  %137 = load i8*, i8** %6, align 8
  %138 = load i8*, i8** %5, align 8
  %139 = call i32 @fdt_boot_cpuid_phys(i8* %138)
  %140 = call i32 @fdt_set_boot_cpuid_phys(i8* %137, i32 %139)
  store i32 0, i32* %4, align 4
  br label %141

141:                                              ; preds = %117, %113, %85, %64, %62, %46
  %142 = load i32, i32* %4, align 4
  ret i32 %142
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
