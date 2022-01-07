; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_scan.c_ubifs_end_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_scan.c_ubifs_end_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_scan_leb = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"stop scanning LEB %d at offset %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubifs_end_scan(%struct.ubifs_info* %0, %struct.ubifs_scan_leb* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %struct.ubifs_scan_leb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %struct.ubifs_scan_leb* %1, %struct.ubifs_scan_leb** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %8, align 4
  %12 = call i32 @dbg_scan(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11)
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %15 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = srem i32 %13, %16
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @ubifs_assert(i32 %19)
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %23 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ALIGN(i32 %21, i32 %24)
  %26 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %6, align 8
  %27 = getelementptr inbounds %struct.ubifs_scan_leb, %struct.ubifs_scan_leb* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  ret void
}

declare dso_local i32 @dbg_scan(i8*, i32, i32) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
