; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_ixj_daa_cid_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_ixj_daa_cid_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32 }

@ixjdebug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"DAA Clearing CID ram\0A\00", align 1
@SCI_Enable_DAA = common dso_local global i32 0, align 4
@ALISDAA_CALLERID_SIZE = common dso_local global i32 0, align 4
@SCI_End = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"DAA CID ram cleared\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @ixj_daa_cid_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixj_daa_cid_reset(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %6 = load i32, i32* @ixjdebug, align 4
  %7 = and i32 %6, 2
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = call i32 @SCI_Prepare(%struct.TYPE_7__* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %99

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store i32 88, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 3
  %25 = call i32 @outb_p(i32 %20, i64 %24)
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 2
  %32 = call i32 @outb_p(i32 %27, i64 %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = load i32, i32* @SCI_Enable_DAA, align 4
  %35 = call i32 @SCI_Control(%struct.TYPE_7__* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %99

38:                                               ; preds = %16
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = call i32 @SCI_WaitHighSCI(%struct.TYPE_7__* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %99

43:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %83, %43
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @ALISDAA_CALLERID_SIZE, align 4
  %47 = sub nsw i32 %46, 1
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %49, label %86

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  store i32 0, i32* %50, align 4
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store i32 0, i32* %51, align 4
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 3
  %58 = call i32 @outb_p(i32 %53, i64 %57)
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @ALISDAA_CALLERID_SIZE, align 4
  %61 = sub nsw i32 %60, 1
  %62 = icmp slt i32 %59, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %49
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, 2
  %70 = call i32 @outb_p(i32 %65, i64 %69)
  br label %71

71:                                               ; preds = %63, %49
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %73 = load i32, i32* @SCI_Enable_DAA, align 4
  %74 = call i32 @SCI_Control(%struct.TYPE_7__* %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  store i32 0, i32* %2, align 4
  br label %99

77:                                               ; preds = %71
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %79 = call i32 @SCI_WaitHighSCI(%struct.TYPE_7__* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  store i32 0, i32* %2, align 4
  br label %99

82:                                               ; preds = %77
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, 2
  store i32 %85, i32* %4, align 4
  br label %44

86:                                               ; preds = %44
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %88 = load i32, i32* @SCI_End, align 4
  %89 = call i32 @SCI_Control(%struct.TYPE_7__* %87, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %86
  store i32 0, i32* %2, align 4
  br label %99

92:                                               ; preds = %86
  %93 = load i32, i32* @ixjdebug, align 4
  %94 = and i32 %93, 2
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = call i32 @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %92
  store i32 1, i32* %2, align 4
  br label %99

99:                                               ; preds = %98, %91, %81, %76, %42, %37, %15
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @SCI_Prepare(%struct.TYPE_7__*) #1

declare dso_local i32 @outb_p(i32, i64) #1

declare dso_local i32 @SCI_Control(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @SCI_WaitHighSCI(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
