; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_lc-rc.c_uwb_rc_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_lc-rc.c_uwb_rc_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { i32 (%struct.uwb_rc*)*, i32, i32 (%struct.uwb_rc*)*, %struct.TYPE_7__, %struct.TYPE_5__, i8*, i32 }
%struct.TYPE_7__ = type { i32, i32, %struct.device }
%struct.device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@UWB_ADDR_STRSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"uwb%d\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"cannot setup UWB radio controller: %d\0A\00", align 1
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"cannot register UWB radio controller dev attributes: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"new uwb radio controller (mac %s dev %s) on %s %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uwb_rc_add(%struct.uwb_rc* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uwb_rc*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.uwb_rc* %0, %struct.uwb_rc** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i32, i32* @UWB_ADDR_STRSIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load i32, i32* @UWB_ADDR_STRSIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %21 = call i32 (...) @uwb_rc_new_index()
  %22 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %23 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 8
  %24 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %25 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  store %struct.device* %26, %struct.device** %9, align 8
  %27 = load %struct.device*, %struct.device** %9, align 8
  %28 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %29 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dev_set_name(%struct.device* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i8*, i8** %7, align 8
  %33 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %34 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %33, i32 0, i32 5
  store i8* %32, i8** %34, align 8
  %35 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %36 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = call i32 @init_waitqueue_head(i32* %37)
  %39 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %40 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  %43 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %44 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = call i32 @spin_lock_init(i32* %45)
  %47 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %48 = call i32 @uwbd_start(%struct.uwb_rc* %47)
  %49 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %50 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %49, i32 0, i32 0
  %51 = load i32 (%struct.uwb_rc*)*, i32 (%struct.uwb_rc*)** %50, align 8
  %52 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %53 = call i32 %51(%struct.uwb_rc* %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %3
  br label %122

57:                                               ; preds = %3
  %58 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %59 = call i32 @uwb_rc_setup(%struct.uwb_rc* %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load %struct.device*, %struct.device** %9, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @dev_err(%struct.device* %63, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %116

66:                                               ; preds = %57
  %67 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %68 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %67, i32 0, i32 3
  %69 = load %struct.device*, %struct.device** %6, align 8
  %70 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %71 = call i32 @uwb_dev_add(%struct.TYPE_7__* %68, %struct.device* %69, %struct.uwb_rc* %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %66
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @EADDRNOTAVAIL, align 4
  %77 = sub nsw i32 0, %76
  %78 = icmp ne i32 %75, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %115

80:                                               ; preds = %74, %66
  %81 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %82 = call i32 @uwb_rc_sys_add(%struct.uwb_rc* %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load %struct.device*, %struct.device** %6, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @dev_err(%struct.device* %86, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  br label %111

89:                                               ; preds = %80
  %90 = trunc i64 %15 to i32
  %91 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %92 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = call i32 @uwb_mac_addr_print(i8* %17, i32 %90, i32* %93)
  %95 = trunc i64 %19 to i32
  %96 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %97 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = call i32 @uwb_dev_addr_print(i8* %20, i32 %95, i32* %98)
  %100 = load %struct.device*, %struct.device** %9, align 8
  %101 = load %struct.device*, %struct.device** %6, align 8
  %102 = getelementptr inbounds %struct.device, %struct.device* %101, i32 0, i32 0
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.device*, %struct.device** %6, align 8
  %107 = call i32 @dev_name(%struct.device* %106)
  %108 = call i32 @dev_info(%struct.device* %100, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i8* %17, i8* %20, i32 %105, i32 %107)
  %109 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %110 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %109, i32 0, i32 1
  store i32 1, i32* %110, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %126

111:                                              ; preds = %85
  %112 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %113 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %112, i32 0, i32 3
  %114 = call i32 @uwb_dev_rm(%struct.TYPE_7__* %113)
  br label %115

115:                                              ; preds = %111, %79
  br label %116

116:                                              ; preds = %115, %62
  %117 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %118 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %117, i32 0, i32 2
  %119 = load i32 (%struct.uwb_rc*)*, i32 (%struct.uwb_rc*)** %118, align 8
  %120 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %121 = call i32 %119(%struct.uwb_rc* %120)
  br label %122

122:                                              ; preds = %116, %56
  %123 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %124 = call i32 @uwbd_stop(%struct.uwb_rc* %123)
  %125 = load i32, i32* %8, align 4
  store i32 %125, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %126

126:                                              ; preds = %122, %89
  %127 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %127)
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @uwb_rc_new_index(...) #2

declare dso_local i32 @dev_set_name(%struct.device*, i8*, i32) #2

declare dso_local i32 @init_waitqueue_head(i32*) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #2

declare dso_local i32 @spin_lock_init(i32*) #2

declare dso_local i32 @uwbd_start(%struct.uwb_rc*) #2

declare dso_local i32 @uwb_rc_setup(%struct.uwb_rc*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #2

declare dso_local i32 @uwb_dev_add(%struct.TYPE_7__*, %struct.device*, %struct.uwb_rc*) #2

declare dso_local i32 @uwb_rc_sys_add(%struct.uwb_rc*) #2

declare dso_local i32 @uwb_mac_addr_print(i8*, i32, i32*) #2

declare dso_local i32 @uwb_dev_addr_print(i8*, i32, i32*) #2

declare dso_local i32 @dev_info(%struct.device*, i8*, i8*, i8*, i32, i32) #2

declare dso_local i32 @dev_name(%struct.device*) #2

declare dso_local i32 @uwb_dev_rm(%struct.TYPE_7__*) #2

declare dso_local i32 @uwbd_stop(%struct.uwb_rc*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
