; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-ia64.c_generate_unwind_image.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-ia64.c_generate_unwind_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32*, i32, i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i64, i32 }

@NOT_A_CHAR = common dso_local global i32 0, align 4
@unwind = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@md = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@SPECIAL_SECTION_UNWIND_INFO = common dso_local global i32 0, align 4
@now_seg = common dso_local global i32 0, align 4
@rs_machine_dependent = common dso_local global i32 0, align 4
@O_symbol = common dso_local global i32 0, align 4
@EF_IA_64_BE = common dso_local global i32 0, align 4
@EF_IA_64_ABI64 = common dso_local global i32 0, align 4
@BFD_RELOC_IA64_LTOFF_FPTR64MSB = common dso_local global i32 0, align 4
@BFD_RELOC_IA64_LTOFF_FPTR32MSB = common dso_local global i32 0, align 4
@BFD_RELOC_IA64_LTOFF_FPTR64LSB = common dso_local global i32 0, align 4
@BFD_RELOC_IA64_LTOFF_FPTR32LSB = common dso_local global i32 0, align 4
@frag_now = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @generate_unwind_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generate_unwind_image(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = call i32 (...) @output_endp()
  %9 = load i32, i32* @NOT_A_CHAR, align 4
  %10 = call i32 @add_unwind_entry(i32 %8, i32 %9)
  %11 = call i32 (...) @ia64_flush_insns()
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @unwind, i32 0, i32 3), align 4
  %13 = call i32* @optimize_unw_records(i32 %12)
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @fixup_unw_records(i32* %14, i32 1)
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @calc_record_size(i32* %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @unwind, i32 0, i32 5), align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %20, %1
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @unwind, i32 0, i32 5), align 8
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @md, i32 0, i32 0), align 4
  %26 = srem i32 %24, %25
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @md, i32 0, i32 0), align 4
  %31 = load i32, i32* %4, align 4
  %32 = sub nsw i32 %30, %31
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %29, %23
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 8
  store i32 %37, i32* %3, align 4
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @unwind, i32 0, i32 0), align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @md, i32 0, i32 0), align 4
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %40, %35
  br label %45

45:                                               ; preds = %44, %20
  %46 = load i32, i32* %3, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %108

48:                                               ; preds = %45
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* @SPECIAL_SECTION_UNWIND_INFO, align 4
  %51 = call i32 @start_unwind_section(i32 %49, i32 %50)
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @md, i32 0, i32 2), align 4
  %53 = call i32 @frag_align(i32 %52, i32 0, i32 0)
  %54 = load i32, i32* @now_seg, align 4
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @md, i32 0, i32 2), align 4
  %56 = call i32 @record_alignment(i32 %54, i32 %55)
  %57 = call i32 (...) @expr_build_dot()
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @unwind, i32 0, i32 4), align 8
  %58 = load i32, i32* @rs_machine_dependent, align 4
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* %3, align 4
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @unwind, i32 0, i32 0), align 8
  %62 = trunc i64 %61 to i32
  %63 = load i32*, i32** %5, align 8
  %64 = bitcast i32* %63 to i8*
  %65 = call i32 @frag_var(i32 %58, i32 %59, i32 %60, i32 0, i32 0, i32 %62, i8* %64)
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @unwind, i32 0, i32 0), align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %107

68:                                               ; preds = %48
  %69 = load i32, i32* @O_symbol, align 4
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  store i32 %69, i32* %70, align 8
  %71 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @unwind, i32 0, i32 0), align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i64 %71, i64* %72, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i64 0, i64* %73, align 8
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @md, i32 0, i32 1), align 4
  %75 = load i32, i32* @EF_IA_64_BE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %68
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @md, i32 0, i32 1), align 4
  %80 = load i32, i32* @EF_IA_64_ABI64, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* @BFD_RELOC_IA64_LTOFF_FPTR64MSB, align 4
  store i32 %84, i32* %7, align 4
  br label %87

85:                                               ; preds = %78
  %86 = load i32, i32* @BFD_RELOC_IA64_LTOFF_FPTR32MSB, align 4
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %85, %83
  br label %98

88:                                               ; preds = %68
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @md, i32 0, i32 1), align 4
  %90 = load i32, i32* @EF_IA_64_ABI64, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = load i32, i32* @BFD_RELOC_IA64_LTOFF_FPTR64LSB, align 4
  store i32 %94, i32* %7, align 4
  br label %97

95:                                               ; preds = %88
  %96 = load i32, i32* @BFD_RELOC_IA64_LTOFF_FPTR32LSB, align 4
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %95, %93
  br label %98

98:                                               ; preds = %97, %87
  %99 = load i32, i32* @frag_now, align 4
  %100 = call i64 (...) @frag_now_fix()
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @md, i32 0, i32 0), align 4
  %102 = sext i32 %101 to i64
  %103 = sub nsw i64 %100, %102
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @md, i32 0, i32 0), align 4
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @fix_new_exp(i32 %99, i64 %103, i32 %104, %struct.TYPE_5__* %6, i32 0, i32 %105)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @unwind, i32 0, i32 0), align 8
  br label %107

107:                                              ; preds = %98, %48
  br label %108

108:                                              ; preds = %107, %45
  %109 = call i32 (...) @free_saved_prologue_counts()
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @unwind, i32 0, i32 1), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @unwind, i32 0, i32 2), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @unwind, i32 0, i32 3), align 4
  ret void
}

declare dso_local i32 @add_unwind_entry(i32, i32) #1

declare dso_local i32 @output_endp(...) #1

declare dso_local i32 @ia64_flush_insns(...) #1

declare dso_local i32* @optimize_unw_records(i32) #1

declare dso_local i32 @fixup_unw_records(i32*, i32) #1

declare dso_local i32 @calc_record_size(i32*) #1

declare dso_local i32 @start_unwind_section(i32, i32) #1

declare dso_local i32 @frag_align(i32, i32, i32) #1

declare dso_local i32 @record_alignment(i32, i32) #1

declare dso_local i32 @expr_build_dot(...) #1

declare dso_local i32 @frag_var(i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @fix_new_exp(i32, i64, i32, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i64 @frag_now_fix(...) #1

declare dso_local i32 @free_saved_prologue_counts(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
