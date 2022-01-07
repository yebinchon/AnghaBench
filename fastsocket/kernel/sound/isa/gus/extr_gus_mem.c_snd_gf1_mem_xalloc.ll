; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_mem.c_snd_gf1_mem_xalloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_mem.c_snd_gf1_mem_xalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_gf1_mem = type { %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block*, i32 }
%struct.snd_gf1_mem_block = type { i64, %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snd_gf1_mem_block* (%struct.snd_gf1_mem*, %struct.snd_gf1_mem_block*)* @snd_gf1_mem_xalloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snd_gf1_mem_block* @snd_gf1_mem_xalloc(%struct.snd_gf1_mem* %0, %struct.snd_gf1_mem_block* %1) #0 {
  %3 = alloca %struct.snd_gf1_mem_block*, align 8
  %4 = alloca %struct.snd_gf1_mem*, align 8
  %5 = alloca %struct.snd_gf1_mem_block*, align 8
  %6 = alloca %struct.snd_gf1_mem_block*, align 8
  %7 = alloca %struct.snd_gf1_mem_block*, align 8
  store %struct.snd_gf1_mem* %0, %struct.snd_gf1_mem** %4, align 8
  store %struct.snd_gf1_mem_block* %1, %struct.snd_gf1_mem_block** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.snd_gf1_mem_block* @kmalloc(i32 24, i32 %8)
  store %struct.snd_gf1_mem_block* %9, %struct.snd_gf1_mem_block** %7, align 8
  %10 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %7, align 8
  %11 = icmp eq %struct.snd_gf1_mem_block* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.snd_gf1_mem_block* null, %struct.snd_gf1_mem_block** %3, align 8
  br label %98

13:                                               ; preds = %2
  %14 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %7, align 8
  %15 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %5, align 8
  %16 = bitcast %struct.snd_gf1_mem_block* %14 to i8*
  %17 = bitcast %struct.snd_gf1_mem_block* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 24, i1 false)
  %18 = load %struct.snd_gf1_mem*, %struct.snd_gf1_mem** %4, align 8
  %19 = getelementptr inbounds %struct.snd_gf1_mem, %struct.snd_gf1_mem* %18, i32 0, i32 1
  %20 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %19, align 8
  store %struct.snd_gf1_mem_block* %20, %struct.snd_gf1_mem_block** %6, align 8
  br label %21

21:                                               ; preds = %63, %13
  %22 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %6, align 8
  %23 = icmp ne %struct.snd_gf1_mem_block* %22, null
  br i1 %23, label %24, label %67

24:                                               ; preds = %21
  %25 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %6, align 8
  %26 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %7, align 8
  %29 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %27, %30
  br i1 %31, label %32, label %63

32:                                               ; preds = %24
  %33 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %6, align 8
  %34 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %33, i32 0, i32 2
  %35 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %34, align 8
  %36 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %7, align 8
  %37 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %36, i32 0, i32 2
  store %struct.snd_gf1_mem_block* %35, %struct.snd_gf1_mem_block** %37, align 8
  %38 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %6, align 8
  %39 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %7, align 8
  %40 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %39, i32 0, i32 1
  store %struct.snd_gf1_mem_block* %38, %struct.snd_gf1_mem_block** %40, align 8
  %41 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %7, align 8
  %42 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %6, align 8
  %43 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %42, i32 0, i32 2
  store %struct.snd_gf1_mem_block* %41, %struct.snd_gf1_mem_block** %43, align 8
  %44 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %6, align 8
  %45 = load %struct.snd_gf1_mem*, %struct.snd_gf1_mem** %4, align 8
  %46 = getelementptr inbounds %struct.snd_gf1_mem, %struct.snd_gf1_mem* %45, i32 0, i32 1
  %47 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %46, align 8
  %48 = icmp eq %struct.snd_gf1_mem_block* %44, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %32
  %50 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %7, align 8
  %51 = load %struct.snd_gf1_mem*, %struct.snd_gf1_mem** %4, align 8
  %52 = getelementptr inbounds %struct.snd_gf1_mem, %struct.snd_gf1_mem* %51, i32 0, i32 1
  store %struct.snd_gf1_mem_block* %50, %struct.snd_gf1_mem_block** %52, align 8
  br label %59

53:                                               ; preds = %32
  %54 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %7, align 8
  %55 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %7, align 8
  %56 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %55, i32 0, i32 2
  %57 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %56, align 8
  %58 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %57, i32 0, i32 1
  store %struct.snd_gf1_mem_block* %54, %struct.snd_gf1_mem_block** %58, align 8
  br label %59

59:                                               ; preds = %53, %49
  %60 = load %struct.snd_gf1_mem*, %struct.snd_gf1_mem** %4, align 8
  %61 = getelementptr inbounds %struct.snd_gf1_mem, %struct.snd_gf1_mem* %60, i32 0, i32 2
  %62 = call i32 @mutex_unlock(i32* %61)
  store %struct.snd_gf1_mem_block* null, %struct.snd_gf1_mem_block** %3, align 8
  br label %98

63:                                               ; preds = %24
  %64 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %6, align 8
  %65 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %64, i32 0, i32 1
  %66 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %65, align 8
  store %struct.snd_gf1_mem_block* %66, %struct.snd_gf1_mem_block** %6, align 8
  br label %21

67:                                               ; preds = %21
  %68 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %7, align 8
  %69 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %68, i32 0, i32 1
  store %struct.snd_gf1_mem_block* null, %struct.snd_gf1_mem_block** %69, align 8
  %70 = load %struct.snd_gf1_mem*, %struct.snd_gf1_mem** %4, align 8
  %71 = getelementptr inbounds %struct.snd_gf1_mem, %struct.snd_gf1_mem* %70, i32 0, i32 0
  %72 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %71, align 8
  %73 = icmp eq %struct.snd_gf1_mem_block* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %67
  %75 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %7, align 8
  %76 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %75, i32 0, i32 2
  store %struct.snd_gf1_mem_block* null, %struct.snd_gf1_mem_block** %76, align 8
  %77 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %7, align 8
  %78 = load %struct.snd_gf1_mem*, %struct.snd_gf1_mem** %4, align 8
  %79 = getelementptr inbounds %struct.snd_gf1_mem, %struct.snd_gf1_mem* %78, i32 0, i32 0
  store %struct.snd_gf1_mem_block* %77, %struct.snd_gf1_mem_block** %79, align 8
  %80 = load %struct.snd_gf1_mem*, %struct.snd_gf1_mem** %4, align 8
  %81 = getelementptr inbounds %struct.snd_gf1_mem, %struct.snd_gf1_mem* %80, i32 0, i32 1
  store %struct.snd_gf1_mem_block* %77, %struct.snd_gf1_mem_block** %81, align 8
  br label %96

82:                                               ; preds = %67
  %83 = load %struct.snd_gf1_mem*, %struct.snd_gf1_mem** %4, align 8
  %84 = getelementptr inbounds %struct.snd_gf1_mem, %struct.snd_gf1_mem* %83, i32 0, i32 0
  %85 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %84, align 8
  %86 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %7, align 8
  %87 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %86, i32 0, i32 2
  store %struct.snd_gf1_mem_block* %85, %struct.snd_gf1_mem_block** %87, align 8
  %88 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %7, align 8
  %89 = load %struct.snd_gf1_mem*, %struct.snd_gf1_mem** %4, align 8
  %90 = getelementptr inbounds %struct.snd_gf1_mem, %struct.snd_gf1_mem* %89, i32 0, i32 0
  %91 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %90, align 8
  %92 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %91, i32 0, i32 1
  store %struct.snd_gf1_mem_block* %88, %struct.snd_gf1_mem_block** %92, align 8
  %93 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %7, align 8
  %94 = load %struct.snd_gf1_mem*, %struct.snd_gf1_mem** %4, align 8
  %95 = getelementptr inbounds %struct.snd_gf1_mem, %struct.snd_gf1_mem* %94, i32 0, i32 0
  store %struct.snd_gf1_mem_block* %93, %struct.snd_gf1_mem_block** %95, align 8
  br label %96

96:                                               ; preds = %82, %74
  %97 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %7, align 8
  store %struct.snd_gf1_mem_block* %97, %struct.snd_gf1_mem_block** %3, align 8
  br label %98

98:                                               ; preds = %96, %59, %12
  %99 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %3, align 8
  ret %struct.snd_gf1_mem_block* %99
}

declare dso_local %struct.snd_gf1_mem_block* @kmalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
