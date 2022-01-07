; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_memalloc.c_snd_dma_reserve_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_memalloc.c_snd_dma_reserve_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dma_buffer = type { i32 }
%struct.snd_mem_list = type { i32, i32, %struct.snd_dma_buffer }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@list_mutex = common dso_local global i32 0, align 4
@mem_list_head = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_dma_reserve_buf(%struct.snd_dma_buffer* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_dma_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_mem_list*, align 8
  store %struct.snd_dma_buffer* %0, %struct.snd_dma_buffer** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %4, align 8
  %8 = icmp ne %struct.snd_dma_buffer* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @WARN_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %38

16:                                               ; preds = %2
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.snd_mem_list* @kmalloc(i32 12, i32 %17)
  store %struct.snd_mem_list* %18, %struct.snd_mem_list** %6, align 8
  %19 = load %struct.snd_mem_list*, %struct.snd_mem_list** %6, align 8
  %20 = icmp ne %struct.snd_mem_list* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %38

24:                                               ; preds = %16
  %25 = call i32 @mutex_lock(i32* @list_mutex)
  %26 = load %struct.snd_mem_list*, %struct.snd_mem_list** %6, align 8
  %27 = getelementptr inbounds %struct.snd_mem_list, %struct.snd_mem_list* %26, i32 0, i32 2
  %28 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %4, align 8
  %29 = bitcast %struct.snd_dma_buffer* %27 to i8*
  %30 = bitcast %struct.snd_dma_buffer* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 4, i1 false)
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.snd_mem_list*, %struct.snd_mem_list** %6, align 8
  %33 = getelementptr inbounds %struct.snd_mem_list, %struct.snd_mem_list* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.snd_mem_list*, %struct.snd_mem_list** %6, align 8
  %35 = getelementptr inbounds %struct.snd_mem_list, %struct.snd_mem_list* %34, i32 0, i32 1
  %36 = call i32 @list_add_tail(i32* %35, i32* @mem_list_head)
  %37 = call i32 @mutex_unlock(i32* @list_mutex)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %24, %21, %13
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.snd_mem_list* @kmalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
