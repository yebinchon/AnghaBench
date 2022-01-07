; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/synth/extr_util_mem.c___snd_util_memblk_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/synth/extr_util_mem.c___snd_util_memblk_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_util_memblk = type { i32, i32, i32 }
%struct.snd_util_memhdr = type { i32, i32, %struct.list_head, i64 }
%struct.list_head = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.snd_util_memblk* @__snd_util_memblk_new(%struct.snd_util_memhdr* %0, i32 %1, %struct.list_head* %2) #0 {
  %4 = alloca %struct.snd_util_memblk*, align 8
  %5 = alloca %struct.snd_util_memhdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca %struct.snd_util_memblk*, align 8
  %9 = alloca %struct.snd_util_memblk*, align 8
  store %struct.snd_util_memhdr* %0, %struct.snd_util_memhdr** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  %10 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %5, align 8
  %11 = getelementptr inbounds %struct.snd_util_memhdr, %struct.snd_util_memhdr* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = add i64 12, %12
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.snd_util_memblk* @kmalloc(i64 %13, i32 %14)
  store %struct.snd_util_memblk* %15, %struct.snd_util_memblk** %8, align 8
  %16 = load %struct.snd_util_memblk*, %struct.snd_util_memblk** %8, align 8
  %17 = icmp eq %struct.snd_util_memblk* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store %struct.snd_util_memblk* null, %struct.snd_util_memblk** %4, align 8
  br label %57

19:                                               ; preds = %3
  %20 = load %struct.list_head*, %struct.list_head** %7, align 8
  %21 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %5, align 8
  %22 = getelementptr inbounds %struct.snd_util_memhdr, %struct.snd_util_memhdr* %21, i32 0, i32 2
  %23 = icmp eq %struct.list_head* %20, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.snd_util_memblk*, %struct.snd_util_memblk** %8, align 8
  %26 = getelementptr inbounds %struct.snd_util_memblk, %struct.snd_util_memblk* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  br label %39

27:                                               ; preds = %19
  %28 = load %struct.list_head*, %struct.list_head** %7, align 8
  %29 = call %struct.snd_util_memblk* @get_memblk(%struct.list_head* %28)
  store %struct.snd_util_memblk* %29, %struct.snd_util_memblk** %9, align 8
  %30 = load %struct.snd_util_memblk*, %struct.snd_util_memblk** %9, align 8
  %31 = getelementptr inbounds %struct.snd_util_memblk, %struct.snd_util_memblk* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.snd_util_memblk*, %struct.snd_util_memblk** %9, align 8
  %34 = getelementptr inbounds %struct.snd_util_memblk, %struct.snd_util_memblk* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add i32 %32, %35
  %37 = load %struct.snd_util_memblk*, %struct.snd_util_memblk** %8, align 8
  %38 = getelementptr inbounds %struct.snd_util_memblk, %struct.snd_util_memblk* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %27, %24
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.snd_util_memblk*, %struct.snd_util_memblk** %8, align 8
  %42 = getelementptr inbounds %struct.snd_util_memblk, %struct.snd_util_memblk* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.snd_util_memblk*, %struct.snd_util_memblk** %8, align 8
  %44 = getelementptr inbounds %struct.snd_util_memblk, %struct.snd_util_memblk* %43, i32 0, i32 2
  %45 = load %struct.list_head*, %struct.list_head** %7, align 8
  %46 = call i32 @list_add(i32* %44, %struct.list_head* %45)
  %47 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %5, align 8
  %48 = getelementptr inbounds %struct.snd_util_memhdr, %struct.snd_util_memhdr* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %5, align 8
  %53 = getelementptr inbounds %struct.snd_util_memhdr, %struct.snd_util_memhdr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load %struct.snd_util_memblk*, %struct.snd_util_memblk** %8, align 8
  store %struct.snd_util_memblk* %56, %struct.snd_util_memblk** %4, align 8
  br label %57

57:                                               ; preds = %39, %18
  %58 = load %struct.snd_util_memblk*, %struct.snd_util_memblk** %4, align 8
  ret %struct.snd_util_memblk* %58
}

declare dso_local %struct.snd_util_memblk* @kmalloc(i64, i32) #1

declare dso_local %struct.snd_util_memblk* @get_memblk(%struct.list_head*) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
