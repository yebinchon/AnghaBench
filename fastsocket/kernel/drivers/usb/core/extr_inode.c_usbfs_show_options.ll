; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_inode.c_usbfs_show_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_inode.c_usbfs_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.vfsmount = type { i32 }

@devuid = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c",devuid=%u\00", align 1
@devgid = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c",devgid=%u\00", align 1
@devmode = common dso_local global i64 0, align 8
@USBFS_DEFAULT_DEVMODE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c",devmode=%o\00", align 1
@busuid = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c",busuid=%u\00", align 1
@busgid = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c",busgid=%u\00", align 1
@busmode = common dso_local global i64 0, align 8
@USBFS_DEFAULT_BUSMODE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c",busmode=%o\00", align 1
@listuid = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [12 x i8] c",listuid=%u\00", align 1
@listgid = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [12 x i8] c",listgid=%u\00", align 1
@listmode = common dso_local global i64 0, align 8
@USBFS_DEFAULT_LISTMODE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [13 x i8] c",listmode=%o\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.vfsmount*)* @usbfs_show_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbfs_show_options(%struct.seq_file* %0, %struct.vfsmount* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.vfsmount*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.vfsmount* %1, %struct.vfsmount** %4, align 8
  %5 = load i64, i64* @devuid, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = load i64, i64* @devuid, align 8
  %10 = call i32 @seq_printf(%struct.seq_file* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %9)
  br label %11

11:                                               ; preds = %7, %2
  %12 = load i64, i64* @devgid, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %16 = load i64, i64* @devgid, align 8
  %17 = call i32 @seq_printf(%struct.seq_file* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 %16)
  br label %18

18:                                               ; preds = %14, %11
  %19 = load i64, i64* @devmode, align 8
  %20 = load i64, i64* @USBFS_DEFAULT_DEVMODE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %24 = load i64, i64* @devmode, align 8
  %25 = call i32 @seq_printf(%struct.seq_file* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %24)
  br label %26

26:                                               ; preds = %22, %18
  %27 = load i64, i64* @busuid, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %31 = load i64, i64* @busuid, align 8
  %32 = call i32 @seq_printf(%struct.seq_file* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64 %31)
  br label %33

33:                                               ; preds = %29, %26
  %34 = load i64, i64* @busgid, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %38 = load i64, i64* @busgid, align 8
  %39 = call i32 @seq_printf(%struct.seq_file* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i64 %38)
  br label %40

40:                                               ; preds = %36, %33
  %41 = load i64, i64* @busmode, align 8
  %42 = load i64, i64* @USBFS_DEFAULT_BUSMODE, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %46 = load i64, i64* @busmode, align 8
  %47 = call i32 @seq_printf(%struct.seq_file* %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i64 %46)
  br label %48

48:                                               ; preds = %44, %40
  %49 = load i64, i64* @listuid, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %53 = load i64, i64* @listuid, align 8
  %54 = call i32 @seq_printf(%struct.seq_file* %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i64 %53)
  br label %55

55:                                               ; preds = %51, %48
  %56 = load i64, i64* @listgid, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %60 = load i64, i64* @listgid, align 8
  %61 = call i32 @seq_printf(%struct.seq_file* %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i64 %60)
  br label %62

62:                                               ; preds = %58, %55
  %63 = load i64, i64* @listmode, align 8
  %64 = load i64, i64* @USBFS_DEFAULT_LISTMODE, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %68 = load i64, i64* @listmode, align 8
  %69 = call i32 @seq_printf(%struct.seq_file* %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i64 %68)
  br label %70

70:                                               ; preds = %66, %62
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
