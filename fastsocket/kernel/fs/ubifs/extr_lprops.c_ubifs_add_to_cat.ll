; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lprops.c_ubifs_add_to_cat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lprops.c_ubifs_add_to_cat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, i32, i32 }
%struct.ubifs_lprops = type { i32, i32 }

@LPROPS_CAT_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubifs_add_to_cat(%struct.ubifs_info* %0, %struct.ubifs_lprops* %1, i32 %2) #0 {
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.ubifs_lprops*, align 8
  %6 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.ubifs_lprops* %1, %struct.ubifs_lprops** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %44 [
    i32 134, label %8
    i32 133, label %8
    i32 130, label %8
    i32 128, label %16
    i32 132, label %22
    i32 129, label %28
    i32 131, label %38
  ]

8:                                                ; preds = %3, %3, %3
  %9 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %10 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @add_to_lpt_heap(%struct.ubifs_info* %9, %struct.ubifs_lprops* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  br label %46

15:                                               ; preds = %8
  store i32 128, i32* %6, align 4
  br label %16

16:                                               ; preds = %3, %15
  %17 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %18 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %17, i32 0, i32 1
  %19 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %20 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %19, i32 0, i32 4
  %21 = call i32 @list_add(i32* %18, i32* %20)
  br label %46

22:                                               ; preds = %3
  %23 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %24 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %23, i32 0, i32 1
  %25 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %26 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %25, i32 0, i32 3
  %27 = call i32 @list_add(i32* %24, i32* %26)
  br label %46

28:                                               ; preds = %3
  %29 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %30 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %29, i32 0, i32 1
  %31 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %32 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %31, i32 0, i32 2
  %33 = call i32 @list_add(i32* %30, i32* %32)
  %34 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %35 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  br label %46

38:                                               ; preds = %3
  %39 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %40 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %39, i32 0, i32 1
  %41 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %42 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %41, i32 0, i32 1
  %43 = call i32 @list_add(i32* %40, i32* %42)
  br label %46

44:                                               ; preds = %3
  %45 = call i32 @ubifs_assert(i32 0)
  br label %46

46:                                               ; preds = %44, %38, %28, %22, %16, %14
  %47 = load i32, i32* @LPROPS_CAT_MASK, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %50 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %55 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  ret void
}

declare dso_local i32 @add_to_lpt_heap(%struct.ubifs_info*, %struct.ubifs_lprops*, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @ubifs_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
