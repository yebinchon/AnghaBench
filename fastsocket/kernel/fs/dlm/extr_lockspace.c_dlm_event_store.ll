; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lockspace.c_dlm_event_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lockspace.c_dlm_event_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32, i32, i32 }

@LSFL_UEVENT_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dlm_ls*, i8*, i64)* @dlm_event_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dlm_event_store(%struct.dlm_ls* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.dlm_ls*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.dlm_ls* %0, %struct.dlm_ls** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i32 @simple_strtol(i8* %7, i32* null, i32 0)
  %9 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %10 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @LSFL_UEVENT_WAIT, align 4
  %12 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %13 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %12, i32 0, i32 1
  %14 = call i32 @set_bit(i32 %11, i32* %13)
  %15 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %16 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %15, i32 0, i32 0
  %17 = call i32 @wake_up(i32* %16)
  %18 = load i64, i64* %6, align 8
  ret i64 %18
}

declare dso_local i32 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
