; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_replay.c_add_replay_bud.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_replay.c_add_replay_bud.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_bud = type { i32, i32, i32 }
%struct.bud_entry = type { i64, i32, %struct.ubifs_bud* }

@.str = private unnamed_addr constant [34 x i8] c"add replay bud LEB %d:%d, head %d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i32, i32, i32, i64)* @add_replay_bud to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_replay_bud(%struct.ubifs_info* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubifs_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.ubifs_bud*, align 8
  %13 = alloca %struct.bud_entry*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @dbg_mnt(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15, i32 %16)
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kmalloc(i32 12, i32 %18)
  %20 = bitcast i8* %19 to %struct.ubifs_bud*
  store %struct.ubifs_bud* %20, %struct.ubifs_bud** %12, align 8
  %21 = load %struct.ubifs_bud*, %struct.ubifs_bud** %12, align 8
  %22 = icmp ne %struct.ubifs_bud* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %61

26:                                               ; preds = %5
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @kmalloc(i32 24, i32 %27)
  %29 = bitcast i8* %28 to %struct.bud_entry*
  store %struct.bud_entry* %29, %struct.bud_entry** %13, align 8
  %30 = load %struct.bud_entry*, %struct.bud_entry** %13, align 8
  %31 = icmp ne %struct.bud_entry* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %26
  %33 = load %struct.ubifs_bud*, %struct.ubifs_bud** %12, align 8
  %34 = call i32 @kfree(%struct.ubifs_bud* %33)
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %61

37:                                               ; preds = %26
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.ubifs_bud*, %struct.ubifs_bud** %12, align 8
  %40 = getelementptr inbounds %struct.ubifs_bud, %struct.ubifs_bud* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.ubifs_bud*, %struct.ubifs_bud** %12, align 8
  %43 = getelementptr inbounds %struct.ubifs_bud, %struct.ubifs_bud* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.ubifs_bud*, %struct.ubifs_bud** %12, align 8
  %46 = getelementptr inbounds %struct.ubifs_bud, %struct.ubifs_bud* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %48 = load %struct.ubifs_bud*, %struct.ubifs_bud** %12, align 8
  %49 = call i32 @ubifs_add_bud(%struct.ubifs_info* %47, %struct.ubifs_bud* %48)
  %50 = load %struct.ubifs_bud*, %struct.ubifs_bud** %12, align 8
  %51 = load %struct.bud_entry*, %struct.bud_entry** %13, align 8
  %52 = getelementptr inbounds %struct.bud_entry, %struct.bud_entry* %51, i32 0, i32 2
  store %struct.ubifs_bud* %50, %struct.ubifs_bud** %52, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load %struct.bud_entry*, %struct.bud_entry** %13, align 8
  %55 = getelementptr inbounds %struct.bud_entry, %struct.bud_entry* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.bud_entry*, %struct.bud_entry** %13, align 8
  %57 = getelementptr inbounds %struct.bud_entry, %struct.bud_entry* %56, i32 0, i32 1
  %58 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %59 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %58, i32 0, i32 0
  %60 = call i32 @list_add_tail(i32* %57, i32* %59)
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %37, %32, %23
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32 @dbg_mnt(i8*, i32, i32, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.ubifs_bud*) #1

declare dso_local i32 @ubifs_add_bud(%struct.ubifs_info*, %struct.ubifs_bud*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
