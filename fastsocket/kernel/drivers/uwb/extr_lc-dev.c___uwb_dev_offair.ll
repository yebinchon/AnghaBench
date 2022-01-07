; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_lc-dev.c___uwb_dev_offair.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_lc-dev.c___uwb_dev_offair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_dev = type { %struct.TYPE_9__*, i32, i32, %struct.device }
%struct.TYPE_9__ = type { i32 }
%struct.device = type { i32 }
%struct.uwb_rc = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }

@UWB_ADDR_STRSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"uwb device (mac %s dev %s) disconnected from %s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"n/a\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__uwb_dev_offair(%struct.uwb_dev* %0, %struct.uwb_rc* %1) #0 {
  %3 = alloca %struct.uwb_dev*, align 8
  %4 = alloca %struct.uwb_rc*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.uwb_dev* %0, %struct.uwb_dev** %3, align 8
  store %struct.uwb_rc* %1, %struct.uwb_rc** %4, align 8
  %9 = load %struct.uwb_dev*, %struct.uwb_dev** %3, align 8
  %10 = getelementptr inbounds %struct.uwb_dev, %struct.uwb_dev* %9, i32 0, i32 3
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load i32, i32* @UWB_ADDR_STRSIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i32, i32* @UWB_ADDR_STRSIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %18 = trunc i64 %12 to i32
  %19 = load %struct.uwb_dev*, %struct.uwb_dev** %3, align 8
  %20 = getelementptr inbounds %struct.uwb_dev, %struct.uwb_dev* %19, i32 0, i32 2
  %21 = call i32 @uwb_mac_addr_print(i8* %14, i32 %18, i32* %20)
  %22 = trunc i64 %16 to i32
  %23 = load %struct.uwb_dev*, %struct.uwb_dev** %3, align 8
  %24 = getelementptr inbounds %struct.uwb_dev, %struct.uwb_dev* %23, i32 0, i32 1
  %25 = call i32 @uwb_dev_addr_print(i8* %17, i32 %22, i32* %24)
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %28 = icmp ne %struct.uwb_rc* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %2
  %30 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %31 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  br label %40

39:                                               ; preds = %2
  br label %40

40:                                               ; preds = %39, %29
  %41 = phi i8* [ %38, %29 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %39 ]
  %42 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %43 = icmp ne %struct.uwb_rc* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %46 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = call i8* @dev_name(%struct.TYPE_10__* %49)
  br label %52

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51, %44
  %53 = phi i8* [ %50, %44 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %51 ]
  %54 = call i32 @dev_info(%struct.device* %26, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %14, i8* %17, i8* %41, i8* %53)
  %55 = load %struct.uwb_dev*, %struct.uwb_dev** %3, align 8
  %56 = call i32 @uwb_dev_rm(%struct.uwb_dev* %55)
  %57 = load %struct.uwb_dev*, %struct.uwb_dev** %3, align 8
  %58 = getelementptr inbounds %struct.uwb_dev, %struct.uwb_dev* %57, i32 0, i32 0
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = call i32 @list_del(i32* %60)
  %62 = load %struct.uwb_dev*, %struct.uwb_dev** %3, align 8
  %63 = getelementptr inbounds %struct.uwb_dev, %struct.uwb_dev* %62, i32 0, i32 0
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = call i32 @uwb_bce_put(%struct.TYPE_9__* %64)
  %66 = load %struct.uwb_dev*, %struct.uwb_dev** %3, align 8
  %67 = call i32 @uwb_dev_put(%struct.uwb_dev* %66)
  %68 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %68)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @uwb_mac_addr_print(i8*, i32, i32*) #2

declare dso_local i32 @uwb_dev_addr_print(i8*, i32, i32*) #2

declare dso_local i32 @dev_info(%struct.device*, i8*, i8*, i8*, i8*, i8*) #2

declare dso_local i8* @dev_name(%struct.TYPE_10__*) #2

declare dso_local i32 @uwb_dev_rm(%struct.uwb_dev*) #2

declare dso_local i32 @list_del(i32*) #2

declare dso_local i32 @uwb_bce_put(%struct.TYPE_9__*) #2

declare dso_local i32 @uwb_dev_put(%struct.uwb_dev*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
