; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_do_set_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_do_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_dev = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"reset config\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"%s speed config #%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsg_dev*, i64)* @do_set_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_set_config(%struct.fsg_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.fsg_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.fsg_dev* %0, %struct.fsg_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %8 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %13 = call i32 @DBG(%struct.fsg_dev* %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %15 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %17 = call i32 @do_set_interface(%struct.fsg_dev* %16, i32 -1)
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %11, %2
  %19 = load i64, i64* %4, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %49

21:                                               ; preds = %18
  %22 = load i64, i64* %4, align 8
  %23 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %24 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %26 = call i32 @do_set_interface(%struct.fsg_dev* %25, i32 0)
  store i32 %26, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %30 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  br label %48

31:                                               ; preds = %21
  %32 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %33 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %40 [
    i32 128, label %37
    i32 130, label %38
    i32 129, label %39
  ]

37:                                               ; preds = %31
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %41

38:                                               ; preds = %31
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %41

39:                                               ; preds = %31
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %41

40:                                               ; preds = %31
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %41

41:                                               ; preds = %40, %39, %38, %37
  %42 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %45 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @INFO(%struct.fsg_dev* %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %43, i64 %46)
  br label %48

48:                                               ; preds = %41, %28
  br label %49

49:                                               ; preds = %48, %18
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @DBG(%struct.fsg_dev*, i8*) #1

declare dso_local i32 @do_set_interface(%struct.fsg_dev*, i32) #1

declare dso_local i32 @INFO(%struct.fsg_dev*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
