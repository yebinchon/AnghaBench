; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_karma.c_rio_karma_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_karma.c_rio_karma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32, %struct.karma_data* }
%struct.karma_data = type { i32, i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@RIO_RECV_LEN = common dso_local global i32 0, align 4
@rio_karma_destructor = common dso_local global i32 0, align 4
@RIO_ENTER_STORAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*)* @rio_karma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rio_karma_init(%struct.us_data* %0) #0 {
  %2 = alloca %struct.us_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.karma_data*, align 8
  store %struct.us_data* %0, %struct.us_data** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i32, i32* @GFP_NOIO, align 4
  %6 = call %struct.karma_data* @kzalloc(i32 8, i32 %5)
  store %struct.karma_data* %6, %struct.karma_data** %4, align 8
  %7 = load %struct.karma_data*, %struct.karma_data** %4, align 8
  %8 = icmp ne %struct.karma_data* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %38

10:                                               ; preds = %1
  %11 = load i32, i32* @RIO_RECV_LEN, align 4
  %12 = load i32, i32* @GFP_NOIO, align 4
  %13 = call i32 @kmalloc(i32 %11, i32 %12)
  %14 = load %struct.karma_data*, %struct.karma_data** %4, align 8
  %15 = getelementptr inbounds %struct.karma_data, %struct.karma_data* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.karma_data*, %struct.karma_data** %4, align 8
  %17 = getelementptr inbounds %struct.karma_data, %struct.karma_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %10
  %21 = load %struct.karma_data*, %struct.karma_data** %4, align 8
  %22 = call i32 @kfree(%struct.karma_data* %21)
  br label %38

23:                                               ; preds = %10
  %24 = load %struct.karma_data*, %struct.karma_data** %4, align 8
  %25 = load %struct.us_data*, %struct.us_data** %2, align 8
  %26 = getelementptr inbounds %struct.us_data, %struct.us_data* %25, i32 0, i32 1
  store %struct.karma_data* %24, %struct.karma_data** %26, align 8
  %27 = load i32, i32* @rio_karma_destructor, align 4
  %28 = load %struct.us_data*, %struct.us_data** %2, align 8
  %29 = getelementptr inbounds %struct.us_data, %struct.us_data* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @RIO_ENTER_STORAGE, align 4
  %31 = load %struct.us_data*, %struct.us_data** %2, align 8
  %32 = call i32 @rio_karma_send_command(i32 %30, %struct.us_data* %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = icmp eq i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = load %struct.karma_data*, %struct.karma_data** %4, align 8
  %37 = getelementptr inbounds %struct.karma_data, %struct.karma_data* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %23, %20, %9
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.karma_data* @kzalloc(i32, i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.karma_data*) #1

declare dso_local i32 @rio_karma_send_command(i32, %struct.us_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
