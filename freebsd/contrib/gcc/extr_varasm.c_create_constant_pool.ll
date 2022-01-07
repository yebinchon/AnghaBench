; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_create_constant_pool.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_create_constant_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtx_constant_pool = type { i64, i32*, i32*, i32 }

@const_desc_rtx_hash = common dso_local global i32 0, align 4
@const_desc_rtx_eq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rtx_constant_pool* ()* @create_constant_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rtx_constant_pool* @create_constant_pool() #0 {
  %1 = alloca %struct.rtx_constant_pool*, align 8
  %2 = call %struct.rtx_constant_pool* @ggc_alloc(i32 32)
  store %struct.rtx_constant_pool* %2, %struct.rtx_constant_pool** %1, align 8
  %3 = load i32, i32* @const_desc_rtx_hash, align 4
  %4 = load i32, i32* @const_desc_rtx_eq, align 4
  %5 = call i32 @htab_create_ggc(i32 31, i32 %3, i32 %4, i32* null)
  %6 = load %struct.rtx_constant_pool*, %struct.rtx_constant_pool** %1, align 8
  %7 = getelementptr inbounds %struct.rtx_constant_pool, %struct.rtx_constant_pool* %6, i32 0, i32 3
  store i32 %5, i32* %7, align 8
  %8 = load %struct.rtx_constant_pool*, %struct.rtx_constant_pool** %1, align 8
  %9 = getelementptr inbounds %struct.rtx_constant_pool, %struct.rtx_constant_pool* %8, i32 0, i32 2
  store i32* null, i32** %9, align 8
  %10 = load %struct.rtx_constant_pool*, %struct.rtx_constant_pool** %1, align 8
  %11 = getelementptr inbounds %struct.rtx_constant_pool, %struct.rtx_constant_pool* %10, i32 0, i32 1
  store i32* null, i32** %11, align 8
  %12 = load %struct.rtx_constant_pool*, %struct.rtx_constant_pool** %1, align 8
  %13 = getelementptr inbounds %struct.rtx_constant_pool, %struct.rtx_constant_pool* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load %struct.rtx_constant_pool*, %struct.rtx_constant_pool** %1, align 8
  ret %struct.rtx_constant_pool* %14
}

declare dso_local %struct.rtx_constant_pool* @ggc_alloc(i32) #1

declare dso_local i32 @htab_create_ggc(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
