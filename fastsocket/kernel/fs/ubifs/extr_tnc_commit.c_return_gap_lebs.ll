; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc_commit.c_return_gap_lebs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc_commit.c_return_gap_lebs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@LPROPS_NC = common dso_local global i32 0, align 4
@LPROPS_TAKEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*)* @return_gap_lebs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @return_gap_lebs(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  %6 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %7 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %43

11:                                               ; preds = %1
  %12 = call i32 @dbg_cmt(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %14 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %4, align 8
  br label %16

16:                                               ; preds = %33, %11
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %36

20:                                               ; preds = %16
  %21 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @LPROPS_NC, align 4
  %25 = load i32, i32* @LPROPS_NC, align 4
  %26 = load i32, i32* @LPROPS_TAKEN, align 4
  %27 = call i32 @ubifs_change_one_lp(%struct.ubifs_info* %21, i32 %23, i32 %24, i32 %25, i32 0, i32 %26, i32 0)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %43

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %32
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %4, align 8
  br label %16

36:                                               ; preds = %16
  %37 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %38 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @kfree(i32* %39)
  %41 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %42 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %36, %30, %10
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @dbg_cmt(i8*) #1

declare dso_local i32 @ubifs_change_one_lp(%struct.ubifs_info*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
