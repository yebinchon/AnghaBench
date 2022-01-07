; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lprops.c_ubifs_remove_from_cat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lprops.c_ubifs_remove_from_cat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_lprops = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubifs_info*, %struct.ubifs_lprops*, i32)* @ubifs_remove_from_cat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ubifs_remove_from_cat(%struct.ubifs_info* %0, %struct.ubifs_lprops* %1, i32 %2) #0 {
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.ubifs_lprops*, align 8
  %6 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.ubifs_lprops* %1, %struct.ubifs_lprops** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %35 [
    i32 134, label %8
    i32 133, label %8
    i32 130, label %8
    i32 129, label %13
    i32 128, label %24
    i32 132, label %24
    i32 131, label %24
  ]

8:                                                ; preds = %3, %3, %3
  %9 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %10 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @remove_from_lpt_heap(%struct.ubifs_info* %9, %struct.ubifs_lprops* %10, i32 %11)
  br label %37

13:                                               ; preds = %3
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %15 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %19 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sge i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @ubifs_assert(i32 %22)
  br label %24

24:                                               ; preds = %3, %3, %3, %13
  %25 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %26 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %25, i32 0, i32 0
  %27 = call i32 @list_empty(i32* %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @ubifs_assert(i32 %30)
  %32 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %33 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %32, i32 0, i32 0
  %34 = call i32 @list_del(i32* %33)
  br label %37

35:                                               ; preds = %3
  %36 = call i32 @ubifs_assert(i32 0)
  br label %37

37:                                               ; preds = %35, %24, %8
  ret void
}

declare dso_local i32 @remove_from_lpt_heap(%struct.ubifs_info*, %struct.ubifs_lprops*, i32) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
