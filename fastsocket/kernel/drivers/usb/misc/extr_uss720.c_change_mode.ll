; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_uss720.c_change_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_uss720.c_change_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { %struct.TYPE_4__*, %struct.parport_uss720_private* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.parport_uss720_private = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ECR_PS2 = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parport*, i32)* @change_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @change_mode(%struct.parport* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.parport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.parport_uss720_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.parport* %0, %struct.parport** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.parport*, %struct.parport** %4, align 8
  %11 = getelementptr inbounds %struct.parport, %struct.parport* %10, i32 0, i32 1
  %12 = load %struct.parport_uss720_private*, %struct.parport_uss720_private** %11, align 8
  store %struct.parport_uss720_private* %12, %struct.parport_uss720_private** %6, align 8
  %13 = load %struct.parport*, %struct.parport** %4, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i64 @get_1284_register(%struct.parport* %13, i32 6, i32* %8, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %126

20:                                               ; preds = %2
  %21 = load %struct.parport_uss720_private*, %struct.parport_uss720_private** %6, align 8
  %22 = getelementptr inbounds %struct.parport_uss720_private, %struct.parport_uss720_private* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 5
  %27 = and i32 %26, 7
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %126

32:                                               ; preds = %20
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @ECR_PS2, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @ECR_PS2, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load %struct.parport*, %struct.parport** %4, align 8
  %42 = load i32, i32* @ECR_PS2, align 4
  %43 = call i32 @change_mode(%struct.parport* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %126

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %36, %32
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @ECR_PS2, align 4
  %52 = icmp sle i32 %50, %51
  br i1 %52, label %53, label %107

53:                                               ; preds = %49
  %54 = load %struct.parport_uss720_private*, %struct.parport_uss720_private** %6, align 8
  %55 = getelementptr inbounds %struct.parport_uss720_private, %struct.parport_uss720_private* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %107, label %61

61:                                               ; preds = %53
  %62 = load i64, i64* @jiffies, align 8
  %63 = load %struct.parport*, %struct.parport** %4, align 8
  %64 = getelementptr inbounds %struct.parport, %struct.parport* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %62, %69
  store i64 %70, i64* %9, align 8
  %71 = load i32, i32* %7, align 4
  switch i32 %71, label %106 [
    i32 128, label %72
    i32 129, label %72
  ]

72:                                               ; preds = %61, %61
  br label %73

73:                                               ; preds = %104, %72
  %74 = load %struct.parport*, %struct.parport** %4, align 8
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call i64 @get_1284_register(%struct.parport* %74, i32 6, i32* %8, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* @EIO, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %126

81:                                               ; preds = %73
  %82 = load %struct.parport_uss720_private*, %struct.parport_uss720_private** %6, align 8
  %83 = getelementptr inbounds %struct.parport_uss720_private, %struct.parport_uss720_private* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 1
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  br label %105

90:                                               ; preds = %81
  %91 = load i64, i64* @jiffies, align 8
  %92 = load i64, i64* %9, align 8
  %93 = call i32 @time_after_eq(i64 %91, i64 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i32, i32* @EBUSY, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %126

98:                                               ; preds = %90
  %99 = call i32 @msleep_interruptible(i32 10)
  %100 = load i32, i32* @current, align 4
  %101 = call i32 @signal_pending(i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %105

104:                                              ; preds = %98
  br label %73

105:                                              ; preds = %103, %89
  br label %106

106:                                              ; preds = %105, %61
  br label %107

107:                                              ; preds = %106, %53, %49
  %108 = load %struct.parport*, %struct.parport** %4, align 8
  %109 = load i32, i32* %5, align 4
  %110 = shl i32 %109, 5
  %111 = load i32, i32* @GFP_KERNEL, align 4
  %112 = call i64 @set_1284_register(%struct.parport* %108, i32 6, i32 %110, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %107
  %115 = load i32, i32* @EIO, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %3, align 4
  br label %126

117:                                              ; preds = %107
  %118 = load %struct.parport*, %struct.parport** %4, align 8
  %119 = load i32, i32* @GFP_KERNEL, align 4
  %120 = call i64 @get_1284_register(%struct.parport* %118, i32 6, i32* %8, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load i32, i32* @EIO, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %3, align 4
  br label %126

125:                                              ; preds = %117
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %125, %122, %114, %95, %78, %45, %31, %17
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i64 @get_1284_register(%struct.parport*, i32, i32*, i32) #1

declare dso_local i32 @time_after_eq(i64, i64) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @signal_pending(i32) #1

declare dso_local i64 @set_1284_register(%struct.parport*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
