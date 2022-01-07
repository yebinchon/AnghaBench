; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_tty.c_rfcomm_tty_write_room.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_tty.c_rfcomm_tty_write_room.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i64 }
%struct.rfcomm_dev = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"tty %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*)* @rfcomm_tty_write_room to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfcomm_tty_write_room(%struct.tty_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.rfcomm_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.rfcomm_dev*
  store %struct.rfcomm_dev* %9, %struct.rfcomm_dev** %4, align 8
  %10 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %11 = call i32 @BT_DBG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.tty_struct* %10)
  %12 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %4, align 8
  %13 = icmp ne %struct.rfcomm_dev* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %4, align 8
  %16 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %1
  store i32 0, i32* %2, align 4
  br label %34

20:                                               ; preds = %14
  %21 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %4, align 8
  %22 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @rfcomm_room(i32 %23)
  %25 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %4, align 8
  %26 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %25, i32 0, i32 0
  %27 = call i32 @atomic_read(i32* %26)
  %28 = sub nsw i32 %24, %27
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %31, %20
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %19
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @BT_DBG(i8*, %struct.tty_struct*) #1

declare dso_local i32 @rfcomm_room(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
