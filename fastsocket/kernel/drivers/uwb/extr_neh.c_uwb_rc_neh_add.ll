; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_neh.c_uwb_rc_neh_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_neh.c_uwb_rc_neh_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc_neh = type { i32, i32, i8*, i32, i32, i32, %struct.uwb_rc*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.uwb_rc = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.uwb_rccb = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@uwb_rc_neh_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"cannot open handle to radio controller: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.uwb_rc_neh* @uwb_rc_neh_add(%struct.uwb_rc* %0, %struct.uwb_rccb* %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.uwb_rc_neh*, align 8
  %8 = alloca %struct.uwb_rc*, align 8
  %9 = alloca %struct.uwb_rccb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.device*, align 8
  %17 = alloca %struct.uwb_rc_neh*, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %8, align 8
  store %struct.uwb_rccb* %1, %struct.uwb_rccb** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %18 = load %struct.uwb_rc*, %struct.uwb_rc** %8, align 8
  %19 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store %struct.device* %20, %struct.device** %16, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.uwb_rc_neh* @kzalloc(i32 64, i32 %21)
  store %struct.uwb_rc_neh* %22, %struct.uwb_rc_neh** %17, align 8
  %23 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %17, align 8
  %24 = icmp eq %struct.uwb_rc_neh* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %14, align 4
  br label %98

28:                                               ; preds = %6
  %29 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %17, align 8
  %30 = getelementptr inbounds %struct.uwb_rc_neh, %struct.uwb_rc_neh* %29, i32 0, i32 8
  %31 = call i32 @kref_init(i32* %30)
  %32 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %17, align 8
  %33 = getelementptr inbounds %struct.uwb_rc_neh, %struct.uwb_rc_neh* %32, i32 0, i32 0
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %17, align 8
  %36 = getelementptr inbounds %struct.uwb_rc_neh, %struct.uwb_rc_neh* %35, i32 0, i32 7
  %37 = call i32 @init_timer(%struct.TYPE_4__* %36)
  %38 = load i32, i32* @uwb_rc_neh_timer, align 4
  %39 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %17, align 8
  %40 = getelementptr inbounds %struct.uwb_rc_neh, %struct.uwb_rc_neh* %39, i32 0, i32 7
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 8
  %42 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %17, align 8
  %43 = ptrtoint %struct.uwb_rc_neh* %42 to i64
  %44 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %17, align 8
  %45 = getelementptr inbounds %struct.uwb_rc_neh, %struct.uwb_rc_neh* %44, i32 0, i32 7
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i64 %43, i64* %46, align 8
  %47 = load %struct.uwb_rc*, %struct.uwb_rc** %8, align 8
  %48 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %17, align 8
  %49 = getelementptr inbounds %struct.uwb_rc_neh, %struct.uwb_rc_neh* %48, i32 0, i32 6
  store %struct.uwb_rc* %47, %struct.uwb_rc** %49, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %17, align 8
  %52 = getelementptr inbounds %struct.uwb_rc_neh, %struct.uwb_rc_neh* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @cpu_to_le16(i32 %53)
  %55 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %17, align 8
  %56 = getelementptr inbounds %struct.uwb_rc_neh, %struct.uwb_rc_neh* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %17, align 8
  %59 = getelementptr inbounds %struct.uwb_rc_neh, %struct.uwb_rc_neh* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 8
  %60 = load i8*, i8** %13, align 8
  %61 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %17, align 8
  %62 = getelementptr inbounds %struct.uwb_rc_neh, %struct.uwb_rc_neh* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  %63 = load %struct.uwb_rc*, %struct.uwb_rc** %8, align 8
  %64 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %63, i32 0, i32 0
  %65 = load i64, i64* %15, align 8
  %66 = call i32 @spin_lock_irqsave(i32* %64, i64 %65)
  %67 = load %struct.uwb_rc*, %struct.uwb_rc** %8, align 8
  %68 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %17, align 8
  %69 = call i32 @__uwb_rc_ctx_get(%struct.uwb_rc* %67, %struct.uwb_rc_neh* %68)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %28
  %73 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %17, align 8
  %74 = getelementptr inbounds %struct.uwb_rc_neh, %struct.uwb_rc_neh* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.uwb_rccb*, %struct.uwb_rccb** %9, align 8
  %77 = getelementptr inbounds %struct.uwb_rccb, %struct.uwb_rccb* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %17, align 8
  %79 = getelementptr inbounds %struct.uwb_rc_neh, %struct.uwb_rc_neh* %78, i32 0, i32 0
  %80 = load %struct.uwb_rc*, %struct.uwb_rc** %8, align 8
  %81 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %80, i32 0, i32 1
  %82 = call i32 @list_add_tail(i32* %79, i32* %81)
  %83 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %17, align 8
  %84 = call i32 @uwb_rc_neh_get(%struct.uwb_rc_neh* %83)
  br label %85

85:                                               ; preds = %72, %28
  %86 = load %struct.uwb_rc*, %struct.uwb_rc** %8, align 8
  %87 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %86, i32 0, i32 0
  %88 = load i64, i64* %15, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* %87, i64 %88)
  %90 = load i32, i32* %14, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  br label %95

93:                                               ; preds = %85
  %94 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %17, align 8
  store %struct.uwb_rc_neh* %94, %struct.uwb_rc_neh** %7, align 8
  br label %104

95:                                               ; preds = %92
  %96 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %17, align 8
  %97 = call i32 @kfree(%struct.uwb_rc_neh* %96)
  br label %98

98:                                               ; preds = %95, %25
  %99 = load %struct.device*, %struct.device** %16, align 8
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @dev_err(%struct.device* %99, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %14, align 4
  %103 = call %struct.uwb_rc_neh* @ERR_PTR(i32 %102)
  store %struct.uwb_rc_neh* %103, %struct.uwb_rc_neh** %7, align 8
  br label %104

104:                                              ; preds = %98, %93
  %105 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %7, align 8
  ret %struct.uwb_rc_neh* %105
}

declare dso_local %struct.uwb_rc_neh* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__uwb_rc_ctx_get(%struct.uwb_rc*, %struct.uwb_rc_neh*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @uwb_rc_neh_get(%struct.uwb_rc_neh*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.uwb_rc_neh*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local %struct.uwb_rc_neh* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
