; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_pontis.c_wm_proc_regs_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_pontis.c_wm_proc_regs_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { i64 }
%struct.snd_info_buffer = type { i32 }
%struct.snd_ice1712 = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%x %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @wm_proc_regs_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm_proc_regs_write(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.snd_ice1712*, align 8
  %6 = alloca [64 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %9 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %10 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.snd_ice1712*
  store %struct.snd_ice1712* %12, %struct.snd_ice1712** %5, align 8
  %13 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %14 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  br label %16

16:                                               ; preds = %38, %26, %2
  %17 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %19 = call i32 @snd_info_get_line(%struct.snd_info_buffer* %17, i8* %18, i32 64)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br i1 %21, label %22, label %39

22:                                               ; preds = %16
  %23 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %24 = call i32 @sscanf(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %7, i32* %8)
  %25 = icmp ne i32 %24, 2
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %16

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  %29 = icmp ule i32 %28, 23
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load i32, i32* %8, align 4
  %32 = icmp ule i32 %31, 65535
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @wm_put(%struct.snd_ice1712* %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %33, %30, %27
  br label %16

39:                                               ; preds = %16
  %40 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %41 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_info_get_line(%struct.snd_info_buffer*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @wm_put(%struct.snd_ice1712*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
