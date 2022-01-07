; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_lnc_add_directly.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_lnc_add_directly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_zbranch = type { i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.ubifs_zbranch*, i8*)* @lnc_add_directly to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lnc_add_directly(%struct.ubifs_info* %0, %struct.ubifs_zbranch* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %struct.ubifs_zbranch*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %struct.ubifs_zbranch* %1, %struct.ubifs_zbranch** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %10 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %9, i32 0, i32 1
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @ubifs_assert(i32 %14)
  %16 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %17 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @ubifs_assert(i32 %20)
  %22 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @ubifs_validate_entry(%struct.ubifs_info* %22, i8* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %3
  %28 = call i32 (...) @dbg_dump_stack()
  %29 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @dbg_dump_node(%struct.ubifs_info* %29, i8* %30)
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %4, align 4
  br label %37

33:                                               ; preds = %3
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %36 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %33, %27
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @ubifs_validate_entry(%struct.ubifs_info*, i8*) #1

declare dso_local i32 @dbg_dump_stack(...) #1

declare dso_local i32 @dbg_dump_node(%struct.ubifs_info*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
