; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lprops.c_add_to_lpt_heap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lprops.c_add_to_lpt_heap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, %struct.ubifs_lpt_heap* }
%struct.ubifs_lpt_heap = type { i64, i64, %struct.ubifs_lprops** }
%struct.ubifs_lprops = type { i32, i32, i32 }

@LPT_HEAP_SZ = common dso_local global i32 0, align 4
@LPROPS_CAT_MASK = common dso_local global i32 0, align 4
@LPROPS_UNCAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.ubifs_lprops*, i32)* @add_to_lpt_heap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_to_lpt_heap(%struct.ubifs_info* %0, %struct.ubifs_lprops* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %struct.ubifs_lprops*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubifs_lpt_heap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ubifs_lprops*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %struct.ubifs_lprops* %1, %struct.ubifs_lprops** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %15 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %14, i32 0, i32 1
  %16 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %16, i64 %19
  store %struct.ubifs_lpt_heap* %20, %struct.ubifs_lpt_heap** %8, align 8
  %21 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %8, align 8
  %22 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %8, align 8
  %25 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %23, %26
  br i1 %27, label %28, label %126

28:                                               ; preds = %3
  %29 = load i32, i32* @LPT_HEAP_SZ, align 4
  %30 = sdiv i32 %29, 2
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %9, align 4
  %32 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %6, align 8
  %33 = ptrtoint %struct.ubifs_lprops* %32 to i64
  %34 = lshr i64 %33, 4
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = and i64 %34, %36
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = add i64 %37, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp sge i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @ubifs_assert(i32 %45)
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @LPT_HEAP_SZ, align 4
  %49 = icmp slt i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @ubifs_assert(i32 %50)
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %8, align 8
  %55 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %53, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @ubifs_assert(i32 %58)
  %60 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @get_heap_comp_val(%struct.ubifs_lprops* %60, i32 %61)
  store i32 %62, i32* %11, align 4
  %63 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %8, align 8
  %64 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %63, i32 0, i32 2
  %65 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.ubifs_lprops*, %struct.ubifs_lprops** %65, i64 %67
  %69 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @get_heap_comp_val(%struct.ubifs_lprops* %69, i32 %70)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %75, label %121

75:                                               ; preds = %28
  %76 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %8, align 8
  %77 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %76, i32 0, i32 2
  %78 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.ubifs_lprops*, %struct.ubifs_lprops** %78, i64 %80
  %82 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %81, align 8
  store %struct.ubifs_lprops* %82, %struct.ubifs_lprops** %13, align 8
  %83 = load i32, i32* @LPROPS_CAT_MASK, align 4
  %84 = xor i32 %83, -1
  %85 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %13, align 8
  %86 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load i32, i32* @LPROPS_UNCAT, align 4
  %90 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %13, align 8
  %91 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  %94 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %13, align 8
  %95 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %94, i32 0, i32 1
  %96 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %97 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %96, i32 0, i32 0
  %98 = call i32 @list_add(i32* %95, i32* %97)
  %99 = load i32, i32* %10, align 4
  %100 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %6, align 8
  %101 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  %102 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %6, align 8
  %103 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %8, align 8
  %104 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %103, i32 0, i32 2
  %105 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %104, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.ubifs_lprops*, %struct.ubifs_lprops** %105, i64 %107
  store %struct.ubifs_lprops* %102, %struct.ubifs_lprops** %108, align 8
  %109 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %110 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %8, align 8
  %111 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %6, align 8
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @move_up_lpt_heap(%struct.ubifs_info* %109, %struct.ubifs_lpt_heap* %110, %struct.ubifs_lprops* %111, i32 %112)
  %114 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %115 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %8, align 8
  %116 = load i32, i32* %7, align 4
  %117 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %6, align 8
  %118 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @dbg_check_heap(%struct.ubifs_info* %114, %struct.ubifs_lpt_heap* %115, i32 %116, i32 %119)
  store i32 1, i32* %4, align 4
  br label %155

121:                                              ; preds = %28
  %122 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %123 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %8, align 8
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @dbg_check_heap(%struct.ubifs_info* %122, %struct.ubifs_lpt_heap* %123, i32 %124, i32 -1)
  store i32 0, i32* %4, align 4
  br label %155

126:                                              ; preds = %3
  %127 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %8, align 8
  %128 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %129, 1
  store i64 %130, i64* %128, align 8
  %131 = trunc i64 %129 to i32
  %132 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %6, align 8
  %133 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 4
  %134 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %6, align 8
  %135 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %8, align 8
  %136 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %135, i32 0, i32 2
  %137 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %136, align 8
  %138 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %6, align 8
  %139 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.ubifs_lprops*, %struct.ubifs_lprops** %137, i64 %141
  store %struct.ubifs_lprops* %134, %struct.ubifs_lprops** %142, align 8
  %143 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %144 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %8, align 8
  %145 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %6, align 8
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @move_up_lpt_heap(%struct.ubifs_info* %143, %struct.ubifs_lpt_heap* %144, %struct.ubifs_lprops* %145, i32 %146)
  %148 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %149 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %8, align 8
  %150 = load i32, i32* %7, align 4
  %151 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %6, align 8
  %152 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @dbg_check_heap(%struct.ubifs_info* %148, %struct.ubifs_lpt_heap* %149, i32 %150, i32 %153)
  store i32 1, i32* %4, align 4
  br label %155

155:                                              ; preds = %126, %121, %75
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @get_heap_comp_val(%struct.ubifs_lprops*, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @move_up_lpt_heap(%struct.ubifs_info*, %struct.ubifs_lpt_heap*, %struct.ubifs_lprops*, i32) #1

declare dso_local i32 @dbg_check_heap(%struct.ubifs_info*, %struct.ubifs_lpt_heap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
