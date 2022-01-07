; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_tty.c_rfcomm_tty_wakeup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_tty.c_rfcomm_tty_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_dev = type { %struct.tty_struct* }
%struct.tty_struct = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"dev %p tty %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @rfcomm_tty_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rfcomm_tty_wakeup(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.rfcomm_dev*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to i8*
  %7 = bitcast i8* %6 to %struct.rfcomm_dev*
  store %struct.rfcomm_dev* %7, %struct.rfcomm_dev** %3, align 8
  %8 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %3, align 8
  %9 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %8, i32 0, i32 0
  %10 = load %struct.tty_struct*, %struct.tty_struct** %9, align 8
  store %struct.tty_struct* %10, %struct.tty_struct** %4, align 8
  %11 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %12 = icmp ne %struct.tty_struct* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %20

14:                                               ; preds = %1
  %15 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %3, align 8
  %16 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %17 = call i32 @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_dev* %15, %struct.tty_struct* %16)
  %18 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %19 = call i32 @tty_wakeup(%struct.tty_struct* %18)
  br label %20

20:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_dev*, %struct.tty_struct*) #1

declare dso_local i32 @tty_wakeup(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
