; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-ia64.c_ia64_convert_frag.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-ia64.c_ia64_convert_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i64, i32, i64 }

@md = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@EF_IA_64_ABI64 = common dso_local global i32 0, align 4
@vbyte_mem_ptr = common dso_local global i32 0, align 4
@output_vbyte_mem = common dso_local global i32 0, align 4
@rs_fill = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ia64_convert_frag(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i32*
  store i32* %11, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @fixup_unw_records(i32* %12, i32 0)
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @calc_record_size(i32* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @md, i32 0, i32 0), align 4
  %18 = srem i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @md, i32 0, i32 0), align 4
  %23 = load i32, i32* %6, align 4
  %24 = sub nsw i32 %22, %23
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %21, %1
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 8
  store i32 %29, i32* %5, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @md, i32 0, i32 0), align 4
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %34, %27
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = icmp sge i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %38
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @md, i32 0, i32 1), align 4
  %52 = load i32, i32* @EF_IA_64_ABI64, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 undef, i32* %7, align 4
  br label %57

56:                                               ; preds = %50
  store i32 undef, i32* %7, align 4
  br label %57

57:                                               ; preds = %56, %55
  br label %59

58:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %58, %57
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %7, align 4
  %64 = or i32 undef, %63
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @md, i32 0, i32 0), align 4
  %67 = sdiv i32 %65, %66
  %68 = or i32 %64, %67
  %69 = call i32 @md_number_to_chars(i32 %62, i32 %68, i32 8)
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 8
  store i32 %73, i32* @vbyte_mem_ptr, align 4
  %74 = load i32*, i32** %3, align 8
  %75 = load i32, i32* @output_vbyte_mem, align 4
  %76 = call i32 @process_unw_records(i32* %74, i32 %75)
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %59
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %82, %83
  %85 = add nsw i32 %84, 8
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @md, i32 0, i32 0), align 4
  %87 = sub nsw i32 %85, %86
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %87, %88
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @md, i32 0, i32 0), align 4
  %91 = load i32, i32* %6, align 4
  %92 = sub nsw i32 %90, %91
  %93 = call i32 @md_number_to_chars(i32 %89, i32 0, i32 %92)
  br label %94

94:                                               ; preds = %79, %59
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, %95
  store i32 %99, i32* %97, align 8
  %100 = load i32, i32* @rs_fill, align 4
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 4
  store i32 %100, i32* %102, align 8
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  store i32 0, i32* %104, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 3
  store i64 0, i64* %106, align 8
  ret void
}

declare dso_local i32 @fixup_unw_records(i32*, i32) #1

declare dso_local i32 @calc_record_size(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @md_number_to_chars(i32, i32, i32) #1

declare dso_local i32 @process_unw_records(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
