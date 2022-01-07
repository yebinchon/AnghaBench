; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_proc.c___vcc_seq_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_proc.c___vcc_seq_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }
%struct.seq_operations = type { i32 }
%struct.vcc_state = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*, i32, %struct.seq_operations*)* @__vcc_seq_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__vcc_seq_open(%struct.inode* %0, %struct.file* %1, i32 %2, %struct.seq_operations* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.seq_operations*, align 8
  %10 = alloca %struct.vcc_state*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.seq_operations* %3, %struct.seq_operations** %9, align 8
  %11 = load %struct.file*, %struct.file** %7, align 8
  %12 = load %struct.seq_operations*, %struct.seq_operations** %9, align 8
  %13 = call %struct.vcc_state* @__seq_open_private(%struct.file* %11, %struct.seq_operations* %12, i32 4)
  store %struct.vcc_state* %13, %struct.vcc_state** %10, align 8
  %14 = load %struct.vcc_state*, %struct.vcc_state** %10, align 8
  %15 = icmp eq %struct.vcc_state* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %23

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.vcc_state*, %struct.vcc_state** %10, align 8
  %22 = getelementptr inbounds %struct.vcc_state, %struct.vcc_state* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %19, %16
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local %struct.vcc_state* @__seq_open_private(%struct.file*, %struct.seq_operations*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
