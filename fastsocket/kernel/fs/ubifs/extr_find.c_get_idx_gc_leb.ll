; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_find.c_get_idx_gc_leb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_find.c_get_idx_gc_leb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_lprops = type { i32, i32, i32, i32 }

@LPROPS_NC = common dso_local global i32 0, align 4
@LPROPS_INDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"LEB %d, dirty %d and free %d flags %#x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*)* @get_idx_gc_leb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_idx_gc_leb(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca %struct.ubifs_lprops*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  %7 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %8 = call i32 @ubifs_get_idx_gc_leb(%struct.ubifs_info* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %56

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.ubifs_lprops* @ubifs_lpt_lookup_dirty(%struct.ubifs_info* %15, i32 %16)
  store %struct.ubifs_lprops* %17, %struct.ubifs_lprops** %4, align 8
  %18 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %19 = call i64 @IS_ERR(%struct.ubifs_lprops* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %23 = call i32 @PTR_ERR(%struct.ubifs_lprops* %22)
  store i32 %23, i32* %2, align 4
  br label %56

24:                                               ; preds = %13
  %25 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %26 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %27 = load i32, i32* @LPROPS_NC, align 4
  %28 = load i32, i32* @LPROPS_NC, align 4
  %29 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %30 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @LPROPS_INDEX, align 4
  %33 = or i32 %31, %32
  %34 = call %struct.ubifs_lprops* @ubifs_change_lp(%struct.ubifs_info* %25, %struct.ubifs_lprops* %26, i32 %27, i32 %28, i32 %33, i32 -1)
  store %struct.ubifs_lprops* %34, %struct.ubifs_lprops** %4, align 8
  %35 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %36 = call i64 @IS_ERR(%struct.ubifs_lprops* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %24
  %39 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %40 = call i32 @PTR_ERR(%struct.ubifs_lprops* %39)
  store i32 %40, i32* %2, align 4
  br label %56

41:                                               ; preds = %24
  %42 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %43 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %46 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %49 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %52 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dbg_find(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %47, i32 %50, i32 %53)
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %41, %38, %21, %11
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @ubifs_get_idx_gc_leb(%struct.ubifs_info*) #1

declare dso_local %struct.ubifs_lprops* @ubifs_lpt_lookup_dirty(%struct.ubifs_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_lprops*) #1

declare dso_local i32 @PTR_ERR(%struct.ubifs_lprops*) #1

declare dso_local %struct.ubifs_lprops* @ubifs_change_lp(%struct.ubifs_info*, %struct.ubifs_lprops*, i32, i32, i32, i32) #1

declare dso_local i32 @dbg_find(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
