; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_replay.c_take_ihead.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_replay.c_take_ihead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_lprops = type { i32, i32 }

@LPROPS_NC = common dso_local global i32 0, align 4
@LPROPS_TAKEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*)* @take_ihead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @take_ihead(%struct.ubifs_info* %0) #0 {
  %2 = alloca %struct.ubifs_info*, align 8
  %3 = alloca %struct.ubifs_lprops*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %2, align 8
  %6 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %7 = call i32 @ubifs_get_lprops(%struct.ubifs_info* %6)
  %8 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %9 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %10 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.ubifs_lprops* @ubifs_lpt_lookup_dirty(%struct.ubifs_info* %8, i32 %11)
  store %struct.ubifs_lprops* %12, %struct.ubifs_lprops** %3, align 8
  %13 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %3, align 8
  %14 = call i64 @IS_ERR(%struct.ubifs_lprops* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %3, align 8
  %18 = call i32 @PTR_ERR(%struct.ubifs_lprops* %17)
  store i32 %18, i32* %4, align 4
  br label %41

19:                                               ; preds = %1
  %20 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %3, align 8
  %21 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  %23 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %24 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %3, align 8
  %25 = load i32, i32* @LPROPS_NC, align 4
  %26 = load i32, i32* @LPROPS_NC, align 4
  %27 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %3, align 8
  %28 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @LPROPS_TAKEN, align 4
  %31 = or i32 %29, %30
  %32 = call %struct.ubifs_lprops* @ubifs_change_lp(%struct.ubifs_info* %23, %struct.ubifs_lprops* %24, i32 %25, i32 %26, i32 %31, i32 0)
  store %struct.ubifs_lprops* %32, %struct.ubifs_lprops** %3, align 8
  %33 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %3, align 8
  %34 = call i64 @IS_ERR(%struct.ubifs_lprops* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %19
  %37 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %3, align 8
  %38 = call i32 @PTR_ERR(%struct.ubifs_lprops* %37)
  store i32 %38, i32* %4, align 4
  br label %41

39:                                               ; preds = %19
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %39, %36, %16
  %42 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %43 = call i32 @ubifs_release_lprops(%struct.ubifs_info* %42)
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @ubifs_get_lprops(%struct.ubifs_info*) #1

declare dso_local %struct.ubifs_lprops* @ubifs_lpt_lookup_dirty(%struct.ubifs_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_lprops*) #1

declare dso_local i32 @PTR_ERR(%struct.ubifs_lprops*) #1

declare dso_local %struct.ubifs_lprops* @ubifs_change_lp(%struct.ubifs_info*, %struct.ubifs_lprops*, i32, i32, i32, i32) #1

declare dso_local i32 @ubifs_release_lprops(%struct.ubifs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
