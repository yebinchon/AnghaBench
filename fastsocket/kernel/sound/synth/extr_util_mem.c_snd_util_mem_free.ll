; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/synth/extr_util_mem.c_snd_util_mem_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/synth/extr_util_mem.c_snd_util_mem_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_util_memhdr = type { i32 }
%struct.snd_util_memblk = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_util_mem_free(%struct.snd_util_memhdr* %0, %struct.snd_util_memblk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_util_memhdr*, align 8
  %5 = alloca %struct.snd_util_memblk*, align 8
  store %struct.snd_util_memhdr* %0, %struct.snd_util_memhdr** %4, align 8
  store %struct.snd_util_memblk* %1, %struct.snd_util_memblk** %5, align 8
  %6 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %4, align 8
  %7 = icmp ne %struct.snd_util_memhdr* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.snd_util_memblk*, %struct.snd_util_memblk** %5, align 8
  %10 = icmp ne %struct.snd_util_memblk* %9, null
  %11 = xor i1 %10, true
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi i1 [ true, %2 ], [ %11, %8 ]
  %14 = zext i1 %13 to i32
  %15 = call i64 @snd_BUG_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %30

20:                                               ; preds = %12
  %21 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %4, align 8
  %22 = getelementptr inbounds %struct.snd_util_memhdr, %struct.snd_util_memhdr* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %4, align 8
  %25 = load %struct.snd_util_memblk*, %struct.snd_util_memblk** %5, align 8
  %26 = call i32 @__snd_util_mem_free(%struct.snd_util_memhdr* %24, %struct.snd_util_memblk* %25)
  %27 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %4, align 8
  %28 = getelementptr inbounds %struct.snd_util_memhdr, %struct.snd_util_memhdr* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %20, %17
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__snd_util_mem_free(%struct.snd_util_memhdr*, %struct.snd_util_memblk*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
