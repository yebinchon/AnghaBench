; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_snapshot.c_init_header_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_snapshot.c_init_header_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swsusp_info = type { i32, i32 }

@LINUX_VERSION_CODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.swsusp_info*)* @init_header_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_header_complete(%struct.swsusp_info* %0) #0 {
  %2 = alloca %struct.swsusp_info*, align 8
  store %struct.swsusp_info* %0, %struct.swsusp_info** %2, align 8
  %3 = load %struct.swsusp_info*, %struct.swsusp_info** %2, align 8
  %4 = getelementptr inbounds %struct.swsusp_info, %struct.swsusp_info* %3, i32 0, i32 1
  %5 = call i32 (...) @init_utsname()
  %6 = call i32 @memcpy(i32* %4, i32 %5, i32 4)
  %7 = load i32, i32* @LINUX_VERSION_CODE, align 4
  %8 = load %struct.swsusp_info*, %struct.swsusp_info** %2, align 8
  %9 = getelementptr inbounds %struct.swsusp_info, %struct.swsusp_info* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  ret i32 0
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @init_utsname(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
